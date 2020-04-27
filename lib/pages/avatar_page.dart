import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child:
          FadeInImage(
              placeholder: AssetImage('lib/assets/loading.gif'),
              image: NetworkImage('https://lh3.googleusercontent.com/proxy/TKBvO3WBzfKHpQJ6xJ2unbr_8Dm1MEGpGhY5qyoahTycKijIb2pC_Vi-_LDaTK_Pbodh_iJWSem2Ox0RM-8l8wnn0w0o-O3JtCBOT2QZzFSCsu11N64')
          ),
      ),
    );
  }
}