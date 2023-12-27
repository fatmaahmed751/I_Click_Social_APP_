import 'package:flutter/material.dart';

import '../../../../core/components/constants.dart';
import '../../../../general/widgets/custom-text.dart';

class CategoryModel {
  final String image;
  final String text;

  CategoryModel({
    required this.image,
    required this.text,
  });
}

class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key});
  final List<CategoryModel> onBoarding = [

    CategoryModel(
      image: 'assets/images/category_images/en_four.jpg',
      text: 'Travels',
    ),
    CategoryModel(
      image: 'assets/images/category_images/en_one.jpg',
      text: 'Music',
    ),
    CategoryModel(
      image: 'assets/images/category_images/en_six.jpg',
      text: 'Space',
    ),
    CategoryModel(
      image: 'assets/images/category_images/en_two.jpg',
      text: 'Entertainment',
    ),

  ];
  @override
  Widget build(BuildContext context) {

    return SizedBox(
    //  color: Colors.yellow,
      // height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 12),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2.5,
            mainAxisSpacing:12.0,
            crossAxisSpacing: 9.0,
          ),
          itemBuilder: (context, index) {
            return  categoryItemsWidget(onBoarding[index]);
          },
          itemCount: onBoarding.length,
        ),
      ),
    );
  }

  Widget categoryItemsWidget(CategoryModel model ) => Container(
    width: 120,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(
        image: AssetImage (model.image),
        fit:BoxFit.cover
      ),
    ),
    child:
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: CustomText(
              text: model.text,
              fontWeight: FontWeight.bold,
              color: AppColors.categoryTextColor,
              size: 13,
              textAlign: TextAlign.center,
            ),
          ),
        ),

  );
}
