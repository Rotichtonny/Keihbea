import 'package:flutter/material.dart';
import 'package:Keihbea/login.dart';
import 'package:Keihbea/sign_in.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Hexcolor('#6C63FF'),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrl,
                  ),
                  radius: 50,
                  backgroundColor: Colors.transparent,
                ),
                accountName: Text(
                  name,
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  email,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal),
                ),
              ),
              ListTile(
                leading: Icon(Icons.playlist_add),
                title: Text(
                  "Playlist",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.record_voice_over),
                title: Text(
                  "My Podcasts",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text(
                  "My Drafts",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.file_download),
                title: Text(
                  "Downloads",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "FAQ",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text(
                  "Send Feedback",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text(
                  "Please rate us",
                  style: TextStyle(color: Colors.black54),
                ),
                onTap: () {},
              ),
              Divider(),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: RaisedButton(
                  onPressed: () {
                    signOutGoogle();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }), ModalRoute.withName('/'));
                  },
                  color: Hexcolor('#6C63FF'),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign Out',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.mic_none),
        backgroundColor: Hexcolor('#6C63FF'),
      ),
    );
  }
}
