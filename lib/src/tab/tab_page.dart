import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:tota/src/custom_widgets/custom_drawer.dart';

import '../custom_widgets/custom_app_bar.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        menuScreen: const CustomDrawer(),
        mainScreen: Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          appBar: const CustomAppBar(),
          body: const RouterOutlet(),
          bottomNavigationBar: FluidNavBar(
            defaultIndex: 0,
            style: const FluidNavBarStyle(
              barBackgroundColor: Color.fromRGBO(19, 23, 26, 1),
            ),
            icons: [
              FluidNavBarIcon(
                  icon: Icons.home_rounded,
                  unselectedForegroundColor: const Color(0xFFC293EB),
                  selectedForegroundColor: Colors.white),
              FluidNavBarIcon(
                  icon: Icons.music_note_rounded,
                  unselectedForegroundColor: const Color(0xFFC293EB),
                  selectedForegroundColor: Colors.white),
              FluidNavBarIcon(
                  icon: Icons.people_rounded,
                  unselectedForegroundColor: const Color(0xFFC293EB),
                  selectedForegroundColor: Colors.white),
              // FluidNavBarIcon(
              //     icon: Icons.bar_chart,
              //     unselectedForegroundColor: const Color(0xFF2BB3C5),
              //     selectedForegroundColor: const Color(0xFFEBECF0)),
            ],
            onChange: (value) async => {
              if (value == 0) {Modular.to.navigate('/tab/home/')},
              if (value == 1) {Modular.to.navigate('/tab/performer/')},
              if (value == 2) {Modular.to.navigate('tab/auth/')},
            },
          ),
        ),
        style: DrawerStyle.defaultStyle,
        borderRadius: 24.0,
        showShadow: true,
        angle: -12.0,
        menuBackgroundColor: const Color(0xFF26063E),
        slideWidth: MediaQuery.of(context).size.width * 0.75);
  }
}
