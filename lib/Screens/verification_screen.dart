import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_2_whatsapp_clone/Kconstants.dart';

class VerificationScreen extends StatelessWidget {
  final phoneNumber;
  final countryCode;

  const VerificationScreen(
      {super.key, required this.phoneNumber, required this.countryCode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verify    +$countryCode $phoneNumber",
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Enter 6 digit OTP Code ,SMS sent to +$countryCode $phoneNumber",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
              SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 30, maxWidth: 105),
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: KgreenColor,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: KgreenColor, width: 2.5)),
                      hintText: "--- --- --- --- --- ---",
                      counterText: "",
                      contentPadding: EdgeInsets.only(bottom: 17),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter 6-digit code",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(KgreenColor),
              ),
              onPressed: () {},
              child: Container(
                child: Text("  Verify  "),
              ))
        ],
      ),
    );
  }
}
