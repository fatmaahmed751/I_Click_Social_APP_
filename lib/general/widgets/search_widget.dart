
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/components/constants.dart';
import '../../features/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../features/home/presentation/manager/home_cubit/home_states.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocConsumer<HomeCubit, HomeAppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return IntrinsicWidth(
            child: SizedBox(
              height:35,
            width:500,


              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro Text',
                      color: AppColors.containerTextColor),
                  filled: true,
                  fillColor:  AppColors.kPrimaryColor,
                  suffixIcon: IconButton(
                      onPressed: () {
                       // Navigator.push(context,MaterialPageRoute(builder: (context)=>const FilterScreen()));
                      },
                      icon:  SvgPicture.asset(
                        'assets/images/svg_images/search_icon.svg',
                        height: 70,
                       width: 40,
                       //fit:BoxFit.fitWidth
                      ),
                  ),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
                // cursorColor: AppColors.grey,
                onFieldSubmitted: (String value) {

                  print(value);
                  searchController.clear();
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>const SearchResults()));
                  // HomeCubit.get(context).fetchSearchBooks(value);
                },
              ),
            ),
          );
        });
  }
}