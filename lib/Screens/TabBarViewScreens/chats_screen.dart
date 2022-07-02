import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Model/user.dart';
import 'package:project_2_whatsapp_clone/Screens/show_chats.dart';
import 'package:project_2_whatsapp_clone/Screens/show_status.dart';

class ChatsScreen extends StatelessWidget {
  List<UserProfile> FriendList = [
    UserProfile(
        UserName: "Manvendra",
        LastMessageTime: "12:45",
        ProfileImage: AssetImage("Assets/images/profile_one.png"),
        LastMessage: "heyyy"),
    UserProfile(
        UserName: "Monty",
        LastMessageTime: "1:45",
        ProfileImage: AssetImage("Assets/images/profile_secound.jpg"),
        LastMessage: "heyyy"),
    UserProfile(
        UserName: "Rohit",
        LastMessageTime: "2:05",
        ProfileImage: AssetImage("Assets/images/profile_one.png"),
        LastMessage: "yes I'am in"),
    UserProfile(
        UserName: "Ishaa",
        LastMessageTime: "5:45",
        ProfileImage: AssetImage("Assets/images/profile_third.jpg"),
        LastMessage: "hello"),
    UserProfile(
        UserName: "Manvendra",
        LastMessageTime: "12:45",
        ProfileImage: AssetImage("Assets/images/profile_one.png"),
        LastMessage: "heyyy"),
    UserProfile(
        UserName: "Manvendra",
        LastMessageTime: "12:45",
        ProfileImage: AssetImage("Assets/images/profile_one.png"),
        LastMessage: "heyyy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: FriendList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => new ShowChats(
                            ProfileImage: FriendList[index].ProfileImage,
                            UserName: FriendList[index].UserName,
                          ))));
            },
            horizontalTitleGap: 20,
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ShowStatus(image: FriendList[index].ProfileImage)));
              },
              child: CircleAvatar(
                backgroundImage: FriendList[index].ProfileImage,
                radius: 26,
              ),
            ),

            // tileColor: Colors.grey,
            title: Text(FriendList[index].UserName,
                style: Theme.of(context).textTheme.bodyText1),
            subtitle: Text(
              FriendList[index].LastMessage,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  FriendList[index].LastMessageTime,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontSize: 12),
                ),
                Container(
                  height: 18,
                  width: 18,
                  // child: Center(
                  //     child: Text(
                  //   "89",
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyText2!
                  //       .copyWith(fontSize: 12, color: Colors.white),
                  // )),
                  // decoration: BoxDecoration(
                  //     color: Color.fromARGB(255, 0, 230, 23), shape: BoxShape.circle),
                )
              ],
            ),
          );
        },
      ), // color: Colors.red,
    );
  }
}
