import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_click/features/register_and_login/presentation/view/profile_screen.dart';

import '../../../../chat_room/presentation/view/chat_rooms.dart';
import '../../../../market_place/presentation/view/products_screen.dart';
import '../../../../stories_room/presentation/view/stories_screen.dart';
import '../../view/categories_screen.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeAppStates> {
   HomeCubit():super(HomeInitialState());

 static HomeCubit get(context)=>BlocProvider.of(context);

 int currentIndex = 0;
List<Widget> screens =[
 const CategoryScreen(),
  const ChatRoomsScreen(),
  const StoriesScreen(),
  const MarketPlaceScreen(),
  const ProfileScreen(),
];

void changeBottomNav(index){
  currentIndex = index;
  emit(ChangeBottomNavBarState());
}
}
