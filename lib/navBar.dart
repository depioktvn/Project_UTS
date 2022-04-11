import 'package:flutter/material.dart';

class DrawerNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _drawerHeader(),
          _drawerItem(
              icon: Icons.inbox,
              text: 'Inbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Inbox');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Outbox');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.new_releases,
              text: 'Spam',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Spam');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.question_answer,
              text: 'Forums',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Forums');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
          _drawerItem(
              icon: Icons.announcement,
              text: 'Promos',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pushNamed(context, '/Promos');
                //Navigator.pop(context);
              }),
          Divider(
            height: 10,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/image/depi.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('Devi Oktaviani'),
    accountEmail: Text('depioktvn@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
