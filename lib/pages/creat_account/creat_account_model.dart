import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'creat_account_widget.dart' show CreatAccountWidget;
import 'package:flutter/material.dart';

class CreatAccountModel extends FlutterFlowModel<CreatAccountWidget> {
  // State fields for stateful widgets in this page.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;

  FocusNode? userNameFocusNode;
  TextEditingController? userNameTextController;
  String? Function(BuildContext, String?)? userNameTextControllerValidator;

  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  FocusNode? dateOfBirthFocusNode;
  TextEditingController? dateOfBirthTextController;
  String? Function(BuildContext, String?)? dateOfBirthTextControllerValidator;

  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmTextControllerValidator;

  /// Firebase Authentication logic for creating an account
  Future<String?> createAccount() async {
    try {
      // Debugging: Log the initial form values
      print("Creating account with email: ${emailAddressTextController?.text.trim()}");

      // Validate password and confirm password match
      if (passwordTextController?.text != passwordConfirmTextController?.text) {
        print("Password and Confirm Password do not match.");
        return 'Passwords do not match.';
      }

      // Firebase Authentication Sign-Up
      print("Attempting to create user...");
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddressTextController?.text.trim() ?? '',
        password: passwordTextController?.text.trim() ?? '',
      );

      // Debugging: Check if userCredential contains a user
      if (userCredential.user != null) {
        print("User created successfully with UID: ${userCredential.user!.uid}");

        // User created successfully, now add extra data to Firestore
        String userId = userCredential.user!.uid;

        // Create a user document in Firestore with additional information
        print("Saving user data to Firestore...");
        await FirebaseFirestore.instance.collection('users').doc(userId).set({
          'name': nameTextController?.text.trim(),
          'username': userNameTextController?.text.trim(),
          'email': emailAddressTextController?.text.trim(),
          'dateOfBirth': dateOfBirthTextController?.text.trim(),
          'createdAt': Timestamp.now(),
        });

        print("User data successfully saved to Firestore.");
        return null; // Account created and data added to Firestore
      } else {
        print("User creation failed: UserCredential is null.");
        return 'Failed to create account. Please try again.';
      }
    } catch (e) {
      print('Firebase Error: $e');  // Debugging the error
      return 'An error occurred: ${e.toString()}'; // Return error message
    }
  }

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmVisibility = false;
    // Debugging: Initialize form values and print debug info
    print("Account creation page initialized.");
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    userNameFocusNode?.dispose();
    userNameTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    dateOfBirthFocusNode?.dispose();
    dateOfBirthTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    // Debugging: Log disposal of resources
    print("Disposed of all resources for account creation page.");
  }
}
