import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';
import 'package:project_2_whatsapp_clone/Model/user.dart';

class CallScreen extends StatelessWidget {
  List<StatusData> StatusList = [
    new StatusData("Ketan", "Today,08:34",
        AssetImage("Assets/images/profile_secound.jpg")),
    new StatusData(
        "Roni", "Today,08:34", AssetImage("Assets/images/profile_one.png")),
    new StatusData(
        "Aarti", "Today,08:34", AssetImage("Assets/images/profile_third.jpg")),
    new StatusData(
        "Rocky", "Today,08:34", AssetImage("Assets/images/profile_one.png")),
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
        return CallListTile(
            UserName: StatusList[index].UserName,
            Date: StatusList[index].DateTime,
            StatusImage: StatusList[index].StatusImage);
      }),
      itemCount: StatusList.length,
    );
  }
}

class CallListTile extends StatelessWidget {
  final String UserName;
  final String Date;
  final AssetImage StatusImage;

  const CallListTile(
      {super.key,
      required this.UserName,
      required this.Date,
      required this.StatusImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          backgroundImage: StatusImage,
          radius: 30,
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              UserName,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            Row(
              children: [
                Container(
                  child: Transform.rotate(
                    angle: .5,
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.red,
                      size: 18,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  Date,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        trailing: Icon(
          Icons.phone,
          color: Color.fromARGB(255, 0, 203, 20),
        ),
      ),
    );
  }
}
