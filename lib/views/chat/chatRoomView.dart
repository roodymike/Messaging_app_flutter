//import 'package:flutter/material.dart';
//import 'package:message_me/views/auth/signup_auth.dart';
//
//import 'ChatScreen.dart';
//
//class ChatRoom extends StatefulWidget {
//  ChatRoom({Key key}) : super(key: key);
//
//  @override
//  _ChatRoomState createState() => _ChatRoomState();
//}
//
//class _ChatRoomState extends State<ChatRoom> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white,
//      //appBar: AppBar(
//        //brightness: Brightness.dark,
//        //elevation: 8,
//        //leading: IconButton(
//          //icon: Icon(Icons.menu),
//          //color: Colors.white,
//          //onPressed: () {},
//        //),
//        //title: Text(
//          //'Inbox',
//          //style: TextStyle(
//            //color: Colors.white,
//          //),
//        //),
//        //actions: <Widget>[
//          //IconButton(
//            //icon: Icon(Icons.search),
//            //color: Colors.white,
//            //onPressed: () {},
//          //),
//        //],
//      //),
//      body: ListView.builder(
//        itemCount: 6,
//        itemBuilder: (BuildContext context, int index) {
//          //final Message chat = chats[index];
//          return GestureDetector(
//            onTap: () => Navigator.push(
//              context,
//              MaterialPageRoute(
//                builder: (_) => SignUp(
//                ),
//              ),
//            ),
//            child: Container(
//              padding: EdgeInsets.symmetric(
//                horizontal: 20,
//                vertical: 15,
//              ),
//              child: Row(
//                children: <Widget>[
//                  Container(
//                    padding: EdgeInsets.all(2),
//                    decoration: true
//                        ? BoxDecoration(
//                      borderRadius: BorderRadius.all(Radius.circular(40)),
//                      border: Border.all(
//                        width: 2,
//                        color: Theme.of(context).primaryColor,
//                      ),
//                      // shape: BoxShape.circle,
//                      boxShadow: [
//                        BoxShadow(
//                          color: Colors.grey.withOpacity(0.5),
//                          spreadRadius: 2,
//                          blurRadius: 5,
//                        ),
//                      ],
//                    )
//                        : BoxDecoration(
//                      shape: BoxShape.circle,
//                      boxShadow: [
//                        BoxShadow(
//                          color: Colors.grey.withOpacity(0.5),
//                          spreadRadius: 2,
//                          blurRadius: 5,
//                        ),
//                      ],
//                    ),
//                    child: CircleAvatar(
//                      radius: 35,
//                      //backgroundImage: AssetImage(),
//                    ),
//                  ),
//                  Container(
//                    width: MediaQuery.of(context).size.width * 0.65,
//                    padding: EdgeInsets.only(
//                      left: 20,
//                    ),
//                    child: Column(
//                      children: <Widget>[
//                        Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            Row(
//                              children: <Widget>[
//                                Text(
//                                  "Hello",
//                                  style: TextStyle(
//                                    fontSize: 16,
//                                    fontWeight: FontWeight.bold,
//                                  ),
//                                ),
//                                true
//                                    ? Container(
//                                  margin: const EdgeInsets.only(left: 5),
//                                  width: 7,
//                                  height: 7,
//                                  decoration: BoxDecoration(
//                                    shape: BoxShape.circle,
//                                    color: Theme.of(context).primaryColor,
//                                  ),
//                                )
//                                    : Container(
//                                  child: null,
//                                ),
//                              ],
//                            ),
//                            Text(
//                              "Something",
//                              style: TextStyle(
//                                fontSize: 11,
//                                fontWeight: FontWeight.w300,
//                                color: Colors.black54,
//                              ),
//                            ),
//                          ],
//                        ),
//                        SizedBox(
//                          height: 10,
//                        ),
//                        Container(
//                          alignment: Alignment.topLeft,
//                          child: Text(
//                            "Hellllllllloo",
//                            style: TextStyle(
//                              fontSize: 13,
//                              color: Colors.black54,
//                            ),
//                            overflow: TextOverflow.ellipsis,
//                            maxLines: 2,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          );
//        },
//      ),
//    );
//  }
//}
//