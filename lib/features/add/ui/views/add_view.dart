import 'package:flutter/material.dart';
import 'package:onepass/features/add/ui/widgets/add_view_body.dart';
import 'package:onepass/features/add/ui/widgets/custom_tabbar.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTabbar(),
            AddViewBody(),
          ],
        ),
      ),
    );
  }
}
