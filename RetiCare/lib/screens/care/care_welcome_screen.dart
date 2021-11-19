import 'package:flutter/material.dart';

class SectionC{
  String name;
  Color color;
  String imgName;
  List<SectionC> subSections;

  SectionC(
    {
      this.name,
      this.color,
      this.imgName,
      this.subSections,
    }
  );
}

class Utils{
  static List<SectionC> getCategories() {
    return [
      SectionC(
        color: Colors.red[200],
        imgName: 'assets/care/healthy.png',
        name: 'healthy eating',
        subSections: []
      ),
      SectionC(
          color: Colors.orange[800],
          imgName: 'assets/care/exercise.png',
          name: 'physical activities',
          subSections: []
      ),
      SectionC(
          color: Colors.amber[600],
          imgName: 'assets/care/social.png',
          name: 'social activities',
          subSections: []
      ),
      SectionC(
          color: Colors.lightGreen[700],
          imgName: 'assets/care/mentalhealth.png',
          name: 'fun games',
          subSections: []
      ),
      SectionC(
          color: Colors.cyan[900],
          imgName: 'assets/care/exam.png',
          name: 'previous examinations',
          subSections: []
      ),
    ];
  }
}

class CareWelcomeScreen extends StatelessWidget {

  List<SectionC> sections = Utils.getCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        // Fluttter show the back button automatically
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("RetiCare"),
        centerTitle: true,
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: sections.length,
                  itemBuilder: (BuildContext ctx, int index){
                    return Container(
                      margin: EdgeInsets.all(20),
                      height: 150,
                      child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(sections[index].imgName,
                                       fit: BoxFit.cover)
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                      gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          colors: [
                                            Colors.black.withOpacity(0.7),
                                            Colors.transparent
                                          ]
                                      )
                                  ),
                                ),
                            ),
                            Positioned(
                              bottom: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10),
                                      Text(sections[index].name,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ],
                          ),
                    );
                  },

                ),
            ),
          ],
        ),
      )
    );
  }
}