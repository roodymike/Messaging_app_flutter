import 'package:flutter/material.dart';
import 'package:message_me/models/chat_message_model.dart';

class ChatWindow extends StatefulWidget {
  ChatWindow({Key key}) : super(key: key);

  @override
  _ChatWindowState createState() => _ChatWindowState();
}

void sent_message() {
  print('mesage sent requested');
}

class _ChatWindowState extends State<ChatWindow> {
  List<ChatItemModel> chatItems = ChatItemModel.list;
  var currentuser = 'Admin';
  final GlobalKey _messagekey = GlobalKey();
  var autocorrect_enabled = true;

  Container _buildInput() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autocorrect: autocorrect_enabled ? true : false,
              key: _messagekey,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
                border: InputBorder.none,
                hintText: 'Type Something....',
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.send), onPressed: sent_message)
        ],
      ),
    );
  }

  _isUsersFirstMessage(List<ChatItemModel> chatItems, int index) {
    return (chatItems[index].sender !=
            chatItems[index - 1 < 0 ? 0 : index - 1].sender) ||
        index == 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Public Chat Room',
              style:
                  TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w800),
            ),
            GestureDetector(
                onTap: () {
                  print('Logout Button pressed!');
                },
                child: Icon(Icons.logout))
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: chatItems.length,
        reverse: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            child: Row(
              mainAxisAlignment: chatItems[index].sender == currentuser
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: <Widget>[
                _isUsersFirstMessage(chatItems, index) &&
                        chatItems[index].sender == currentuser
                    ? Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage("assets/images/clock.png"),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      )
                    : Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: ExactAssetImage("assets/images/clock.png"),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      ),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .7),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  margin: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0),
                          bottomLeft: _isUsersFirstMessage(chatItems, index)
                              ? Radius.circular(0)
                              : Radius.circular(10)),
                      color: chatItems[index].sender == currentuser
                          ? Colors.blue
                          : Colors.grey.shade200),
                  child: Text(
                    "${chatItems[index].message}",
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: _buildInput(),
    );
  }
}
