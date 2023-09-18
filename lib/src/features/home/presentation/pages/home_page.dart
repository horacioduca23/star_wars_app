import 'package:flutter/material.dart';

import '../../../../constants/strings.dart';
import '../../../drawer/presentation/widgets/app_drawer.dart';
import '../widgets/app_bottom_navigation_bar.dart';
import '../widgets/character_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.starWarsReportApp),
      ),
      bottomNavigationBar: const AppBottomNavigationBar(),
      drawer: const AppDrawer(),
      body: const Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: CharacterList(),
      ),
    );
  }
}
