import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge2/food_list.dart';
class Follower extends StatefulWidget {
  const Follower({Key? key}) : super(key: key);

  @override
  State<Follower> createState() => _FollowerState();
}

class _FollowerState extends State<Follower> with SingleTickerProviderStateMixin{
  TabController ?tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController=TabController(vsync:this, length: 3 );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Stack(
          children: [
          Container(height: 300.0,),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.jpg'),fit: BoxFit.cover)
            ),
            ),
            Positioned(
              top: 150.0,
              left: 50.0,
              child: Container(
              height: 140.0,
              width: 140.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color:Colors.white,
                  width: 2.0
                ),
              borderRadius: BorderRadius.circular(70.0),
              image: DecorationImage(
                image: AssetImage('assets/images/smile.jpg'),
                fit: BoxFit.cover
                ),
              ),
              )),
              Positioned(
                top: 225,
                left: 195,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          "Soneil Kharma",
                          style:TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                          )
                          ),
                        Text(
                          "1,550 Followers",
                          style:TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          )
                          ),],
                    ),
                    SizedBox(width: 10.0,),
                        Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                            color:Color(0xFFEAF4EF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF5A9776)
                              ),
                            ),
                          ),
                        ),
                  ],
                ))
              
        ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Container(
            child: TabBar(
               tabs: const [
                Tab(
                  child: Text(
                    'Recipies',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                 Tab(
                  child: Text(
                    'Gallery',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                 Tab(
                  child: Text(
                    'Story',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
              controller: tabController,
              indicatorColor: Color(0xFF469469),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              ),
          ),),
            Container(
              height: 300.0,
              child: TabBarView(
                controller: tabController,
                children:[
                  FoodList(),
                  FoodList(),
                  FoodList(),
                ] ),
            )
        ],
      ),
    );
  }
}