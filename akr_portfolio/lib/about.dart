// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
// import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class MyAbout extends StatefulWidget {
  const MyAbout({Key? key}) : super(key: key);

  @override
  State<MyAbout> createState() => _MyAboutState();
}

class _MyAboutState extends State<MyAbout> {
  _launchcv() async {
    var nativeUrl =
        "drive://user?username=1uMtFMbr5-j2T9OSgyukvQQuNzHZpfXLR/view";
    var webUrl =
        "https://drive.google.com/file/d/1uMtFMbr5-j2T9OSgyukvQQuNzHZpfXLR/view";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  _launchInstagram() async {
    var nativeUrl = "instagram://user?username=ayush_kr_ray";
    var webUrl = "https://www.instagram.com/ayush_kr_ray/";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  _launchtwitter() async {
    var nativeUrl = "twitter://user?username=AyushKumar22020";
    var webUrl = "https://twitter.com/AyushKumar22020";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  _launchLinkedIn() async {
    var nativeUrl = "linkedIn://user?username=ayush-kumar";
    var webUrl = "https://www.linkedin.com/in/ayush-kumar-9b7131231/";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  _launchGithub() async {
    var nativeUrl = "github://user?username=Ayush03204";
    var webUrl = "https://github.com/Ayush03204";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  _launchFacebook() async {
    var nativeUrl = "facebook://user?username=ayush_kr_ray";
    var webUrl = "https://www.facebook.com";

    try {
      await launchUrlString(nativeUrl, mode: LaunchMode.externalApplication);
    } catch (e) {
      print(e);
      await launchUrlString(webUrl, mode: LaunchMode.platformDefault);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 55),
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
                    top: MediaQuery.of(context).size.height * 0.55),
                child: Column(children: [
                  Text('Hello I am',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('Ayush Kumar Ray',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 2,
                  ),
                  Text('Flutter Developer',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'home');
                          },
                          child: Text('My Skills'),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _launchcv();
                          },
                          child: Text('Download CV'),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    IconButton(
                      onPressed: () {
                        _launchInstagram();
                      },
                      icon: Icon(FontAwesomeIcons.instagram),
                      color: Colors.white,
                      splashColor: Colors.red,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchLinkedIn();
                      },
                      icon: Icon(FontAwesomeIcons.linkedinIn),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchtwitter();
                      },
                      icon: Icon(FontAwesomeIcons.twitter),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchGithub();
                      },
                      icon: Icon(FontAwesomeIcons.github),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchFacebook();
                      },
                      icon: Icon(FontAwesomeIcons.facebook),
                      color: Colors.white,
                    ),
                  ]),
                ]))
          ],
        ),
      ),
    );
  }
}
