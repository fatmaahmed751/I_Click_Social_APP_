import 'package:flutter/material.dart';
import 'package:i_click/features/stories_room/presentation/widgets/story_widget.dart';

import '../../../desktop/presentation/widgets/middle_column_for_desktop_screen.dart';
import '../../../home/presentation/widgets/container_of_story.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({super.key, required this.userStory});
final UserStory userStory;
  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    final initialPage = storyUsers.indexOf(widget.userStory);
    controller = PageController(initialPage: initialPage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: storyUsers
          .map((user) => StoryWidget(
        user: user,
        controller: controller,
      ))
          .toList(),
    );
  }
  }

