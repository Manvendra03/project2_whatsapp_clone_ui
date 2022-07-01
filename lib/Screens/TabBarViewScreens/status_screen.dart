import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Model/user.dart';

import '../show_status.dart';

class StatusScreen extends StatelessWidget {
  List<StatusData> StatusList = [
    new StatusData("Mohit", "Today,08:34",
        AssetImage("Assets/images/profile_secound.jpg")),
    new StatusData(
        "Monty", "Today,08:34", AssetImage("Assets/images/profile_one.png")),
    new StatusData(
        "Neha", "Today,08:34", AssetImage("Assets/images/profile_third.jpg")),
    new StatusData(
        "Ram", "Today,08:34", AssetImage("Assets/images/profile_one.png")),
    new StatusData("Rohit", "Today,08:34",
        AssetImage("Assets/images/profile_secound.jpg")),
    new StatusData(
        "Monty", "Today,08:34", AssetImage("Assets/images/profile_one.png")),
    new StatusData(
        "Neha", "Today,08:34", AssetImage("Assets/images/profile_third.jpg")),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return StatusListTile(
            UserName: StatusList[index].UserName,
            Date: StatusList[index].DateTime,
            StatusImage: StatusList[index].StatusImage);
      }),
      itemCount: StatusList.length,
    );
  }
}

class StatusListTile extends StatelessWidget {
  final String UserName;
  final String Date;
  final AssetImage StatusImage;

  const StatusListTile(
      {super.key,
      required this.UserName,
      required this.Date,
      required this.StatusImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          print("Press occuredd");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ShowStatus(image: this.StatusImage)));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          backgroundImage: StatusImage,
          radius: 30,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              UserName,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            Text(
              Date,
              style:
                  Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
