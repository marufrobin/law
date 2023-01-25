import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPageEnglish extends StatelessWidget {
  SignUpPageEnglish({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0, title: buildAppBar(),
          // leading: buildAppBar(),
        ),
        body: Container(
          margin: const EdgeInsets.all(18),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w700,
                    fontFamily: "timesNewRoman",
                  ),
                ),
                Text(
                  "Wellcome!",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffF1F1F1),
                      borderRadius: BorderRadius.circular(16)),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        fillColor: Colors.grey,
                        hintText: "Email Address",
                        hintStyle: googleInterStyle(
                            fntClr: Color(0xff9A9A9D), fntSiz: 16),
                        icon: Stack(children: [
                          Image.asset("images/bgForEmail.png"),
                          Positioned(
                              left: 19,
                              top: 22,
                              child: Image.asset(
                                "images/emailIcon.png",
                                height: 16,
                                width: 20,
                              ))
                        ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextStyle googleInterStyle({Color? fntClr, double? fntSiz}) {
    return GoogleFonts.inter(
      color: fntClr,
      fontSize: fntSiz,
      fontWeight: FontWeight.w400,
    );
  }

  // Appbar for back button and "Back" text
  Row buildAppBar() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          "Back",
          style: GoogleFonts.inter(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
