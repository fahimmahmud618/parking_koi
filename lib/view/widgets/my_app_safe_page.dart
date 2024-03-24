import 'package:flutter/material.dart';
import 'package:parking_koi/view/styles.dart';

Widget MyAppSafePage(AppBar? appbar, Widget child){
  return SafeArea(child: Scaffold(
    appBar: appbar,
    body: Container(
      padding: EdgeInsets.all(paddingaround),
      child: child,
    ),
  ));
}