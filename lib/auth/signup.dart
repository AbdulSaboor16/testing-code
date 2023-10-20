// import 'package:colorful_safe_area/colorful_safe_area.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:test/auth/dynamicColor.dart';
// import 'package:test/components/continuewithApplebtn.dart';
// import 'package:test/components/continuewithGooglebtn.dart';
// import 'package:test/components/customtextfield.dart';
// import 'package:test/components/textStyling.dart';
// import 'package:test/components/textfont_constant.dart';
// import 'package:test/controller/authController.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // AuthController controller = Get.find();
//     // TextEditingController emailControler =
//     //     TextEditingController(text: "johdn@example.com");
//     // TextEditingController passControler =
//     //     TextEditingController(text: "password123");
//     final UserController userController = Get.put(UserController());
//     return ColorfulSafeArea(
//       color: DynamicColor.blueColor,
//       child: Scaffold(
//         backgroundColor: DynamicColor.blueColor,
//         body: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 21),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   height: 21,
//                 ),

//                 Row(
//                   children: [
//                     const SizedBox(
//                       height: 29,
//                     ),
//                     SizedBox(
//                       height: 38,
//                       width: 100,
//                       child: Text(
//                         "Sign Up",
//                         style: hkGrotestStyle(fontSize: 28, latterSpacing: 0),
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 SizedBox(
//                     height: 50,
//                     width: Get.width * .9,
//                     child: CustomTextField(
//                       hintText: 'Email',
//                       labelText: "Enter Email",
//                       // controller: emailControler,
//                     )),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 SizedBox(
//                     height: 50,
//                     width: Get.width * .9,
//                     child: CustomTextField(
//                       hintText: 'Password',
//                       labelText: "Enter Password",
//                       // controller: passControler,
//                     )),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 Obx(
//                   () => userController.isLoading.value
//                       ? CircularProgressIndicator()
//                       : ElevatedButton(
//                           onPressed: () {
//                             // Call the loginUser method when the button is pressed
//                             userController.createUser();
//                           },
//                           child: Text('Login'),
//                         ),
//                 )
//                 // if (controller.isloading.value) {
//                 //   return const Center(
//                 //     child: CircularProgressIndicator(
//                 //       color: DynamicColor.darkyellColor,
//                 //     ),
//                 //   );
//                 // }

//                 // onTap: () {
//                 //   if (controller.isChecked.value) {
//                 //     // Checkbox is checked, allow signup
//                 //     // controller.signup(
//                 //     //     emailControler.text, passControler.text);
//                 //   } else {
//                 //     // Show an error message or toast indicating that the user must agree to the terms
//                 //     // You can use a snackbar, dialog, or any other suitable way to display the error message.
//                 //     // For example, you can use Get.snackbar for a snackbar message.
//                 //     Get.snackbar('Error',
//                 //         'Please agree to the Terms of Service and Privacy Policy.');
//                 //   }
//                 // },
//                 // GestureDetector(
//                 //   onTap: () {
//                 //     controller.loginUser(
//                 //         emailControler.text, passControler.text);
//                 //   },
//                 //   child: Container(
//                 //     height: 50,
//                 //     width: Get.width * .9,
//                 //     decoration: BoxDecoration(
//                 //         borderRadius: BorderRadius.circular(5),
//                 //         gradient: const LinearGradient(
//                 //           colors: [
//                 //             DynamicColor.lightyellColor,
//                 //             DynamicColor.darkyellColor,
//                 //           ],
//                 //           begin: Alignment.centerLeft,
//                 //           end: Alignment.centerRight,
//                 //         )),
//                 //     child: Center(
//                 //       child: Text("Continue",
//                 //           textAlign: TextAlign.center,
//                 //           style: GoogleFonts.poppins(
//                 //               textStyle: TextFontConstant.logintextbutton)),
//                 //     ),
//                 //   ),
//                 // ),

//                 // const SizedBox(
//                 //   height: 40,
//                 // ),
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //   crossAxisAlignment: CrossAxisAlignment.center,
//                 //   children: [
//                 //     Container(
//                 //       height: 1,
//                 //       width: Get.width * .4,
//                 //       color: DynamicColor.whiteColor,
//                 //     ),
//                 //     const Text(
//                 //       'or',
//                 //       style: TextStyle(
//                 //           color: DynamicColor.whiteColor, fontSize: 16),
//                 //     ),
//                 //     Container(
//                 //       height: 1,
//                 //       width: Get.width * .4,
//                 //       color: DynamicColor.whiteColor,
//                 //     )
//                 //   ],
//                 // ),
//                 // const SizedBox(
//                 //   height: 40,
//                 // ),
//                 // const ContinuewithGoogleBtn(),
//                 // const SizedBox(
//                 //   height: 25,
//                 // ),
//                 // const ContinuewithAppleBtn(),
//                 // const SizedBox(
//                 //   height: 20,
//                 // ),
//                 // Row(
//                 //   children: [
//                 //     // Obx(
//                 //     //   () => Checkbox(
//                 //     //     side: const BorderSide(
//                 //     //         width: 2,
//                 //     //         color: Color.fromARGB(255, 255, 255, 255)),
//                 //     //     checkColor: DynamicColor.whiteColor,
//                 //     //     activeColor: DynamicColor.greyColor,
//                 //     //     value: controller.isChecked.value,
//                 //     //     onChanged: (value) => {
//                 //     //       controller.isChecked.toggle()
//                 //     //       // print(controller.isChecked.value),
//                 //     //     },
//                 //     //   ),
//                 //     // ),
//                 //     Flexible(
//                 //       child: Text(
//                 //         'Yes, I understand and agree to the Terms of Service and Privacy Policy .',
//                 //         style: GoogleFonts.poppins(
//                 //             fontSize: 14, color: DynamicColor.whiteColor),
//                 //       ),
//                 //     )
//                 //   ],
//                 // ),
//                 // const SizedBox(
//                 //   height: 20,
//                 // ),
//                 // Padding(
//                 //   padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                 //   child: Row(
//                 //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 //     children: [
//                 //       Container(
//                 //         height: 1,
//                 //         width: Get.width * .2,
//                 //         color: DynamicColor.whiteColor,
//                 //       ),
//                 //       SizedBox(
//                 //         height: 35,
//                 //         width: Get.width * .4,
//                 //         child: Center(
//                 //             child: FittedBox(
//                 //           child: Text("Already have an account?",
//                 //               style: GoogleFonts.poppins(
//                 //                   textStyle: TextFontConstant.logintextbutton)),
//                 //         )),
//                 //       ),
//                 //       Container(
//                 //         height: 1,
//                 //         width: Get.width * .2,
//                 //         color: DynamicColor.whiteColor,
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
//                 // const SizedBox(
//                 //   height: 20,
//                 // ),
//                 // SizedBox(
//                 //     height: 44,
//                 //     width: double.infinity,
//                 //     child: ElevatedButton(
//                 //       onPressed: () {
//                 //         Get.offAllNamed('/login');
//                 //       },
//                 //       style: ElevatedButton.styleFrom(
//                 //         backgroundColor: DynamicColor.blueColor,
//                 //         shape: RoundedRectangleBorder(
//                 //             borderRadius: BorderRadius.circular(5.0)),
//                 //         side: const BorderSide(
//                 //             color: DynamicColor.whiteColor, width: 1),
//                 //       ),
//                 //       child: Text(
//                 //         "Sign Up",
//                 //         style: GoogleFonts.poppins(
//                 //             textStyle: TextFontConstant.logintextbutton),
//                 //       ),
//                 //     )),
//                 // const SizedBox(
//                 //   height: 20,
//                 // )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String _textFieldValue = '';

    // Validator function
    String? _validateTextField(String value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      // You can add more complex validation logic here if needed
      return null;
    }

    TextEditingController emailControler = TextEditingController();
    TextEditingController passControler = TextEditingController();

    void signup(String email, password) async {
      try {
        final response = await post(Uri.parse("https://fakestoreapi.com/users"),
            body: {"email": email, "password": password});
        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          print("account created success");
          Get.toNamed("/login");
        } else {
          print("failed");
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: emailControler,
            decoration: InputDecoration(labelText: 'Enter username'),
            validator: (e) {
              if (e!.isEmpty) {
                return 'Please enter some text';
              }
              // You can add more complex validation logic here if needed
              return null;
            },
            onSaved: (String? value) {
              // Do something with the value
              _textFieldValue = value!;
            },
          ),
          TextFormField(
            controller: passControler,
            decoration: InputDecoration(labelText: 'Enter password'),
            validator: (e) {
              if (e!.isEmpty) {
                return 'Please enter some text';
              }
              // You can add more complex validation logic here if needed
              return null;
            },
            onSaved: (String? value) {
              // Do something with the value
              _textFieldValue = value!;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, save the input value
                  _formKey.currentState!.save();
                  signup(emailControler.text.toString(),
                      passControler.text.toString());
                }
              },
              child: Text("sign")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/login");
              },
              child: Text("move login page"))
        ]),
      ),
    );
  }
}
