import 'package:app_puzzle/Utils.dart';
import 'package:app_puzzle/src/blocs/forgot-password_bloc.dart';
import 'package:flutter/material.dart';
import 'confirm-forgot.dart';
import 'login_page.dart';

void main() => runApp(EmailForgot());

class EmailForgot extends StatefulWidget {
  @override
  _EmailForgotState createState() => _EmailForgotState();
}

class _EmailForgotState extends State<EmailForgot> {
  FogotPassWordBloc bloc = new FogotPassWordBloc();
  TextEditingController email_forgot = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(),
          color: Color.fromARGB(255, 233, 248, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Utils.Logo(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 25),
                child: Utils.TextFieldWithStream(
                    'Email', email_forgot, bloc.userStream),
              ),
              Utils.ButtonWithText(onConfirmClicked, 'Gửi mã xác nhận'),
              GestureDetector(
                onTap: onBackClicked,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 275),
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onConfirmClicked() {
    setState(() {
      if (bloc.isValidInfo(email_forgot.text)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ConfirmForgot()));
      }
    });
  }

  void onBackClicked() {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }
}
