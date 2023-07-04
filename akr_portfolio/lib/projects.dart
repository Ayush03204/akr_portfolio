import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProject extends StatefulWidget {
  const MyProject({super.key});

  @override
  State<MyProject> createState() => _MyProjectState();
}

// class Project extends StatefulWidget {
//   const Project({Key? key}) : super(key: key);

//   @override
//   State<Project> createState() => _ProjectState();
// }

class _MyProjectState extends State<MyProject> {
  myPro(title, language, desc, star) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shadowColor: Colors.redAccent,
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language,
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                desc,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.black,
                    size: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    star,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.black,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 163, 231),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 2, 85),
        title: Text('PROJECTS'),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            myPro(
                'BMI_Calculator',
                'Flutter',
                'It gives the body mass index based on the height and weight',
                '8'),
            myPro('News_App', 'Flutter',
                'News app developed with the help of API.', '8'),
            myPro('Library Management ', 'C/C++',
                'A software which helps in managing the library', '9'),
            myPro('FLUTTER', 'Portfolio',
                'Portfolio using flutter for 3rd year student', '8'),
            myPro('FLUTTER', 'PORTFOLIO ',
                'Portfolio using flutter for 3rd year student', '8'),
          ]),
        ),
      ),
    );
  }
}
