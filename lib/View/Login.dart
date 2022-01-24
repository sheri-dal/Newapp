import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salman/Controller/LoginController.dart';
import 'package:salman/Custom/CustomButton.dart' show CustomButton;
import 'package:salman/Custom/CustomText.dart';
import 'package:salman/Custom/CustomTextField.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Center(
                  child: CustomText(text: "FOOD MUNCH", fontsize: 40),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                    controller: email,
                    hinttext: "ID@gmail.com",
                    labeltext: "Email",
                    validationtext: "Email is Required"),
                const SizedBox(
                  height: 20,
                ),
                Obx(
                  () => CustomTextField(
                    icon: IconButton(
                        onPressed: () {
                          loginController.onChnageGender();
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    Obscure: loginController.obstext.value,
                    controller: password,
                    hinttext: "Password",
                    labeltext: "Password",
                    validationtext: "Please Enter Password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: const CustomText(
                      text: "Login",
                      fontsize: 20,
                    ),
                    cliclButton: () {
                      click();
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  click() {
    if (_formKey.currentState!.validate()) {
      // ignore: avoid_print
      print(email.text);
      // ignore: avoid_print
      print(password.text);
      return "Navigate";
    } else {
      // ignore: avoid_print
      print("Else");
      return Get.snackbar("Error", "Required Param Missing",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
