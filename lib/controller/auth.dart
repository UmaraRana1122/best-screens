import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:task1/models/user_model.dart';
import 'package:task1/services/authServices.dart';
import 'package:task1/services/firestoreServices.dart';
import 'package:task1/services/global.dart';

class AuthController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController username = TextEditingController();
  bool termCondition = false;
  bool obscureTextPassword = true;

  suggestName() async {
    if (currentUser.userName == "") {
      username.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(username.text);

      if (check) {
        bool check = await Get.find<FirestoreServices>()
            .checkUserNameExit(username.text);
        if (check) {
          suggestName();
        }
      }
      currentUser.userName = username.text;
    } else {
      username.text =
          (currentUser.email.split('@')[0]).replaceAll(RegExp(r"\d"), "");
      bool check =
          await Get.find<FirestoreServices>().checkUserNameExit(username.text);
      if (check) {
        suggestName();
      }
      currentUser.userName = username.text;
    }
    update();
  }

  updateUser() async {
    await Get.find<FirestoreServices>().updateUser(currentUser);
  }

  changeEmail() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }

    String message = await Get.find<AuthServices>().changeEmail(email.text);
    if (message == "") {
      currentUser.email = email.text;
      await Get.find<FirestoreServices>().registerUser();

      Get.back();
    } else {
      EasyLoading.showInfo(message);
    }
  }

  loginUser() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }
    if (password.text.isEmpty) {
      EasyLoading.showInfo('Enter Password');
      return;
    }

    EasyLoading.show();
    String str =
        await Get.find<AuthServices>().emailSignIn(email.text, password.text);
    if (str == "") {
      currentUser =
          await Get.put(FirestoreServices()).getUser(currentUser.id) ??
              UserModel();
      await Get.find<FirestoreServices>().updateUser(currentUser);
      EasyLoading.dismiss();
      if (FirebaseAuth.instance.currentUser!.emailVerified) {
        print('login');
      } else {
        print('verify');
      }
    } else {
      EasyLoading.showError(str);
    }
  }

  forgetPassword() async {
    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }

    EasyLoading.show();
    String str = await Get.find<AuthServices>().forgetPassword(email.text);

    if (str == "") {
      EasyLoading.dismiss();
      EasyLoading.showInfo('Check your email\nfor reset password');

      Get.back();
    } else {
      EasyLoading.showError(str);
    }
  }

  registerUser() async {
    EasyLoading.show();

    if (username.text.isEmpty) {
      return;
    }

    if (email.text.isEmpty) {
      EasyLoading.showInfo('Enter Email Address');
      return;
    }

    if (!email.text.isEmail) {
      EasyLoading.showInfo('Enter Valid Email');
      return;
    }

    if (password.text.isEmpty) {
      EasyLoading.showInfo('Enter Password');
      return;
    }

    if (password.text.length < 6) {
      EasyLoading.showInfo('Your password is weak');
      return;
    }

    if (password.text != cPassword.text) {
      EasyLoading.showInfo('Password doesn\'t match');
      return;
    }

    try {
      if (currentUser.userType == 1) {
        username.text = username.text.replaceAll(' ', '');

        bool check = await Get.find<FirestoreServices>()
            .checkUserNameExit(username.text.toLowerCase());

        if (check) {
          EasyLoading.showInfo('Username is not available');
          return;
        }
        currentUser.userName = username.text;
      } else {
        currentUser.name = username.text;
      }

      currentUser.email = email.text;
      currentUser.initialPassword = password.text;
      currentUser.createDate = DateTime.now();

      String str = await Get.find<AuthServices>().emailSignUp();

      if (str == "") {
        await Get.find<FirestoreServices>().registerUser();

        EasyLoading.dismiss();

        await Get.find<AuthServices>().sendEmailVarification();
      } else {
        EasyLoading.showError(str);
      }
    } catch (_) {}

    EasyLoading.dismiss();
  }

  gmailLogin() async {
    EasyLoading.show();

    bool value = await Get.find<AuthServices>().googleLogin();

    if (value) {
      EasyLoading.dismiss();

      UserModel? user =
          await Get.find<FirestoreServices>().getUser(currentUser.id);

      if (user == null) {
        currentUser.userType = 0;

        await Get.find<FirestoreServices>().registerUser();
      } else {
        currentUser = user;

        await Get.find<FirestoreServices>().updateUser(currentUser);
      }
    } else {
      currentUser = UserModel();

      EasyLoading.showInfo('Error in Login');
    }
  }
}
