import 'package:flutter/material.dart';
import 'package:londri_ku/view/dashboard/drawer.dart';

class Home_Page extends StatefulWidget{
  @override
  HomeState createState()=> HomeState();
}
class HomeState extends State<Home_Page>{
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      drawer: new Drawer(
        child: new ListView(

          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text('nama'), accountEmail:Text('email'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.white,child: new Text('nama')),
              decoration: new BoxDecoration(color: Colors.blue),
              otherAccountsPictures: <Widget>[
                //  new CircleAvatar(backgroundColor: Colors.black26,child: new Text('y'),),
                //   new CircleAvatar(backgroundColor: Colors.black26,child: new Text('W'),),
              ],),
          ],
        ),
      ),

      body: SafeArea(
        child: Stack(
          children: <Widget>[

            ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                child: Container(
                    height: 270,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      alignment: Alignment.center,
                      children: <Widget>[

                        Positioned(
                            top: 30,
                            right: -100,
                            child: _circularContainer(300, Colors.lightBlueAccent)),
                        Positioned(
                            top: -100,
                            left: -45,
                            child: _circularContainer(width * .5, Colors.lightBlue)),
                        Positioned(
                            top: -180,
                            right: -30,
                            child: _circularContainer(width * .7, Colors.transparent,
                                borderColor: Colors.white38)),
                      ],
                    )
                )
            ),
            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text("Hay , Owner",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                        ),

                        SizedBox(
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(26.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: Center(
                          child: GestureDetector(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: 60,
                                    width: double.infinity,
                                    child: Image.asset("assets/images/add.png")),
                                SizedBox(height: 10,),
                                Text('Add Member',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: Center(
                          child: GestureDetector(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: 60,
                                    width: double.infinity,
                                    child: Image.asset("assets/images/report.png")),
                                SizedBox(height: 10,),
                                Text('Laporan',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: Center(
                          child: GestureDetector(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: 60,
                                    width: double.infinity,
                                    child: Image.asset("assets/images/support.png")),
                                SizedBox(height: 10,),
                                Text('Layanan',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5,
                        child: Center(
                          child: GestureDetector(
                            onTap: (){},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                    height: 60,
                                    width: double.infinity,
                                    child: Image.asset("assets/images/transaction.png")),
                                SizedBox(height: 10,),
                                Text('Transaksi',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }
}