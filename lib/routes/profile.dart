import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cs310_week5_app/routes/welcome.dart';
import 'package:flutter/material.dart';
import 'package:cs310_week5_app/routes/login.dart';
import 'package:cs310_week5_app/routes/home.dart';
import 'package:cs310_week5_app/routes/postcard.dart';
import 'package:cs310_week5_app/routes/walkthrough.dart';
import 'package:walkthrough/walkthrough.dart';
import 'package:cs310_week5_app/routes/home.dart';
import 'package:cs310_week5_app/utils/color.dart';
import 'package:cs310_week5_app/utils/dimension.dart';
import 'package:cs310_week5_app/utils/styles.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
class _ProfileState extends State<ProfilePage> {

  final textStylesStats = TextStyle(
    fontSize: 11.0,
    color: Colors.white,
  );
  final textStylesTop = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final textStyle3 = TextStyle(
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.deepPurpleAccent.withOpacity(0.9),
                        Colors.deepPurple.withOpacity(0.2),
                      ],
                      stops: [0.5, 0.7, 1],
                      begin: Alignment.topRight,
                    )
                )
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 32.0,),
                _topRow(),
                _profileRow(),
                _statesRow(),
                _bottomCard(),
              ],
            )
          ],
        )
    );
  }
  _profileRow(){
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: <Widget>[
            Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("team-dummy-woman.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                )
            ),
            SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                Text(
                  "Jamiro Qua",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Chuck Chakil!",
                  style: textStyle3,
                ),
              ],
            )
          ],
        )
    );
  }
  _topRow(){
    return IconTheme(
        data: IconThemeData(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            IconButton(icon: Icon(Icons.arrow_back), onPressed:(){ Navigator.pushNamed(context, '/home');}),
            Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.cast), onPressed:(){}),
                IconButton(icon: Icon(Icons.more_horiz), onPressed: (){}),
              ],
            )
          ],
        )
    );
  }
  _statesRow(){
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "245",
                style: textStylesTop,
              ),
              Text(
                "following",
                style: textStylesStats,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              Text(
                "545",
                style: textStylesTop,
              ),
              Text(
                "followers",
                style: textStylesStats,
              ),
            ],
          ),

          Column(
            children: <Widget>[
              Text(
                "45",
                style: textStylesTop,
              ),
              Text(
                "chakils",
                style: textStylesStats,
              ),
            ],
          ),
          
        ],
      ),
    );
  }
  _bottomCard(){
    return Expanded(
      child: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(50, 70),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "My Chakils",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              )
                          )
                      ),
                      SizedBox(height: 20.0),
                      Container(
                          width: 100.0,
                          height: 300.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              item(),
                              item(),
                              item(), //dummy items -> user-> allpost
                            ],
                          )
                      )
                    ],
                  ),
                )
            ),
          ),
          Align(
            alignment: Alignment(0.8,-0.8),
            child: Container(
              width: 50.0,
              height: 50.0,
              child: IconButton(
                icon: Icon(
                    Icons.edit),
                    color:Colors.white,
                    onPressed:() {Navigator.pushNamed(context, '/editprofile');}
                ),

              decoration: BoxDecoration(
                color: Colors.purple,
                boxShadow: [
                  BoxShadow(
                    color: Colors.purple.withOpacity(0.4),
                    spreadRadius: 1.0,
                    blurRadius: 3.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
  item(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.red,
        image: DecorationImage(
          image: AssetImage("team-dummy-woman.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 130.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
            color: Colors.white,
          ),
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.all(16.0),
                      child: Text(
                          "Top 10 dummy on the planet, UK",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,

                          )
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(4.0),
                          width:25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            image:DecorationImage(
                              image: AssetImage("team-dummy-woman.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(4.0),
                          width:25.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            image:DecorationImage(
                              image: AssetImage("team-dummy-woman.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ],
                    )
                  ]
              )
          ),
        ),
      ),
    );
  }


}
