import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(4),
          child: Card(
            elevation: 8,
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://picsum.photos/70",
                    width: 70,
                    height: 70,
                  ),
                  Container(padding: EdgeInsets.only(right: 8),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Arkar Min Tun',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          ButtonTheme(
                            minWidth: 16,
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Accept"),
                              color: Colors.blueAccent,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          ),
                          Container(padding: EdgeInsets.only(right: 8),),
                          ButtonTheme(
                            minWidth: 16,
                            height: 30,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text("Decline"),
                              color: Colors.blueGrey,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16)
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}