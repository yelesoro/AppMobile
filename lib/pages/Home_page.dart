import 'package:page_transition/page_transition.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'cooperatives.dart';
import 'package:usine/widgets/barchart.dart';
import 'dart:math';
import 'historiqueTransaction.dart';
import 'cooperatives.dart';

    class HomePage extends StatefulWidget {
      const HomePage({Key? key}) : super(key: key);


      @override
      State<HomePage> createState() => _HomePageState();
    }

    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Color(0XFF00B686),
              items: [
                CurvedNavigationBarItem(
                  child: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                CurvedNavigationBarItem(
                  child: Icon(Icons.search),
                  label: 'Search',
                ),
                CurvedNavigationBarItem(
                  child: Icon(Icons.perm_identity),
                  label: 'Personal',
                ),
              ],
              onTap: (index) {
                // Handle button tap
              },
            ),


          body: SafeArea(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFF00B686),
                    shape: BoxShape.rectangle),

                  child:Row(children: [
                  Column(
                    children: [Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(top: 15, left: 20),
                      child: Image.asset("assets/logo.png", width: 100, height: 100,),
                    )],
                  ),
                  Column(children: [
                    Center(child:  Container(
                      width: 100,
                      height: 50,
                      margin: EdgeInsets.only(top: 45, left: 58),
                      child: Text('USAN',
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                    ),

                    )
                  ],
                  ),
                  Column(children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(top: 30, left: 70),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.notifications_outlined),

                    )
                  ],)

                ],)

                  //appbar

                ),

                //container2
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
                    Container(

                      width:100,
                      margin: EdgeInsets.only(top:5,bottom: 8 ),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                          border:Border.all(
                              color: Colors.grey,
                              width: 2
                          ),

                      ),
                      child: Container(

                        child: Text('2022-2023', style: TextStyle(fontWeight: FontWeight.bold),),
                      ),

                    ),
                  ],
                ),),
                //container 3
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(

                       child: Container(
                         margin: EdgeInsets.only(top: 20, bottom: 10),
                  height: 300,
                    child: BarChart(BarChartData(
                        borderData: FlBorderData(
                            border: const Border(
                              top: BorderSide.none,
                              right: BorderSide.none,
                              left: BorderSide(width: 1),
                              bottom: BorderSide(width: 1),
                            )),
                        groupsSpace: 10,

// add bars
                        barGroups: [
                          BarChartGroupData(x: 1, barRods: [
                            BarChartRodData(toY: 10, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 2, barRods: [
                            BarChartRodData(toY: 9, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 3, barRods: [
                            BarChartRodData(toY: 4, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 4, barRods: [
                            BarChartRodData(toY: 2, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 5, barRods: [
                            BarChartRodData(toY: 13, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 6, barRods: [
                            BarChartRodData(toY: 17, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 7, barRods: [
                            BarChartRodData(toY: 19, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 8, barRods: [
                            BarChartRodData(toY: 21, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 9, barRods: [
                            BarChartRodData(toY: 21, width:10,color: Colors.green)
                          ]),
                          BarChartGroupData(x: 10, barRods: [
                            BarChartRodData(toY: 21, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 11, barRods: [
                            BarChartRodData(toY: 21, width: 10, color: Colors.green),
                          ]),
                          BarChartGroupData(x: 12, barRods: [
                            BarChartRodData(toY: 21, width: 10, color: Colors.green),
                          ]),
                        ])),),
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(30),
                            border:Border.all(
                              color: Colors.green,
                              width: 2
                            ),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.22),
                                  spreadRadius: 23,
                                  blurRadius: 5,
                                  offset: Offset(7.0,8.0)
                              )
                            ]
                        ),
                        width: 350,
                      ),


          Container(

            child: lineChartbuild(),
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border:Border.all(
                    color: Colors.green,
                    width: 2
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.22),
                      spreadRadius: 23,
                      blurRadius: 5,
                      offset: Offset(7.0,8.0)
                  )
                ]
            ),
            width: 350,),
          Container(

            child: circleChartBuild(),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                border:Border.all(
                    color: Colors.green,
                    width: 2
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.22),
                      spreadRadius: 23,
                      blurRadius: 5,
                      offset: Offset(7.0,8.0)
                  )
                ]
            ),
            width: 350,)
                    ],
                  ),
                ),



                //container3
               Container(child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Container(
                       width: 200,
                       margin: EdgeInsets.only(top:5,right: 15 ),
                       padding: EdgeInsets.all(2),
                     child: Container(
                       margin: EdgeInsets.only(left: 25),
                       child: Text('Mes services', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                       ),
                     ),

                   ),
                 ],
               ),),

                //container4
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(children: [
                          service(),
                          Container(
                            width: 70,
                            child:
                            Center(child: Text('Acheter', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),)

        ,),
                        ],),

                        Column(children: [

                          Container(

                            margin: EdgeInsets.only(top:15, left: 55, right: 28, bottom: 8),
                            padding: EdgeInsets.all(12),

                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.green.withOpacity(0.25),
                                      spreadRadius: 3,
                                      blurRadius: 20,

                                      offset: Offset(7.0,8.0)
                                  )
                                ]
                            ),
                            child: Center(
                                child: Icon( Icons.shopping_cart_outlined,size: 30,)
                            ),
                          ),
                          Center(child:  Container(
                            width: 60,
                            child: Center(  child: Text('Acheter', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),)
                          )
                            ,),
                        ],),

                        Column(children: [
                          Container(

                            margin: EdgeInsets.only(top:15, left: 55, right: 28, bottom: 8),
                            padding: EdgeInsets.all(12),

                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.green.withOpacity(0.25),
                                      spreadRadius: 3,
                                      blurRadius: 20,

                                      offset: Offset(7.0,8.0)
                                  )
                                ]
                            ),
                            child: Center(
                                child: Icon( Icons.shopping_cart_outlined,size: 30,)
                            ),
                          ),
                          Container(
                            width: 70,
                            child:
                            Center(child: Text('Acheter', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),)

                            ,),
                        ],),
                      ],
                    ),
                ),
                //Container5

                //container6
                historique(),
              ],
            ),
          )
          //cards
          //3 buttons

          //Column->stats

        );
      }
    }

