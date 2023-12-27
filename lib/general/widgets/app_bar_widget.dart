import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);
  const MyAppBar({
    Key? key,
    this.leading,
    this.title,
    this.actions,
    this.backgroundColor,
    this.textTheme,
    this.bottom = false, // Specify if it's a bottom app bar
  }) : super(key: key);

  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final TextTheme? textTheme;
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(200),
      child: ClipRRect(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius:
        //     ? BorderRadius.only(
        //   topLeft: Radius.circular(118),
        //   topRight: Radius.circular(15),
        // )
        const BorderRadius.only(
          bottomLeft: Radius.circular(110),
          bottomRight: Radius.circular(110),
        ),
       // child: Image.asset('assets/images/back_two.jpg',),
        child: AppBar(
          flexibleSpace: const Image(
            image: AssetImage('assets/images/back_two.jpg'), // Replace with your image path
            fit: BoxFit.cover, // Ensures the image covers the entire space
          ),
          elevation: 0, // Remove default shadow
          leading: leading,
          title: Text('i.click',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),),
          actions: actions,
          backgroundColor: Colors.transparent,
         // textTheme: textTheme,
          centerTitle: true, // Center the title (optional)
        ),
      ),
    );
  }
}