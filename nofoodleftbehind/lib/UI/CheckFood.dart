import 'package:flutter/material.dart';
import 'package:nofoodleftbehind/Theme/theme.dart' as Theme;
import 'HomePage.dart';

class CheckFoodPage extends StatefulWidget {
  String name;

  CheckFoodPage({this.name});

  @override
  _CheckFoodPageState createState() => _CheckFoodPageState(name: name);
}

class _CheckFoodPageState extends State<CheckFoodPage> {
  String name;

  _CheckFoodPageState({this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.Colors.loginpagebackground),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset('images/hamburger.png',width: 160,height: 160,),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                                Name: name,
                              ),
                        ),
                      );
                    },
                    color: Theme.Colors.logintextbox,
                    elevation: 2.0,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      child: Text(
                        'PostFood',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Theme.Colors.logintextbox,
                    elevation: 2.0,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Container(
                      width: 150,
                      alignment: Alignment.center,
                      child: Text(
                        'CheckFood',
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
