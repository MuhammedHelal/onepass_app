import 'package:flutter/material.dart';
import 'package:onepass/core/utils/colors.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      animationDuration: Duration(milliseconds: 300),
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 23, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.2),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: TabBar(
          indicatorPadding: EdgeInsets.symmetric(horizontal: 4),
          dividerHeight: 0,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          unselectedLabelColor: AppColors.lighterBlack,
          labelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Website',
            ),
            Tab(
              text: 'Password',
            ),
          ],
          onTap: (value) {},
        ),
      ),
    );
  }
}
