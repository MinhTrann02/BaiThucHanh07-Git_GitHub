// ignore_for_file: file_names

import 'package:app_puzzle/Utils.dart';
import 'package:app_puzzle/src/blocs/confirm-fogot_bloc.dart';
import 'package:flutter/material.dart';
import 'new-password.dart';

void main() => runApp(const ConfirmForgot());

class ConfirmForgot extends StatefulWidget {
  const ConfirmForgot({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConfirmForgotState createState() => _ConfirmForgotState();
}

class _ConfirmForgotState extends State<ConfirmForgot> {
  ConfirmCodeBloc bloc = ConfirmCodeBloc();
  TextEditingController confirm_forgot = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(),
          color: const Color.fromARGB(255, 233, 248, 255),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Utils.Logo(),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: Utils.TextFieldWithStream(
                  'Mã xác nhận',
                  confirm_forgot,
                  bloc.codeStream,
                ),
              ),
              Utils.Confirm(),
              Utils.ButtonWithText(onConfirmClicked, 'Xác nhận'),
              const Padding(padding: EdgeInsets.all(148)),
            ],
          ),
        ),
      ),
    );
  }

  void onConfirmClicked() {
    setState(() {
      if (bloc.isValidInfo(confirm_forgot.text)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NewPassword()));
      }
    });
  }
}
