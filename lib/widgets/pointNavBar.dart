import 'package:flutter/material.dart';
import 'package:nust/widgets/textWidget.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class PointNavBar extends StatefulWidget {
  const PointNavBar({super.key});

  @override
  State<PointNavBar> createState() => _PointNavBarState();
}

class _PointNavBarState extends State<PointNavBar> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: TextWidget(
              text: 'Billy Mafenyeho',
              color: Colors.white,
              textSize: 15,
              isTitle: true,
            ),
            accountEmail: TextWidget(
              text: 'Computer Science',
              color: Colors.white,
              textSize: 15,
              isTitle: true,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: ClipOval(
                  child: Image.asset(
                'assets/images/billy.png',
                //width: 70,
                //height: 40,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              )),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/beautiful.jpeg'),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          _listTiles(
            title: 'Registration',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Application',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Residence Registration',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Student Admin',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Student Enquiry',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Request for Information',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          _listTiles(
            title: 'Student Finance',
            icon: IconlyLight.arrowUpCircle,
            color: Colors.blue,
            onPressed: () {},
          ),
          const Divider(),
          _listTiles(
            title: 'Logout',
            icon: IconlyLight.logout,
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

Widget _listTiles({
  required String title,
  String? subtitle,
  required IconData icon,
  required Function onPressed,
  required Color color,
}) {
  return ListTile(
    title: TextWidget(text: title, color: color, textSize: 15),
    subtitle: TextWidget(text: subtitle ?? "", color: color, textSize: 18),
    leading: Icon(icon),
    onTap: () {
      onPressed();
    },
  );
}
