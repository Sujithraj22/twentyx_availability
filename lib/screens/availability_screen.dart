import 'package:flutter/material.dart';
import 'package:twentyx_availability/models/availabitlitydata.dart';

class AvailabilityScreen extends StatefulWidget {
  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  //int value = 0;
  AvailabilityData availabilityData = AvailabilityData();
bool click1 = true;
bool click = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        //animationDuration: Duration(milliseconds: 500),
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 100,
            titleSpacing: 10,
            centerTitle: true,
            backgroundColor: Colors.grey[400],
            title: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(10),
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
                        //borderRadius: BorderRadius.circular(10),
                        ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "VIEW BOOKINGS",
                        style: TextStyle(
                          //color: Colors.black26,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.grey[400],
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 10, right: 10),
                //padding: EdgeInsets.only(top: 10),
                // color: Colors.white,
                child: Column(
                  children: [
                    // Row with four columns

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.light_mode_rounded,
                                    color: Colors.amber),
                                Text("Long day"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'A M',
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.red[200]),
                                ),
                                Text("Morning"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  'P M',
                                  style: TextStyle(
                                      fontSize: 21, color: Colors.blue),
                                ),
                                Text("Afternoon"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.bedtime),
                                Text("Night"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //********** ListView with ListTile widgets
                    Expanded(
                      child: ListView.builder(
                          itemCount: availabilityData.dateList.length,
                          itemBuilder: (
                            BuildContext context,
                            int index,
                          ) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              height: 100,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                              availabilityData.dateList[index]
                                                  ["dayText"],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.bold)),
                                          Text(availabilityData
                                              .dateList[index]["weekText"]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            print(click);
                                            setState(() {
                                              click = false;
                                            });
                                          },

                                               icon: Icon((click = false) ? Icons.circle : Icons.check_circle),

                                        ),
                                        SizedBox(width: 20),
                                        IconButton(
                                          onPressed: () {
                                            print('icon pressed');
                                            setState(() {
                                              click1 = false;
                                            });
                                          },

                                          icon: Icon((click1 = false) ? Icons.circle : Icons.check_circle),

                                        ),
                                        SizedBox(width: 25),
                                        IconButton(
                                          onPressed: () {
                                            print('icon pressed');
                                            setState(() {
                                              click = false;
                                            });
                                          },

                                          icon: Icon((click = false) ? Icons.circle : Icons.check_circle),

                                        ),
                                        SizedBox(width: 18),
                                        IconButton(
                                          onPressed: () {
                                            print('icon pressed');
                                            setState(() {
                                              click = false;
                                            });
                                          },

                                          icon: Icon((click = false) ? Icons.circle : Icons.check_circle),

                                        ),
                                      ],
                                    ),
                                    PopupMenuButton(itemBuilder: (context){
                                      return[
                                        PopupMenuItem(child: Text('')),
                                      ];

                                    }),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),

              //************ View Booking tab
              Text('hi'),
            ],
          ),
        ),
      ),
    );
  }
}
