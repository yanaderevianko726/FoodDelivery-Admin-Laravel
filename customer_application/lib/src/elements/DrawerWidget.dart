import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../controllers/profile_controller.dart';
import '../repository/settings_repository.dart';
import '../repository/user_repository.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends StateMVC<DrawerWidget> {
  _DrawerWidgetState() : super(ProfileController()) {}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              currentUser.value.apiToken != null ? Navigator.of(context).pushNamed('/Profile') : Navigator.of(context).pushNamed('/Login');
            },
            child: currentUser.value.apiToken != null
                ? UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).hintColor.withOpacity(0.1),
                    ),
                    accountName: Text(
                      currentUser.value.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    accountEmail: Text(
                      currentUser.value.email,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    currentAccountPicture: Stack(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(80)),
                            child: CachedNetworkImage(
                              height: 80,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              imageUrl: currentUser.value.image.thumb,
                              placeholder: (context, url) => Image.asset(
                                'assets/img/loading.gif',
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 80,
                              ),
                              errorWidget: (context, url, error) => Icon(Icons.error_outline),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: currentUser.value.verifiedPhone ?? false
                              ? Icon(
                                  Icons.check_circle,
                                  color: Theme.of(context).accentColor,
                                  size: 24,
                                )
                              : SizedBox(),
                        )
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).hintColor.withOpacity(0.1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.of(context).welcome, style: Theme.of(context).textTheme.headline4.merge(TextStyle(color: Theme.of(context).accentColor))),
                        SizedBox(height: 5),
                        Text(S.of(context).loginAccountOrCreateNewOneForFree, style: Theme.of(context).textTheme.bodyText2),
                        SizedBox(height: 15),
                        Wrap(
                          spacing: 10,
                          children: <Widget>[
                            MaterialButton(
                              elevation: 0,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/Login');
                              },
                              color: Theme.of(context).accentColor,
                              height: 40,
                              child: Wrap(
                                runAlignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 9,
                                children: [
                                  Icon(Icons.exit_to_app_outlined, color: Theme.of(context).primaryColor, size: 24),
                                  Text(
                                    S.of(context).login,
                                    style: Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: Theme.of(context).primaryColor)),
                                  ),
                                ],
                              ),
                              shape: StadiumBorder(),
                            ),
                            MaterialButton(
                              elevation: 0,
                              color: Theme.of(context).focusColor.withOpacity(0.2),
                              height: 40,
                              onPressed: () {
                                Navigator.of(context).pushNamed('/SignUp');
                              },
                              child: Wrap(
                                runAlignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: 9,
                                children: [
                                  Icon(Icons.person_add_outlined, color: Theme.of(context).hintColor, size: 24),
                                  Text(
                                    S.of(context).register,
                                    style: Theme.of(context).textTheme.subtitle2.merge(TextStyle(color: Theme.of(context).hintColor)),
                                  ),
                                ],
                              ),
                              shape: StadiumBorder(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Pages', arguments: 2);
            },
            leading: Icon(
              Icons.home_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).home,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Pages', arguments: 0);
            },
            leading: Icon(
              Icons.notifications_none_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).notifications,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Pages', arguments: 3);
            },
            leading: Icon(
              Icons.local_mall_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).my_orders,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Pages', arguments: 4);
            },
            leading: Icon(
              Icons.favorite_outline,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).favorite_products,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Pages', arguments: 4);
            },
            leading: Icon(
              Icons.chat_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).messages,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            dense: true,
            title: Text(
              S.of(context).application_preferences,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            trailing: Icon(
              Icons.remove,
              color: Theme.of(context).focusColor.withOpacity(0.3),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Help');
            },
            leading: Icon(
              Icons.help_outline,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).help__support,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              if (currentUser.value.apiToken != null) {
                Navigator.of(context).pushNamed('/Settings');
              } else {
                Navigator.of(context).pushReplacementNamed('/Login');
              }
            },
            leading: Icon(
              Icons.settings_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).settings,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pushNamed('/Languages');
            },
            leading: Icon(
              Icons.translate_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              S.of(context).languages,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              if (Theme.of(context).brightness == Brightness.dark) {
                setBrightness(Brightness.light);
                setting.value.brightness.value = Brightness.light;
              } else {
                setting.value.brightness.value = Brightness.dark;
                setBrightness(Brightness.dark);
              }
              setting.notifyListeners();
            },
            leading: Icon(
              Icons.brightness_6_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              Theme.of(context).brightness == Brightness.dark ? S.of(context).light_mode : S.of(context).dark_mode,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          ListTile(
            onTap: () {
              if (currentUser.value.apiToken != null) {
                logout().then((value) {
                  Navigator.of(context).pushNamedAndRemoveUntil('/Pages', (Route<dynamic> route) => false, arguments: 2);
                });
              } else {
                Navigator.of(context).pushNamed('/Login');
              }
            },
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: Theme.of(context).focusColor.withOpacity(1),
            ),
            title: Text(
              currentUser.value.apiToken != null ? S.of(context).log_out : S.of(context).login,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          currentUser.value.apiToken == null
              ? ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed('/SignUp');
                  },
                  leading: Icon(
                    Icons.person_add_outlined,
                    color: Theme.of(context).focusColor.withOpacity(1),
                  ),
                  title: Text(
                    S.of(context).register,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              : SizedBox(height: 0),
          setting.value.enableVersion
              ? ListTile(
                  dense: true,
                  title: Text(
                    S.of(context).version + " " + setting.value.appVersion,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  trailing: Icon(
                    Icons.remove,
                    color: Theme.of(context).focusColor.withOpacity(0.3),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
