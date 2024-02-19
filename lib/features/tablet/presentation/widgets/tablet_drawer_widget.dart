import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

class DrawerWidgetModel  {
  final Widget iconButton;
 final Text text;

   const DrawerWidgetModel({
     required this.iconButton,
    required this.text
   });


}
class ItemForFirstColumnModel  {
  final Widget iconButton;
  final Text text;

  const ItemForFirstColumnModel({ required this.iconButton,
    required this.text
  });


}