class historique extends StatelessWidget {
  const historique({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child:
    Padding(
      padding: const EdgeInsets.only(left:25.0, top: 35, bottom: 5),
      child: Column(
        children: [

          Transactions(),
        ],
      ),
    )
    );
  }
}

class Transactions extends StatelessWidget {
  const Transactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: HistoriqueTransactions(),duration: Duration(seconds: 1), isIos: true));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Container(
            height: 60,
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset('assets/transaction.png', width: 40,),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height:12 ,),

              Text('Transactions', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),),
              Text('Historique des transactions', style: TextStyle(fontSize: 16, color: Colors.grey[600]),)
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}

class service extends StatelessWidget {
  const service({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>cooperatives()));
      } ,
      child: Container(

      margin: EdgeInsets.only(top:15, left: 25, right: 28, bottom: 8),
      padding: EdgeInsets.all(12),

      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.green.withOpacity(0.25),
                spreadRadius: 3,
                blurRadius: 20,

                offset: Offset(7.0,8.0)
            )
          ]
      ),
      child: Center(
          child: Icon( Icons.shopping_cart_outlined,size: 30,)
      ),
    ));
  }
}

class lineChartbuild extends StatelessWidget {
  lineChartbuild({Key? key}) : super(key: key);
  final List<FlSpot> dummyData1 = List.generate(13, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });


  @override
  Widget build(BuildContext context) {
    return Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: LineChart(
            LineChartData(
              borderData: FlBorderData(show: false),
              lineBarsData: [
                // The red line
                LineChartBarData(
                  spots: dummyData1,
                  isCurved: true,
                  barWidth: 3,
                  color: Colors.green,
                ),
                // The orange line
              ],
            ),
          ),

    );
  }
}

class circleChartBuild extends StatelessWidget {
  const circleChartBuild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          child: PieChart(PieChartData(
              centerSpaceRadius: 30,
              borderData: FlBorderData(show: false),
              sectionsSpace: 2,
              sections: [
                PieChartSectionData(value: 35, color: Colors.green[100], radius: 100),
                PieChartSectionData(value: 40, color: Colors.green[200], radius: 97.5),
                PieChartSectionData(value: 55, color: Colors.green[300], radius: 95),
                PieChartSectionData(value: 70, color: Colors.green[400], radius: 92.5),
                PieChartSectionData(value: 100, color: Colors.green[500], radius: 90),
                PieChartSectionData(value: 50, color: Colors.green[600], radius: 87.5),
                PieChartSectionData(value: 10, color: Colors.green[700], radius: 85),
                PieChartSectionData(value: 50, color: Colors.green[900], radius: 82.5),
                PieChartSectionData(value: 150, color: Colors.greenAccent[200], radius: 80),
                PieChartSectionData(value: 170, color: Colors.greenAccent[700], radius: 77.5),
                PieChartSectionData(value: 80, color: Colors.greenAccent[400], radius: 75),
                PieChartSectionData(value: 200, color: Colors.greenAccent[100], radius: 72.5),



              ])
          )

    );
  }
}