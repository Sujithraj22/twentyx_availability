import 'package:flutter/material.dart';

class AvailabilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SET AVAILABILITY",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "VIEW BOOKINGS",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Row with four columns
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.person),
                        Text("Profile"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.calendar_today),
                        Text("Bookings"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.history),
                        Text("History"),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Icon(Icons.settings),
                        Text("Settings"),
                      ],
                    ),
                  ),
                ],
              ),

              // ListView with ListTile widgets
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("MON", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("WEEK 1"),
                        ],
                      ),
                      title: Text("Location 1"),
                      subtitle: Text("Available from 9AM to 5PM"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("TUE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("WEEK 1"),
                        ],
                      ),
                      title: Text("Location 2"),
                      subtitle: Text("Available from 10AM to 6PM"),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                    ListTile(
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("WED", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("WEEK 2"),
                        ],
                      ),
                      title: Text("Location 3"),
                      subtitle: Text("Available from 11AM to 7PM"),
                      trailing: Icon(Icons.arrow_forward),
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
