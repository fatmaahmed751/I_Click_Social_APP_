import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

class ChatMessages extends StatelessWidget {
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: ListView.builder(
        itemBuilder: (context, index) => Align(
          alignment: Alignment.topLeft,
          child: Container(
            // alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: AppColors.backgroundColor),
            child: const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
              child: CustomText(
                text: 'Hello i\'m fatma Hello i\'m fatma Hello i\'m fatma ',
                color: AppColors.containerColor,
                // maxLines: 2,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
