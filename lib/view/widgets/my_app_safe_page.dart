import 'package:flutter/material.dart';

Widget MyAppSafePage(AppBar? appbar, Widget child){
  return SafeArea(child: Scaffold(
    appBar: appbar,
    body: Container(
      child: child,
    ),
  ));
}