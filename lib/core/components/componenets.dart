import 'package:flutter/material.dart';
import 'package:i_click/core/components/constants.dart';

Widget defaultFormField(
        {required String hintText,
        required TextEditingController controller,
        required TextInputType type,
        String? Function(String?)? validator,
        void Function(String)? onChanged,
        String? labelText,
         Widget? prefixIcon,
        Widget? suffixIcon,
        bool obscureText = false,
        String? value}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextFormField(
        obscureText: obscureText,
        onChanged: onChanged,
        textAlign: TextAlign.justify,
        validator: validator,
        keyboardType: type,
        initialValue: value,
        controller: controller,

        decoration: InputDecoration(
           prefixIcon:prefixIcon ,
          suffixIcon: suffixIcon,
         // fillColor: AppColors.backgroundColor,
          filled: true,
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red, // Change the color as needed
              width: 8.0,
              // Change the width as needed
            ),

          // border: OutlineInputBorder(
          //   borderSide: const BorderSide(color: Colors.transparent),
           borderRadius: BorderRadius.circular(101),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.backgroundScaffoldColor),
            borderRadius: BorderRadius.circular(201),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(201),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.containerTextColor, fontSize: 15),
          labelText: labelText,
          labelStyle:
              TextStyle(fontSize:20, color: AppColors.containerTextColor),
          contentPadding: const EdgeInsets.only(left: 25),
        ),
      ),
    );
// Widget stayLoginIn({
//   required String text,
//   String secText = '',
// }) =>
//     Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Row(
//         children: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.check_box_outline_blank_outlined,
//               color: AppColors.secondTextColor,
//             ),
//           ),
//           Text(
//             textAlign: TextAlign.center,
//
//             text,
//
//             //maxLines: 2,
//
//             style: TextStyle(
//
//               // overflow: TextOverflow.ellipsis,
//
//                 decoration: TextDecoration.none,
//                 fontFamily: 'Bacute Regular',
//                 fontSize: 12,
//                 fontWeight: FontWeight.w200,
//                 color: AppColors.secondTextColor),
//           ),
//           const Spacer(),
//           Text(
//             textAlign: TextAlign.center,
//
//             secText,
//
//             //maxLines: 2,
//
//             style: TextStyle(
//
//               // overflow: TextOverflow.ellipsis,
//
//                 decoration: TextDecoration.none,
//                 fontFamily: 'Bacute Regular',
//                 fontSize: 12,
//                 fontWeight: FontWeight.w200,
//                 color: AppColors.secondTextColor),
//           ),
//         ],
//       ),
//     );

Widget stayLoginIn({
  required String text,
  String secText = '',
  required void Function()? onPressed,
}) =>
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            text,
            style: const TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Bacute Regular',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.containerTextColor),
          ),
          TextButton(

            onPressed:onPressed,
            child: Text(
              textAlign: TextAlign.center,
              secText,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Bacute Regular',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.deepOrangeColor),
            ),
          ),
        ],
      ),
    );
Widget defaultButton({
  required String text,
  required Function function,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: const EdgeInsets.all(8.0),
      width: 289,
      height: 52,
      decoration: BoxDecoration(
       color: AppColors.defaultButtonColor,
        gradient: const LinearGradient(
          colors: [Colors.redAccent, AppColors.deepOrangeColor],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        // const Color.fromRGBO(252,96 ,17 ,80 ) ,
        borderRadius: BorderRadius.circular(100.0),
      ),
      clipBehavior: Clip.hardEdge,
      child: TextButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );
void navigationByScreens(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
}
