import 'package:flutter/material.dart';
import 'package:nofoodleftbehind/Theme/theme.dart' as Theme;
import 'CheckFood.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailtextcontroller = new TextEditingController();
  TextEditingController passwordtextcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.Colors.loginpagebackground),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('NO FOOD LEFT BEHIND',style: TextStyle(color: Colors.brown[700],fontSize: 20),),
            Image.asset(
              'images/hamburger.png',
              width: 100,
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0,horizontal: 40.0),
                  decoration: BoxDecoration(
                      color: Theme.Colors.logintextbox,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: TextField(
                    focusNode: null,
                    controller: emailtextcontroller,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "WorkSansSemiBold",
                        fontSize: 16.0,
                        color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2.0,horizontal: 40.0),
                  decoration: BoxDecoration(
                      color: Theme.Colors.logintextbox,
                      borderRadius: BorderRadius.circular(3.0)),
                  child: TextField(
                    focusNode: null,
                    controller: passwordtextcontroller,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "WorkSansSemiBold",
                        fontSize: 16.0,
                        color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "PASSWORD",
                    ),
                  ),
                ),
              ],
            ),
            FlatButton(
                onPressed: () {
                  login(emailtextcontroller.text, passwordtextcontroller.text,
                      context);
                },
                child: Text('LOG IN')),
          ],
        ),
      ),
    );
  }
}

void login(String email, String password, BuildContext context) {
  Navigator.of(context).pushAndRemoveUntil(
      new MaterialPageRoute(
        builder: (context) => new CheckFoodPage(name: email,),
      ),
      (route) => route == null);
}
