import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _RememberMe = false;

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email:',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF51B857),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Arial',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white70,
              ),
              hintText: "Enter your email here!!",
              hintStyle: TextStyle(
                color: Colors.white70,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password:',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xFF51B857),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 6.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Arial',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white70,
              ),
              hintText: "Enter your Password here!!",
              hintStyle: TextStyle(
                color: Colors.white70,
                fontFamily: 'Arial',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
        alignment: Alignment.bottomRight,
        child: TextButton(
          onPressed: () => print('Forget Password Button Pressed'),
          child: Text(
            'Forget Password?',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 13.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
            ),
          ),
        ));
  }

  Widget _buildRemeberMRCheckBox() {
    return Container(
      height: 25.0,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.black),
            child: Checkbox(
              value: _RememberMe,
              checkColor: Colors.white,
              activeColor: Colors.orange,
              onChanged: (value) {
                setState(() {
                  _RememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 13.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xFF51B857),
          side: BorderSide(color: Colors.black, width: 1),
          minimumSize: Size(150, 40),
          shadowColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        onPressed: () => print('Pressed Login Button'),
        child: Text(
          "Log In",
          style: TextStyle(
            color: Colors.black87,
            letterSpacing: 1,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Arial',
          ),
        ),
      ),
    );
  }

  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '- - - - - - - - - - - - - - OR - - - - - - - - - - - - - -',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 15.0,
            fontFamily: 'Arial',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial'),
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        height: 30.0,
        width: 30.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, 2),
              blurRadius: 12.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'assets/logo/fb.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'assets/logo/google.png',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Button Pressed'),
      child: RichText(
        //use for displaying paragraog of text with multiple styles.
        text: TextSpan(
          // has property to give style to test.
          children: [
            TextSpan(
              text: 'Don\'t have an Account???  ',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
                fontWeight: FontWeight.w900,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF51B857),
                  Color(0xFF51B857),
                  Color(0xFF51B857),
                  Color(0xFF51B857),
                ],
                stops: [0.3, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 80.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login Form",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Times New Roman',
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  _buildEmailTF(),
                  SizedBox(height: 10.0),
                  _buildPasswordTF(),
                  _buildForgotPasswordBtn(),
                  _buildRemeberMRCheckBox(),
                  _buildLoginBtn(),
                  _buildSignInWithText(),
                  _buildSocialBtnRow(),
                  _buildSignupBtn(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
