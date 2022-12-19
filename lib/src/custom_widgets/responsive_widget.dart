import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({ Key? key, required this.mobile, this.tablet, this.desktop, this.web }) : super(key: key);

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? web;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 481){
          return mobile;
        }
        if(tablet != null && constraints.maxWidth < 769){
          return tablet!;
        }
        if(desktop != null && constraints.maxWidth < 1025){
          return desktop!;
        }
        if(web != null && constraints.maxWidth < 1201){
          return web!;
        }
        
        return mobile;
      }
    );
  }
}