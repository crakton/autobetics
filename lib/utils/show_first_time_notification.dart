import 'package:autobetics/apis/auth_api.dart';
import 'package:autobetics/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:autobetics/models/app_model.dart';

void showFirstTimeNotification(BuildContext context) {
  final appModel = Provider.of<AppModel>(context);

  WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    if (!appModel.verifiedEmail) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome to our app!',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Please verify your email to enjoy all features.',
                  style: TextStyle(fontSize: 16.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle the action when the user taps the "Verify Email" button.
                    final accountAPI = AuthAPI(account: autobetAccount);
                    accountAPI.verifyEmail().whenComplete(() {
                      Navigator.of(context).pop(); // Close the bottom sheet.
                    });
                  },
                  child: const Text('Verify Email'),
                ),
              ],
            ),
          );
        },
      );
    }
  });
}