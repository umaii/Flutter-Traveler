import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

AppBar header(context) {
  return AppBar(
    centerTitle: true,
    title: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
        child: Container(
          height: 40.0,
          width: MediaQuery.of(context).size.width - 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Icon(
                  Feather.search,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10.0),
              Flexible(
                child: Theme(
                  data: ThemeData(primaryColor: Colors.black),
                  child: TextField(
                    cursorColor: Theme.of(context).accentColor,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search for a trip',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
