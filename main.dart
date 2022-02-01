import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  //Main func calls MyApp func so hot reload works. THats what the 'build' method is for
  runApp(MyApp());
}

//below class is where the actual app widgets are, allowing hot reload
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
            backgroundColor: Colors.red.shade900,
            centerTitle: true,
            title: Text(
              '  QUEST TRUCKING eCARD',
              style: TextStyle(fontFamily: 'Zilla', fontSize: 20),
            )),
        body: SingleChildScrollView(//Scrolling widget that houses all others widgets so app is scrollable

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              SizedBox(
                height: 100,
                width: double.infinity,
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage('images/FB_IMG_1643580616231~3.jpg'),
                radius: 80,
              ),
              SizedBox(height: 30),
              Text(
                'Mark Patmore',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Senior Software Engineer',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                  onPressed: _makingPhoneCall,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(320, 40),
                      shadowColor: Colors.black,
                      primary: Colors.white),
                  child: Row(
                    children: [
                      Icon(Icons.phone,
                          color: Colors.red.shade900),
                      Text(
                        '  770-881-1462',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  )),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: _sendingMails,
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(320, 40),
                      shadowColor: Colors.black,
                      primary: Colors.white),
                  child: Row(
                    children: [
                      Icon(Icons.email,
                          color: Colors.red.shade900),
                      Text(
                        '  eromtap86@protonmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  )),
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: _goToURL,
                    child: Image.asset('images/quest-logo.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: _goToURL,
                        child: Text(
                            ' QUEST TRUCKING\n',
                            style: TextStyle(fontFamily: 'Zilla', fontSize: 20)
                        ),
                      ),
                      GestureDetector(
                        onTap: _goToURL,
                        child: Text(
                            ' www.questtrucking.com',
                            style: TextStyle(fontFamily: 'Zilla', fontSize: 20)
                        ),
                      ),
                      GestureDetector(
                        onTap: _makingPhoneCall2,
                        child: Text(
                            ' (800) 676-1777',
                            style: TextStyle(fontFamily: 'Zilla', fontSize: 20)
                        ),
                      )

                    ],
                  )

                ],
              ),
              SizedBox(height: 50),


            ],
          ),
        ),
      ),
      );
  }
}

_makingPhoneCall() async {
  const url = 'tel:7708811462';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_makingPhoneCall2() async {
  const url = 'tel:8006761777';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


_sendingMails() async {
  const url = 'mailto:eromtap86@protonmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_goToURL() async {
  const url = 'https://questtrucking.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


