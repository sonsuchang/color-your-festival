import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class FyfAppBar extends StatefulWidget {
  const FyfAppBar({super.key});

  @override
  State<FyfAppBar> createState() => _FyfAppBarState();
}

class _FyfAppBarState extends State<FyfAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          const Text(
            "Fill your Festival",
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  setState(
                    () {
                      _showRedDot = !_showRedDot;
                    },
                  );
                },
              ),
              if (_showRedDot)
                Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
