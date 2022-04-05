import 'package:flutter/material.dart';
import 'package:my_app/LogIssue.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF083454),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 100.0,
                margin: const EdgeInsets.only(left:18.0,top:10.0),
                child: const DrawerHeader(
                  child: Text(
                    'Virtusa',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          //fit: BoxFit.fill,
                          image: AssetImage('assets/Images/trophy.png'))),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                title: Icon(Icons.apps,color: Colors.white,),
                onTap: () => {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LogIssue()),
                ),
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.stacked_bar_chart,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.credit_card,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.list_alt,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.stacked_line_chart,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.monetization_on_outlined,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.flag_outlined,color: Colors.white,),
                onTap: () => {Navigator.of(context).pop()},
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                title: Icon(Icons.exit_to_app,color: Color(0xFFFFC554),),
                onTap: () => {Navigator.of(context).pop()},
              ),
            ],
          ),
        ),
      ),
      width:132.0,

    );
  }
}