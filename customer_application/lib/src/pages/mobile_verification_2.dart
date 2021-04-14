import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../elements/BlockButtonWidget.dart';
import '../helpers/app_config.dart' as config;
import '../repository/user_repository.dart';

class MobileVerification2 extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  final ValueChanged<void> onVerified;

  MobileVerification2({Key key, this.onVerified}) : super(key: key);

  @override
  _MobileVerification2State createState() => _MobileVerification2State();
}

class _MobileVerification2State extends State<MobileVerification2> {
  String smsSent;

  @override
  Widget build(BuildContext context) {
    final _ac = config.App(context);
    return Scaffold(
      key: widget.scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: _ac.appWidth(100),
              child: Column(
                children: <Widget>[
                  Text(
                    'Verify Your Account',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We are sending OTP to validate your mobile number. Hang on!',
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            TextField(
              style: Theme.of(context).textTheme.headline5,
              textAlign: TextAlign.center,
              decoration: new InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).focusColor.withOpacity(0.2)),
                ),
                focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                    color: Theme.of(context).focusColor.withOpacity(0.5),
                  ),
                ),
                hintText: '000-000',
              ),
              onChanged: (value) {
                this.smsSent = value;
              },
            ),
            SizedBox(height: 15),
            Text(
              'SMS has been sent to +155 4585 555',
              style: Theme.of(context).textTheme.caption,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80),
            new BlockButtonWidget(
              onPressed: () async {
                User user = FirebaseAuth.instance.currentUser;
                print(user.toString());
                if (user != null) {
                  widget.onVerified;
                } else {
                  final AuthCredential credential = PhoneAuthProvider.credential(verificationId: currentUser.value.verificationId, smsCode: smsSent);

                  await FirebaseAuth.instance.signInWithCredential(credential).then((user) {
                    widget.onVerified;
                  }).catchError((e) {
                    ScaffoldMessenger.of(widget.scaffoldKey?.currentContext).showSnackBar(SnackBar(
                      content: Text(e.toString()),
                    ));
                    print(e);
                  });
                }
              },
              color: Theme.of(context).accentColor,
              text: Text(S.of(context).verify.toUpperCase(), style: Theme.of(context).textTheme.headline6.merge(TextStyle(color: Theme.of(context).primaryColor))),
            ),
          ],
        ),
      ),
    );
  }
}
