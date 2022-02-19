// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_print, avoid_types_as_parameter_names, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get and => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Department',
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => PopupMenuButton(
              icon:
                  Icon(Icons.menu), //don't specify icon if you want 3 dot menu
              color: Colors.blue,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text(
                    "About ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text(
                    "Vision and Mission",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text(
                    "HOD's Desk ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 0) {
                  about(context);
                }
                if (value == 1) {
                  visionmission(context);
                }
                if (value == 2) {
                  hod(context);
                }
              },
            ),
          ),
          centerTitle: true,
          title: Text("Welcome To IT Department"),
          backgroundColor: Colors.blue,
        ),
        body: Builder(
          builder: (context) => Center(
            child: Column(
              children: [
                Image.network(
                  'https://lh5.googleusercontent.com/p/AF1QipPIP0dWdkTyu9TPZRPZFfv-5bTMH5jB91PCwG-M=w1080-k-no',
                  height: 400,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "\n\nRecent advancements in the areas of computers, software, networks, internet, communication technology, Big Data, and cloud computing, etc. have made a huge amount of information available to us. \n In this high-tech era, information is something without which industry, individuals cannot survive, and their success depends on the ability to acquire accurate and timely information. Keeping this in mind FAMT started\n the Bachelor of Engineering program in Information Technology (IT) from academic session 2001-2002. \n The emphasis of B.E. in Information Technology curriculum is on Computer Science, Software Development, Networking, Communication, Web Engineering, Security, Multimedia processing, IoT, Cloud Computing, \n Data Analytics, and Soft Computing. Currently, the department’s infrastructure contains three classrooms, six laboratories, a staff room, and a seminar hall.  \n\n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      child: Text(
                        'Intel Centre of Excellence Lab',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () => intel(context),
                    ),
                    RaisedButton(
                      child: Text(
                        'Amazon AWS Academy Lab',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () => awsLab(context),
                    ),
                    RaisedButton(
                      child: Text(
                        'NVIDIA Developer Program Lab',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () => nvdLab(context),
                    ),
                    RaisedButton(
                      child: Text(
                        'IBM Lab',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => ibmLab(context),
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      child: Text(
                        'Palo Alto Network Cybersecurity Academy Lab',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.blue,
                      onPressed: () => cybersecLab(context),
                    ),
                  ],
                ),
                Text("\n"),
                RaisedButton(
                  child: Text(
                    'Contact Us',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.green,
                  onPressed: () => contactUs(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at hodit@famt.ac.in'),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void about(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          title: Text(
            'About Information Technology Department ',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          content: Column(
            children: [
              Image.network(
                "https://i1.wp.com/famt.ac.in/wp-content/uploads/2015/08/DSC_0050.jpg",
                height: 350,
              ),
              Text(
                  "IT department also has a Ph.D. Research Center under the Mumbai University and it is the only department in the Konkan region to provide doctorate level education. \nDepartment has a total of 13 faculty members with an average experience of more than 10 years. They have been always upgrading the knowledge by undergoing training and certification offered by the industries and then professional bodies. Faculty members have been completing their certification from NPTEL, Coursera, IBM Cognitive Class, Udemy, Microsoft technology Associate Program, Amazon AWS Academy. It Department has always been keeping students at the centre and always working for their holistic development and bright future")
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void visionmission(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Vision And Mission ',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.red, fontSize: 28, fontWeight: FontWeight.bold),
          ),
          content: Column(
            children: [
              Text(
                "\nVISION",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
              Row(children: [
                Text(
                  "To provide excellent Information Technology  education and aspire to nurture students as leaders who are in tune with global IT Trends",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              Text(
                "\nMission",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20),
              ),
              Row(children: [
                Text(
                  "1. To Enrich students by rigorously implementing quality education. \n2.To imbibe professional ethics and social values in the students and make them responsible citizens.",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ])
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void hod(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "HOD's Desk ",
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          ),
          content: Column(
            children: [
              Image.network(
                "https://yt3.ggpht.com/gdm9xiu2hzYn96qNz5K_3q-eD3QVViSKQ6rEhEeoi3o0Xw9bYcylLVSQdAJ8In86h5z08RIWr04=s900-c-k-c0x00ffffff-no-rj",
                height: 250,
              ),
              Text(
                "Dr. Vinayak A. Bharadi \n \nHOD and ProfessorQualification – Ph DStatus – USSC \n \nAreas of Interest – Deep Learning, Blockchain, Cloud Computing, Big Data Analytics, Digital Signal Processing \nTeachers in IT department are very active in upgrading knowledge, In Odd Semester of AY 2017-2018 Eight Faculty members from IT Department have successfully completed Certified Training programs from NPTEL and Prof. Santosh Jadhav and Prof. Atiya Kazi has  achieved national level ranking as Top 1% and Top 5% respectively. Department will strive to provide best in class education and facilities for the stakeholders and contribute for nation building.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 23),
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void intel(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('LAb 2/1 -Intel Centre of Excellence'),
          content: Column(
            children: [
              Image.network(
                'data:image/jpeg;base64,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',
                height: 350,
              ),
              Text(
                  'Name of Industrial/Research partner: Intel Inc \n\n Nature of MOU/Support given by the industry: Laboratory Setup, Faculty Training \n\n Outcome of MOU/Program: IoE Mini Projects, TE IT Mini Projects, Intel Galileo Board Based Development Project'),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      },
    );
  }

  void awsLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/1 - Amazon AWS Academy Lab'),
          content: Column(children: [
            Image.network('https://avatars.githubusercontent.com/u/3299148?s=280&v=4'),
            Text(
              ' Name of Industrial/Research partner: Amazon AWS \n\n Nature of MOU/Support given by the industry: Amazon AWS Training and Certification to Faculty \n\n Outcome of MOU/Program: AWS Certification by Students and Faculty'),
          ],
         ),

          
          
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
void nvdLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 2/3 - NVIDIA Developer Program Lab'),
          content: Column(children: [
            Image.network('data:image/png;base64,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',height: 350),
         
          Text(
              ' Name of Industrial/Research partner: NVIDIA Developer Program \n\n Nature of MOU/Support given by the industry: NVIDIA Titan X Pascal GPU, NVIDIA Developer Program Resources \n\n Outcome of MOU/Program: Deep Learning Research'),
           ],
           ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
  void ibmLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - IBM Academic Alliance Lab'),
          content:Column(children: [
            Image.network('data:image/png;base64,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',height: 350),
          
          Text(
              ' Name of Industrial/Research partner: IBM Academic Alliance \n\n Nature of MOU/Support given by the industry: IBM Academic Courses for Staff and Students \n\n Outcome of MOU/Program: Staff and Students Skill Upgradation'),
          ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
  
void cybersecLab(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Lab 1/2 - Palo Alto Network Cybersecurity Academy Lab'),
          content: Column(children: [
            Image.network('data:image/jpeg;base64,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')
         
          ,Text(
              ' Name of Industrial/Research partner: Palo Alto Network Cybersecurity Academy \n\n Nature of MOU/Support given by the industry: Palo Alto Network Cybersecurity Academy Certification Training to Staff and Students \n\n Outcome of MOU/Program: Total 2 faculty members have been trained and completed Certification. PANW has recognised Dr. V A Bharadi and Prof. A R Kazi as authorized Cybersecurity instructor'),
           ],
           ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }
}

  


cybersecLab(BuildContext context) {
}

ibmLab(BuildContext context) {
}

nvdLab(BuildContext context) {
}

awsLab(BuildContext context) {
}

intel(BuildContext context) {
}
