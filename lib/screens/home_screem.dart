import 'package:disenos_app/widgets/background.dart';
import 'package:disenos_app/widgets/card_table.dart';
import 'package:disenos_app/widgets/custom_button_navigation.dart';
import 'package:disenos_app/widgets/pague_title.dart';
import 'package:flutter/material.dart';

class HomeScreem extends StatelessWidget {
  const HomeScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustonButtonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
