import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:onepass/features/home/ui/widgets/websites_list_view.dart';
import 'package:onepass/features/home/ui/widgets/custom_search_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              CustomSearchBar(),
              Gap(10),
              Expanded(child: WebsitesListView()),
            ],
          ),
        ),
      ),
    );
  }
}
