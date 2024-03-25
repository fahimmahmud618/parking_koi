import 'package:cache_manager/cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:parking_koi/cache_handler.dart';
import 'package:parking_koi/view/pages/home_page.dart';
import 'package:parking_koi/view/styles.dart';
import 'package:parking_koi/view/widgets/action_button.dart';
import 'package:parking_koi/view/widgets/alert_dialog.dart';
import 'package:parking_koi/view/widgets/input_text_widget.dart';
import 'package:parking_koi/view/widgets/my_app_safe_page.dart';
import 'package:parking_koi/view/widgets/page_heading_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameORmobile = new TextEditingController();
  TextEditingController password = new TextEditingController();

  void saveCache() {
    WriteCache.setString(
        key: "cache",
        value: caesarCipherEncode(
            makeCache(usernameORmobile.text, password.text), 2));
  }

  void checkCredential() {
    //TODO Sadia: Check Credential
    if (usernameORmobile.text.isEmpty || password.text.isEmpty) {
      myAlertDialog("Error!", "Username or password cannot be empty", context,
          itemcolor, bgcolor);
    } else if (usernameORmobile.text == "iit" && password.text == "123") {
      saveCache();
      go_to_home_page();
    } else
      myAlertDialog("Error!", "Username or Password doesn't matched", context,
          itemcolor, bgcolor);
  }

  void go_to_home_page() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(
        null,
        Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PageHeadingTitle(context, "Log in", colorbluedark),
              InputTextWidget(
                  context,
                  colorWhite,
                  colorbluedark,
                  "Username or Mobile",
                  "Write your Username or mobile number",
                  usernameORmobile,
                  false),
              InputTextWidget(context, colorWhite, colorbluedark, "Password",
                  "Write your Password", password, true),
              ActionButton(context, bgcolor, "Log in", checkCredential),
            ],
          ),
        ));
  }
}
