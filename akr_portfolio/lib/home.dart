import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
// import 'package:url_launcher/url_launcher.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final Shader headerGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 33, 170, 97)
  ]).createShader(Rect.fromLTWH(0, 0, 200, 70));

  final Shader highlightGradient = LinearGradient(colors: <Color>[
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 225, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200, 70));

  final Shader OverallTextGradient = LinearGradient(colors: <Color>[
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xffac255c),
    Color(0xffca485c),
    Color(0xffe16b5c),
    Color(0xfff39860),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200, 70));

  mySkills(num, type) {
    //skills class so it can be used accordingly in row as well as column
    return Row(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()
                ..shader = OverallTextGradient), ////for Gradient
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(type),
        )
      ],
    );
  }

  mySpecialization(icon, text) {
    return Container(
      width: 105,
      height: 100,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = highlightGradient), ////for Gradient
              ),
            ],
          ),
        ),
      ),
    );
  }

  // _sendingMails() async {
  //   var url = Uri.parse("ayushray0878@gmail.com");
  //   if (await canLaunchUrl(url)) {
  //     await launchUrl(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: PopupMenuButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'Projects',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'projects');
                        }),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: TextButton(
                        child: Text(
                          'About Me',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(context, 'about');
                        }),
                    value: 2,
                  )
                ]),
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color.fromARGB(255, 19, 16, 16),
              Color.fromARGB(255, 0, 0, 0)
            ])),
        child: SlidingSheet(
          elevation: 8,
          cornerRadius: 16,
          snapSpec: const SnapSpec(
            snap: true,
            snappings: [0.4, 0.7, 1.0],
            positioning: SnapPositioning.relativeToAvailableSpace,
          ),
          body: Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: ShaderMask(
                      shaderCallback: (rect) {
                        return LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black, Colors.transparent])
                            .createShader(
                                Rect.fromLTRB(0, 0, rect.width, rect.height));
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.asset(
                        'assets/bmw.jpg',
                        height: 400,
                        fit: BoxFit.contain,
                      )),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.49),
                  child: Column(
                    children: [
                      Text('Ayush Kumar Ray',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 1,
                      ),
                      Text('Flutter Developer',
                          style: TextStyle(color: Colors.white, fontSize: 20))
                    ],
                  ),
                )
              ],
            ),
          ),
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      mySkills('5+', 'Projets'),
                      mySkills('45+', 'Certificates'),
                      mySkills('2', 'Interships'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Specialized in:",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      // foreground: Paint()..shader = OverallTextGradient
                    ),
                  ),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(FontAwesomeIcons.android, 'Android'),
                          mySpecialization(FontAwesomeIcons.html5, 'HTML'),
                          mySpecialization(FontAwesomeIcons.fire, 'Firebase'),
                          // mySpecialization(FontAwesomeIcons.java, 'Java'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(FontAwesomeIcons.c, 'C/C++'),
                          mySpecialization(FontAwesomeIcons.css3, 'CSS'),
                          mySpecialization(FontAwesomeIcons.python, 'Python'),
                          // mySpecialization(FontAwesomeIcons.java, 'Java'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mySpecialization(FontAwesomeIcons.weebly, 'Web'),
                          mySpecialization(FontAwesomeIcons.git, 'Git'),

                          mySpecialization(FontAwesomeIcons.java, 'Java'),
                          // mySpecialization(FontAwesomeIcons.java, 'Java'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Contact with me",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Mail: ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: 'ayushray0878@gmail.com',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Login Text Clicked');
                                }),
                        ]),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Phone No. ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                              text: '8259952367',
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Login Text Clicked');
                                }),
                        ]),
                      ),

                      // ElevatedButton(
                      //   onPressed: _sendingMails,
                      //   style: ButtonStyle(
                      //     padding: MaterialStateProperty.all(
                      //         const EdgeInsets.all(5.0)),
                      //     textStyle: MaterialStateProperty.all(
                      //       const TextStyle(color: Colors.black),
                      //     ),
                      //   ),
                      //   child: const Text('Click to mail'),
                      // ),
                      // ElevatedButton(
                      //     onPressed: () async {
                      //       String email = Uri.encodeComponent(
                      //           "mail@ayushray0878@gmail.com");
                      //       String subject =
                      //           Uri.encodeComponent("Hello Flutter");
                      //       String body = Uri.encodeComponent(
                      //           "Hi! I'm Flutter Developer");
                      //       print(subject); //output: Hello%20Flutter
                      //       Uri mail = Uri.parse(
                      //           "mailto:$email?subject=$subject&body=$body");
                      //       if (await launchUrl(mail)) {
                      //         //email app opened
                      //       } else {
                      //         //email app is not opened
                      //       }
                      //     },
                      //     child: Text("Mail Us Now"))
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
