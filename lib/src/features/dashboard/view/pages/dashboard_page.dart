import 'package:flutter/material.dart';
import 'package:mfood/src/features/home/view/pages/home_page.dart';
import 'package:mfood/src/features/profile/views/pages/profile_page.dart';
import 'package:mfood/src/features/search/views/pages/search_page.dart';
import 'package:pepperoni/pepperoni.dart';
import 'package:mfood/src/features/pages/order_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          SearchPage(),
          ProfilePage(),
          OrderPage(),
        ],
      ),
      bottomNavigationBar: PepperoniBottomBar(
        onIndexSelected: (index) => pageController.jumpToPage(
          index,
        ),
        items: [
          PepperoniBottomItemBar(
              icon: Icons.home_outlined,
              activeicon: Icons.home_filled,
              label: 'Inicio'),
          PepperoniBottomItemBar(
              icon: Icons.search_outlined,
              activeicon: Icons.search_off_sharp,
              label: 'Busca'),
          PepperoniBottomItemBar(
              icon: Icons.file_copy_outlined,
              activeicon: Icons.file_copy_rounded,
              label: 'Pedidos',
              countBadge: 2),
          PepperoniBottomItemBar(
              icon: Icons.person_outline,
              activeicon: Icons.person,
              label: 'Perfil'),
        ],
      ),
    );
  }
}
