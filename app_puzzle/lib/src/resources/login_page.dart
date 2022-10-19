import 'package:app_puzzle/Utils.dart';
import 'package:app_puzzle/src/blocs/login_bloc.dart';
import 'package:app_puzzle/src/resources/signup.dart';
import 'package:flutter/material.dart';
import 'email-forgot.dart';
import 'home_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginBloc bloc = LoginBloc();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.bottomCenter,
          constraints: const BoxConstraints.expand(),
          color: const Color.fromARGB(255, 233, 248, 255),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Utils.Logo(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: Utils.TextFieldWithStream(
                      'Tên đăng nhập', username, bloc.userStream),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 50, 25),
                  child: Utils.TextFieldWithStream_Pass(
                    'Mật khẩu',
                    password,
                    _showPass,
                    bloc.passStream,
                    onTapShowPass,
                  ),
                ),

                Utils.ButtonWithText(onSignInClicked, 'Đăng nhập'),
                //
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Utils.TextButtonWithOnTap(
                      'Forgot your password?', onForgotClicked),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 150, 0, 40),
                  child: Utils.TextButtonWithOnTap(
                      "Don’t have account? Sign Up", onSignUpClicked),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _showPass = true;

  void onTapShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClicked() {
    setState(() {
      if (bloc.isValidInfo(username.text, password.text)) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    });
  }

  void onSignUpClicked() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    });
  }

  void onForgotClicked() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EmailForgot()));
    });
  }
}
