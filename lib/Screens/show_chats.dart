import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';

class ShowChats extends StatelessWidget {
  Color greyblack = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.0),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                  ),
                ],
              ),
            ),
            leadingWidth: 100,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chotu Don",
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  "online",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w200),
                )
              ],
            ),
            actions: [
              Icon(
                Icons.video_call,
                size: 35,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.call,
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.more_vert_outlined,
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "Assets/images/chatscreenwallpaper.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.transparent,
          elevation: 0,
          isExtended: true,
          onPressed: null,
          label: Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: MediaQuery.of(context).size.width * .8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.emoji_emotions,
                      color: greyblack,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .4,
                      ),
                      child: TextField(
                        onChanged: (value) {
                          String msg = value;
                        },
                        controller: TextEditingController(),
                        decoration: InputDecoration.collapsed(
                          hintText: "Message",
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -.8,
                      child: Icon(
                        Icons.attach_file,
                        color: greyblack,
                      ),
                    ),
                    Icon(
                      Icons.currency_rupee,
                      color: greyblack,
                    ),
                    Icon(
                      Icons.camera_alt_rounded,
                      color: greyblack,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: 50,
                width: 50,
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: KgreenColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//  Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//               height: 50,
//               width: MediaQuery.of(context).size.width,
//               child: Row(children: [
//                 Icon(
//                   Icons.emoji_emotions,
//                   color: Colors.white,
//                 ),
//                 TextField(),
//               ]),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             // Container(
//             //   child: Icon(Icons.mic),
//             //   decoration: BoxDecoration(boxShadow: [
//             //     BoxShadow(
//             //       color: Color.fromARGB(255, 9, 9, 9).withOpacity(0.2),
//             //       spreadRadius: 3,
//             //       blurRadius: 3,
//             //       offset: Offset(1, 1),
//             //     )
//             //   ]),
//             // )
//           ],
//         ),
