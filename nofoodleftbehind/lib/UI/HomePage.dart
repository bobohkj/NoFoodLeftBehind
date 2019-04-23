import 'package:flutter/material.dart';
import 'package:nofoodleftbehind/Theme/theme.dart' as Theme;
import 'package:image_picker/image_picker.dart';
import 'FoodCard.dart';

class HomePage extends StatefulWidget {
  String Name;

  HomePage({this.Name});

  @override
  _HomePageState createState() => _HomePageState(name: Name);
}

class _HomePageState extends State<HomePage> {
  List<Widget> imagelist;
  String name;

  _HomePageState({this.name});

  @override
  void initState() {
    super.initState();
    name = (name.length == 0) ? 'unknown' : name;
    imagelist = [
      new FoodCard(
          image: Image.asset(
        'images/food.jpg',
        fit: BoxFit.fitWidth,
      )),
      new FoodCard(
          image: Image.asset(
        'images/food.jpg',
        fit: BoxFit.fitWidth,
      )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'NO FOOD LEFT\nBEHIND',
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Theme.Colors.loginpagebackground,
      ),
      body: Container(
        decoration: BoxDecoration(color: Theme.Colors.loginpagebackground),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(4.0),
                    margin: EdgeInsets.only(top: 10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2.0),
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 80,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                height: 8.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, //每行三列
                        childAspectRatio: 1.0 //显示区域宽高相等
                        ),
                    itemCount: imagelist.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        child: imagelist[index],
                        onLongPressUp: () {
                          setState(() {
                            imagelist.removeAt(index);
                          });
                        },
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
            child: IconButton(
              icon: Icon(
                Icons.add_a_photo,
                size: 50,
                color: Colors.white,
              ),
              onPressed: _takePhoto,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
            child: IconButton(
              icon: Icon(
                Icons.album,
                size: 50,
                color: Colors.white,
              ),
              onPressed: _openGallery,
            ),
          ),
        ],
      ),
    );
  }

  /*拍照*/
  _takePhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      if (image != null) {
        imagelist.add(
          new FoodCard(
            image: Image.file(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      }
    });
  }

  /*相册*/
  _openGallery() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        imagelist.add(
          FoodCard(
            image: Image.file(
              image,
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      }
    });
  }
}
