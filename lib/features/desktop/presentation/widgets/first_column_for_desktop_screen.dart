import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:i_click/features/tablet/presentation/widgets/tablet_drawer_widget.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/circle_avatar.dart';
import '../../../../general/widgets/custom-text.dart';


class DrawerForFirstColumnDesktop extends StatefulWidget {
  const DrawerForFirstColumnDesktop({super.key});

  @override
  State<DrawerForFirstColumnDesktop> createState() => _DrawerForFirstColumnDesktopState();
}

class _DrawerForFirstColumnDesktopState extends State<DrawerForFirstColumnDesktop> {
  List<ItemForFirstColumnModel> items = [
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.group_add,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Find friends'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.lock_clock,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Memories'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.bookmark,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Saved'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.shopping_bag_outlined,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Marketplace'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.favorite,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Favorites'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.video_library_outlined,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Videos'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.event,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Events'),
    ),
    const ItemForFirstColumnModel(
      iconButton: GradientIcon(
        icon: Icons.flight_takeoff_outlined,
        gradient: LinearGradient(
          colors: [Colors.deepOrangeAccent, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        size: 25,
      ),
      text: Text('Ads Manager '),
    )
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 15),
          width: 250,

          height: MediaQuery
              .sizeOf(context)
              .height,

          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      circleOfChats(15, 1),
                      const SizedBox(width: 8,),
                      const CustomText(
                        text: "Fatma Ahmed",
                        size: 14,
                        color: AppColors.categoryTextColor,
                      ),
                    ],
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  //scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      GestureDetector(
                          onTap: () {
                            if (activeIndex != index) {
                              setState(() {
                                activeIndex = index;
                                print("$activeIndex");
                              });
                            }
                          },
                          child: ActiveAndInActiveItem(
                            itemForFirstColumnModel: items[index],
                              isActive: activeIndex == index,
                          )
                      ),
                  itemCount: items.length,
                  separatorBuilder: (context, index) =>
                  const SizedBox(height: 0),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.backgroundScaffoldColor,
                        radius: 20,
                        child: Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.white,
                          size: 22.0,
                        ),
                      ),
                      SizedBox(width: 12,),
                      CustomText(
                        text: "More",
                        size: 16,
                        color: AppColors.categoryTextColor,
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}

class ActiveAndInActiveItem extends StatelessWidget {
   const ActiveAndInActiveItem({
     super.key,
     required this.itemForFirstColumnModel,
     required this.isActive });

 final ItemForFirstColumnModel itemForFirstColumnModel;
 final bool isActive ;

  @override
  Widget build(BuildContext context) {
    return isActive?
    listTileInActiveWidget(
      itemForFirstColumnModel
    ):listTileActiveWidget(itemForFirstColumnModel);
  }

  }
  Widget listTileActiveWidget(ItemForFirstColumnModel itemForFirstColumnModel,
     ) => ListTile(
          leading:
          itemForFirstColumnModel.iconButton,
          subtitle:
          CustomText(
            text: "${itemForFirstColumnModel.text.data}",
            size: 14,
            color: AppColors.categoryTextColor,
        ),
      );

  Widget listTileInActiveWidget(ItemForFirstColumnModel itemForFirstColumnModel,
   ) =>
      ListTile(
        trailing: Container(
          padding: const EdgeInsets.only(top:30),
          height:35,
          width:3,
          color: AppColors.backgroundMainColor,
        ),
        enabled: true,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        leading:
        itemForFirstColumnModel.iconButton,
        subtitle:
        Padding(
          padding: const EdgeInsets.only(bottom:2.0),
          child: CustomText(
            text: "${itemForFirstColumnModel.text.data}",
            size:17,
            fontWeight: FontWeight.bold,
            color: AppColors.categoryTextColor,
          ),
        ),
      );
