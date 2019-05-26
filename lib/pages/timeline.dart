import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return new SinglePost();
      },
    );
  }
}

class SinglePost extends StatefulWidget {
  const SinglePost({
    Key key,
  }) : super(key: key);

  @override
  _SinglePostState createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  int numbOfLove = 0;
  int numOfLike = 0;
  int numOfComments = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Card(
        elevation: 8.0,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: <Widget>[
                    FlutterLogo(
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Arkar Min Tun",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                            ),
                          ),
                          Text(
                            "12 December, 2018",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                alignment: Alignment.centerLeft,
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  textAlign: TextAlign.left,
                ),
              ),
              
              Image.network(
                "https://picsum.photos/200",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width,
                fit: BoxFit.fitWidth,
              ),

              Padding(
                padding: EdgeInsets.only(left: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          numbOfLove = numbOfLove + 1;
                        });
                      },
                      color: Colors.white,
                      icon: Icon(Icons.favorite, color: Colors.redAccent,),
                      label: Text(numbOfLove.toString()),
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          numOfLike = numOfLike + 1;
                        });
                      },
                      color: Colors.white,
                      icon: Icon(Icons.thumb_up, color: Colors.blueAccent,),
                      label: Text(numOfLike.toString()),
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        setState(() {
                          numOfComments = numOfComments + 1;
                        });
                      },
                      color: Colors.white,
                      icon: Icon(Icons.message, color: Colors.green,),
                      label: Text(numOfComments.toString()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}