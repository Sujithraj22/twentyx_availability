import 'package:flutter/material.dart';
import 'package:twentyx_availability/models/availabitlitydata.dart';
import 'package:twentyx_availability/models/bookingData.dart';

class AvailabilityScreen extends StatefulWidget {
  @override
  State<AvailabilityScreen> createState() => _AvailabilityScreenState();
}

class _AvailabilityScreenState extends State<AvailabilityScreen> {
  //int value = 0;
  AvailabilityData availabilityData = AvailabilityData();
  BookingData bookingData = BookingData();

// bool iconClick1 = true;
// bool iconClick2 = true;
// bool iconClick3 = true;
// bool iconClick4 = true;
//  IconData icon1 = Icons.circle;
//  // IconData icon2 = Icons.circle;
//  // IconData icon3 = Icons.circle;
//  // IconData icon4 = Icons.circle;

  List<IconData> icons = [
    Icons.circle,
    Icons.circle,
    Icons.circle,
    Icons.circle,
  ];

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
            backgroundColor: Colors.grey[300],
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
          backgroundColor: Colors.grey[300],
          body: TabBarView(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                clipBehavior: Clip.hardEdge,
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
                                //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight:Radius.circular(10)),

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
                                    SizedBox(width: 10),
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
                                                  ["monthText"],
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                          Text(
                                              availabilityData.dateList[index]
                                                  ["dayText"],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold)),
                                          Text(availabilityData.dateList[index]
                                              ["weekText"]),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleIconRow(),
                                        //SizedBox(width: 20),
                                      ],
                                    ),
                                    PopupMenuButton(itemBuilder: (context) {
                                      return [
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
              bookingData.dateList.length != 0
                  ? Container(
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
                                            fontSize: 21,
                                            color: Colors.red[200]),
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
                                itemCount: bookingData.dateList.length,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(width: 10),
                                          Container(
                                            width: 30,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                    bookingData.dateList[index]
                                                        ["dayText"],
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(bookingData.dateList[index]
                                                    ["weekText"]),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 25),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              //CircleIconRow2(),
                                              IconButton(
                                                icon: Icon(
                                                  bookingData.dateList[index]
                                                          ["icon1"]
                                                      ? Icons.check_circle
                                                      : Icons.circle,
                                                  color: bookingData
                                                              .dateList[index]
                                                          ["icon1"]
                                                      ? Colors.blue
                                                      : Colors.grey[300],
                                                ),
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                              ),
                                              SizedBox(width: 20),
                                              IconButton(
                                                icon: Icon(
                                                  bookingData.dateList[index]
                                                          ["icon2"]
                                                      ? Icons.check_circle
                                                      : Icons.circle,
                                                  color: bookingData
                                                              .dateList[index]
                                                          ["icon2"]
                                                      ? Colors.blue
                                                      : Colors.grey[300],
                                                ),
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                              ),
                                              SizedBox(width: 20),

                                              IconButton(
                                                icon: Icon(
                                                  bookingData.dateList[index]
                                                          ["icon3"]
                                                      ? Icons.check_circle
                                                      : Icons.circle,
                                                  color: bookingData
                                                              .dateList[index]
                                                          ["icon3"]
                                                      ? Colors.blue
                                                      : Colors.grey[300],
                                                ),
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                              ),
                                              SizedBox(width: 20),

                                              IconButton(
                                                icon: Icon(
                                                  bookingData.dateList[index]
                                                          ["icon4"]
                                                      ? Icons.check_circle
                                                      : Icons.circle,
                                                  color: bookingData
                                                              .dateList[index]
                                                          ["icon4"]
                                                      ? Colors.blue
                                                      : Colors.grey[300],
                                                ),
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                              ),
                                              //SizedBox(width: 20),

                                              //SizedBox(width: 20),
                                            ],
                                          ),
                                          PopupMenuButton(
                                              itemBuilder: (context) {
                                            return [
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
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Center(
                        child: Text('You have no bookings',
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.grey,
                            )),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleIconRow extends StatefulWidget {
  @override
  _CircleIconRowState createState() => _CircleIconRowState();
}

//***********Row for set availability
class _CircleIconRowState extends State<CircleIconRow>
    with AutomaticKeepAliveClientMixin {
  AvailabilityData availabilityData = AvailabilityData();
  Map<int, bool> _isSelected = {
    0: false,
    1: false,
    2: false,
    3: false,
  };

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildCircleIcon(0),
        SizedBox(width: 20),
        _buildCircleIcon(1),
        SizedBox(width: 20),
        _buildCircleIcon(2),
        SizedBox(width: 20),
        _buildCircleIcon(3),
      ],
    );
  }

  Widget _buildCircleIcon(int index) {
    return IconButton(
      icon: Icon(
        _isSelected[index]! ? Icons.check_circle : Icons.circle,
        color: _isSelected[index]! ? Colors.blue : Colors.grey[300],
      ),
      onPressed: () {
        setState(() {
          _isSelected[index] = !_isSelected[index]!;
          //availabilityData.dateList[index]["icon$index"] = true;
        });
      },
    );
  }
}
