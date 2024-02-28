import 'package:flutter/material.dart';
import 'package:i_click/features/stories_room/presentation/widgets/story_of_user.dart';

import 'package:story_view/story_view.dart';

import '../../../home/presentation/widgets/container_of_story.dart';

class StoryWidget extends StatefulWidget {
  final UserStory user;
  final PageController controller;

  const StoryWidget({super.key,
    required this.user,
    required this.controller,
  });

  @override
 StoryWidgetState createState() =>StoryWidgetState();
}

class StoryWidgetState extends State<StoryWidget> {
  final storyItems = <StoryItem>[];
  StoryController controller = StoryController();
  DateTime date = DateTime.now().toLocal();

  void addStoryItems() {
    for (final story in widget.user.storyItems) {
      switch (story.mediaType) {
        case MediaType.image:
          storyItems.add(StoryItem.pageImage(
            url: story.url,
            controller: controller,
            caption: story.caption,
            duration: Duration(
              milliseconds: (story.duration * 1000).toInt(),
            ),
          ));
          break;
        case MediaType.text:
          storyItems.add(
            StoryItem.text(
              title: story.caption,
              backgroundColor: story.color,
              duration: Duration(
                milliseconds: (story.duration * 1000).toInt(),
              ),
            ),
          );
          break;
      }
    }
  }

  @override
  void initState() {
    super.initState();

    controller = StoryController();
    addStoryItems();
    date = DateTime.now().toLocal();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void handleCompleted() {
    widget.controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );

    final currentIndex = storyUsers.indexOf(widget.user);
    final isLastPage = storyUsers.length - 1 == currentIndex;

    if (isLastPage) {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) => Stack(
    children: <Widget>[
      Material(
        type: MaterialType.transparency,
        child: StoryView(
          storyItems: storyItems,
          controller: controller,
          onComplete: handleCompleted,
          onVerticalSwipeComplete: (direction) {
            if (direction == Direction.down) {
              Navigator.pop(context);
            }
          },
          onStoryShow: (storyItem) {
            final index = storyItems.indexOf(storyItem);

            if (index > 0) {
              setState(() {
                date = widget.user.storyItems[index].date;
              });
            }
          },
        ),
      ),
      // ProfileWidget(
      //   user: widget.user,
      //   date: date,
      // ),
    ],
  );
}
// class ProfileWidget extends StatelessWidget {
//   final User user;
//   final String date;
//
//   const ProfileWidget({
//     @required this.user,
//     @required this.date,
//     Key key,
//   }) : super(key: key);