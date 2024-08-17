import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_cloud_video_call/constants.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    String userId = 'user_${Random().nextInt(1000)}';
    String userName = 'user_${Random().nextInt(100)}';
    return ZegoUIKitPrebuiltCall(
      appID: Constants
          .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: Constants
          .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userId,
      userName: userName,
      callID: callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
