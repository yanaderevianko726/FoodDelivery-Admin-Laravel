import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../generated/l10n.dart';
import '../helpers/app_config.dart' as config;
import '../models/user.dart' as userModel;
import '../repository/user_repository.dart';
import 'BlockButtonWidget.dart';

class MobileVerificationBottomSheetWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final userModel.User user;

  MobileVerificationBottomSheetWidget({Key key, this.scaffoldKey, this.user}) : super(key: key);

  @override
  _MobileVerificationBottomSheetWidgetState createState() => _MobileVerificationBottomSheetWidgetState();
}

class _MobileVerificationBottomSheetWidgetState extends State<MobileVerificationBottomSheetWidget> {
  String smsSent;
  String errorMessage;

  @override
  void initState() {
    verifyPhone();
    super.initState();
  }

  verifyPhone() async {
    currentUser.value.verificationId = '';
    smsSent = '';
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {};
    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResent]) {
      currentUser.value.verificationId = verId;
    };
    final PhoneVerificationCompleted _verifiedSuccess = (AuthCredential auth) {};
    final PhoneVerificationFailed _verifyFailed = (FirebaseAuthException e) {};
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: widget.user.phone,
      timeout: const Duration(seconds: 5),
      verificationCompleted: _verifiedSuccess,
      verificationFailed: _verifyFailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(color: Theme.of(context).focusColor.withOpacity(0.4), blurRadius: 30, offset: Offset(0, -30)),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ListView(
              padding: EdgeInsets.only(top: 40, bottom: 15, left: 20, right: 20),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      S.of(context).verifyPhoneNumber,
                      style: Theme.of(context).textTheme.headline5,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    errorMessage == null
                        ? Text(
                            S.of(context).weAreSendingOtpToValidateYourMobileNumberHang,
                            style: Theme.of(context).textTheme.bodyText2,
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            errorMessage ?? '',
                            style: Theme.of(context).textTheme.bodyText2.merge(TextStyle(color: Colors.redAccent)),
                            textAlign: TextAlign.center,
                          ),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  style: Theme.of(context).textTheme.headline1.merge(TextStyle(letterSpacing: 15)),
                  textAlign: TextAlign.center,
                  decoration: new InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2)),
                    ),
                    focusedBorder: new UnderlineInputBorder(
                      borderSide: new BorderSide(
                        color: Theme.of(context).focusColor.withOpacity(0.3),
                      ),
                    ),
                    hintText: '------',
                  ),
                  onChanged: (value) {
                    this.smsSent = value;
                  },
                ),
                SizedBox(height: 15),
                Text(
                  S.of(context).smsHasBeenSentTo + widget.user.phone,
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80),
                BlockButtonWidget(
                  onPressed: () async {
                    User user = FirebaseAuth.instance.currentUser;
                    print(user.toString());
                    print(currentUser.value.verificationId);
                    final AuthCredential credential = PhoneAuthProvider.credential(verificationId: currentUser.value.verificationId, smsCode: smsSent);

                    await FirebaseAuth.instance.signInWithCredential(credential).then((user) {
                      currentUser.value.verifiedPhone = true;
                      widget.user.verifiedPhone = true;
                      Navigator.of(widget.scaffoldKey.currentContext).pop();
                    }).catchError((e) {
                      setState(() {
                        errorMessage = e.toString().split('\]').last;
                      });
                      print(e.toString());
                    });
                  },
                  color: Theme.of(context).accentColor,
                  text: Text(S.of(context).verify.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: Theme.of(context).primaryColor))),
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: config.App(context).appWidth(42)),
            decoration: BoxDecoration(
              color: Theme.of(context).focusColor.withOpacity(0.05),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Container(
              width: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).focusColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
