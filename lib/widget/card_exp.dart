import 'package:flutter/material.dart';

class CardExp extends StatefulWidget {
  @override
  _CardExpState createState() => _CardExpState();
}

class _CardExpState extends State<CardExp> {
  bool isOpen = false;
  List<String> skills = [
    "Digital Marketing",
    'Digital Management',
    'Social Media',
    'Webdesign and digital Marketing',
    'Référent technique du projet',
    " SEO and SEA",

  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeInOutQuint,
        padding: EdgeInsets.all(8),
        duration: Duration(milliseconds: 600),
        height: isOpen ? 480 : 180,
        color: Theme.of(context).buttonColor,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.domain,
                        color: Theme.of(context).canvasColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Digital Marketing",
                        style: TextStyle(
                            color: Theme.of(context).canvasColor, fontSize: 22),
                      ),
                    ],
                  ),
                  Text("Juin 2022 à ce jour",
                      style: TextStyle(
                          color: Theme.of(context).canvasColor, fontSize: 14))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Digital Marketer",
                    style: TextStyle(
                        color: Theme.of(context).canvasColor,
                        fontSize: 18,
                        fontStyle: FontStyle.italic)),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '  Gestion et suivi de campagne et contact de client ',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: (skills.length * 19).toDouble(),
                child: GridView.count(
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 1,
                  childAspectRatio: 20,
                  children: List.generate(skills.length, (index) {
                    return Text(
                      '• ${skills[index]}',
                      style: TextStyle(
                          color: Theme.of(context).canvasColor, fontSize: 14),
                    );
                  }),
                ),
              ),
              Text(
                "Environnement technique : ",
                style: TextStyle(
                    color: Theme.of(context).canvasColor,
                    decoration: TextDecoration.underline),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              Text(
                '',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              Text(
                '',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
              Text(
                'Autres :  JIRA, Confluence,',
                style: TextStyle(color: Theme.of(context).canvasColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
