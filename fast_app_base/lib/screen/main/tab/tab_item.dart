import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';

enum TabItem {
  home(Icons.home, '홈', HomeFragment()),
  chat(Icons.question_answer, '채팅', HomeFragment()),
  concertList(Icons.whatshot, '콘서트 목록', HomeFragment()),
  communityBoard(Icons.format_list_bulleted, '게시판', HomeFragment()),
  myPage(Icons.person, '마이페이지', HomeFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
