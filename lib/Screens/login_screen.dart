import 'package:flutter/material.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Enter your phone number"),
          centerTitle: true,
          actions: [
            Icon(
              Icons.more_vert_outlined,
              size: 25,
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
          child: Column(
            children: [
              Text(
                "WhatsApp will send an SMS message to verify your phone number.",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("+"),
                      SizedBox(
                        width: 5,
                      ),
                      ConstrainedBox(
                          constraints:
                              BoxConstraints(maxHeight: 30, maxWidth: 40),
                          child: TextField(
                            maxLength: 2,
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: KgreenColor)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: KgreenColor, width: 2.5)),
                                contentPadding:
                                    EdgeInsets.only(top: 0.0, bottom: 13.0),
                                hintText: "91",
                                counterText: ""),
                            keyboardType: TextInputType.phone,
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 30, maxWidth: 150),
                      child: TextField(
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: KgreenColor,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: KgreenColor, width: 2.5)),
                          hintText: "9617474952",
                          counterText: "",
                          contentPadding: EdgeInsets.only(bottom: 13),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text("Carrier SMS changes may apply "),
              Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(KgreenColor),
                  ),
                  onPressed: () {},
                  child: Container(
                    child: Text("  NEXT  "),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
