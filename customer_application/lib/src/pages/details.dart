import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../generated/l10n.dart';
import '../controllers/market_controller.dart';
import '../elements/CircularLoadingWidget.dart';
import '../elements/DrawerWidget.dart';
import '../elements/PermissionDeniedWidget.dart';
import '../models/conversation.dart';
import '../models/market.dart';
import '../models/route_argument.dart';
import '../repository/user_repository.dart';
import 'chat.dart';
import 'map.dart';
import 'market.dart';
import 'menu_list.dart';

// ignore: must_be_immutable
class DetailsWidget extends StatefulWidget {
  RouteArgument routeArgument;
  dynamic currentTab;
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget currentPage;

  DetailsWidget({
    Key key,
    this.currentTab,
  }) {
    if (currentTab != null) {
      if (currentTab is RouteArgument) {
        routeArgument = currentTab;
        currentTab = int.parse(currentTab.id);
      }
    } else {
      currentTab = 0;
    }
  }

  @override
  _DetailsWidgetState createState() {
    return _DetailsWidgetState();
  }
}

class _DetailsWidgetState extends StateMVC<DetailsWidget> {
  MarketController _con;

  _DetailsWidgetState() : super(MarketController()) {
    _con = controller;
  }

  initState() {
    _selectTab(widget.currentTab);
    super.initState();
  }

  @override
  void didUpdateWidget(DetailsWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          _con.listenForMarket(id: widget.routeArgument.param).then((value) {
            setState(() {
              _con.market = value as Market;
              print(_con.market.toMap());
              widget.currentPage = MarketWidget(parentScaffoldKey: widget.scaffoldKey, routeArgument: RouteArgument(param: _con.market));
            });
          });
          break;
        case 1:
          if (currentUser.value.apiToken == null) {
            widget.currentPage = PermissionDeniedWidget();
          } else {
            Conversation _conversation = new Conversation(
                _con.market?.users?.map((e) {
                  e.image = _con.market.image;
                  return e;
                })?.toList(),
                name: _con.market.name);
            widget.currentPage = ChatWidget(parentScaffoldKey: widget.scaffoldKey, routeArgument: RouteArgument(id: _con.market.id, param: _conversation));
          }
          break;
        case 2:
          widget.currentPage = MapWidget(parentScaffoldKey: widget.scaffoldKey, routeArgument: RouteArgument(param: _con.market));
          break;
        case 3:
          widget.currentPage = MenuWidget(parentScaffoldKey: widget.scaffoldKey, routeArgument: RouteArgument(param: _con.market));
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: widget.scaffoldKey,
        drawer: DrawerWidget(),
        bottomNavigationBar: Container(
          height: 66,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [BoxShadow(color: Theme.of(context).hintColor.withOpacity(0.10), offset: Offset(0, -4), blurRadius: 10)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.store_outlined,
                  size: widget.currentTab == 0 ? 28 : 24,
                  color: widget.currentTab == 0 ? Theme.of(context).accentColor : Theme.of(context).focusColor,
                ),
                onPressed: () {
                  this._selectTab(0);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.chat_outlined,
                  size: widget.currentTab == 1 ? 28 : 24,
                  color: widget.currentTab == 1 ? Theme.of(context).accentColor : Theme.of(context).focusColor,
                ),
                onPressed: () {
                  this._selectTab(1);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.directions_outlined,
                  size: widget.currentTab == 2 ? 28 : 24,
                  color: widget.currentTab == 2 ? Theme.of(context).accentColor : Theme.of(context).focusColor,
                ),
                onPressed: () {
                  this._selectTab(2);
                },
              ),
              MaterialButton(
                elevation: 0,
                onPressed: () {
                  this._selectTab(3);
                },
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: StadiumBorder(),
                color: Theme.of(context).accentColor,
                child: Wrap(
                  spacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Icon(Icons.shopping_basket_outlined, color: Theme.of(context).primaryColor),
                    Text(
                      S.of(context).shopping,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: widget.currentPage ?? CircularLoadingWidget(height: 400));
  }
}
