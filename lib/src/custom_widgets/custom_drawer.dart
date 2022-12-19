import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: const Text(
            'Drawer Header',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF873706).withOpacity(.2),
                  const Color(0xFF26063E),
                ]),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            color: Colors.white,
            onPressed: () => ZoomDrawer.of(context)!.close(),
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
        Container(
          height: 430,
        ),
        // NeumorphicButton(
        //   margin: EdgeInsets.symmetric(horizontal: 20.w),
        //   padding: EdgeInsets.symmetric(vertical: 20.h),
        //   style: NeumorphicStyle(
        //       intensity: .8,
        //       depth: 20,
        //       boxShape:
        //           NeumorphicBoxShape.roundRect(BorderRadius.circular(32.r))),
        //   onPressed: () async => {
        //     await this._authService.signOut(),
        //     await Modular.to.pushReplacementNamed('/login')
        //   },
        //   child: Center(
        //     child: Text(
        //       'Sair',
        //       style: TextStyle(
        //           fontSize: 20.sp,
        //           color: NeumorphicTheme.accentColor(context)),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
