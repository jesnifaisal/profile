import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  String dropdownvalue = "English";
  var items = {"English", "Malayalam", "Korean", "Hindi", "Spanish"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 260,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(140, 80))),
              child: Container(
                child: Image.asset(
                  "asset/girl.jpg",
                  scale: 2,
                  width: 130,
                  height: 139,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      100,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120, left: 150),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white),
                child: Icon(Icons.edit_sharp),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 70),
              child: Text(
                "Shivam Kumar",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 225, left: 60),
              child: Row(children: [
                Text(
                  "shivam@kumar",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Text(" I "),
                Text(
                  "3435567890",
                  style: TextStyle(color: Colors.black),
                )
              ]),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 280, left: 10),
                child: Container(
                  height: 190,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2,
                            spreadRadius: 1.3),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.edit_note_outlined),
                        title: Text("Edit profile information"),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications_none_outlined),
                        title: Text("Notifications"),
                        trailing: Text(
                          "ON",
                          style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language_rounded),
                        title: Text("Language"),
                        trailing: DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 590, left: 30),
              child: Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1.3,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.security),
                      title: Text("Security"),
                    ),
                    ListTile(
                      leading: Icon(Icons.theater_comedy),
                      title: Text("Theme"),
                      trailing: Text(
                        "light mode",
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 730, left: 30),
              child: Container(
                  height: 170,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1.3,
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(Icons.support_agent_outlined),
                      title: Text("Help & support"),
                    ),
                    ListTile(
                      leading: Icon(Icons.chat),
                      title: Text("Contact us"),
                    ),
                    ListTile(
                      leading: Icon(Icons.lock),
                      title: Text("privecy policy"),
                    ),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
