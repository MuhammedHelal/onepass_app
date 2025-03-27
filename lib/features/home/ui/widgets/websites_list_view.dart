import 'package:flutter/material.dart';
import 'package:onepass/features/home/ui/widgets/website_item.dart';

class WebsitesListView extends StatelessWidget {
  const WebsitesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const WebsiteItem();
      },
    );
  }
}
