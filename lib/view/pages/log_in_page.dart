import 'package:flutter/material.dart';
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

  bool checkCredential(){
    //TODO Sadia: Check Credential
    if(usernameORmobile.text == "iit" && password.text == "123") return true;
    else return false;
  }

  void go_to_home_page(){
    if(checkCredential()) Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
    else myAlertDialog("Error!", "Username or Password doesn't matched", context,itemcolor, bgcolor );
  }
  @override
  Widget build(BuildContext context) {
    return MyAppSafePage(null, Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PageHeadingTitle(context, "Log in", colorbluedark),
          InputTextWidget(context, colorWhite, colorbluedark, "Username or Mobile", "Write your Username or mobile number", usernameORmobile, false),
          InputTextWidget(context, colorWhite, colorbluedark, "Password", "Write your Password", password, true),
          ActionButton(context, bgcolor, "Log in", go_to_home_page),
        ],
      ),
    ));
  }
}
