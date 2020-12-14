import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 32.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.business_center,
                        size: 50.0,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('Items'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Business Dashboard'),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.analytics_outlined),
                title: Text('Reports'),
                onTap: () {},
              ),
              ExpansionTile(
                leading: Icon(Icons.point_of_sale),
                title: Text('Sale'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 24,
      elevation: 16,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
