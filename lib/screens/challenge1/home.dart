
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge1/about_meal.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(248, 250, 244, 244),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  color: Color.fromARGB(255, 231, 213, 213),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(15, 35, 15, 10),
                     child:  Material(
                      elevation: 10.0,
                        borderRadius: BorderRadius.circular(50),
                       child:TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.search,color: Colors.black,),
                              contentPadding: EdgeInsets.only(left: 15.0,top: 13),
                              hintText: 'Search for new recipies',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                 fontFamily: 'Quicksand',
                                 fontSize: 18,
                                 fontWeight: FontWeight.normal
                              )
                            ),
                          ),
                       ),
                     ),
                    const SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        padding: const EdgeInsets.only(left: 15.0),
                        decoration: const BoxDecoration(
                          border: Border(left: BorderSide(
                            color: Colors.orange,
                            style: BorderStyle.solid,
                            width: 3.0
                          )),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text('POPULAR RECIPES',
                            style: TextStyle(
                              fontSize: 20.0,
                               fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            const Text('THIS WEEK', 
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                               fontFamily: 'Quicksand',
                            ),
                          )
                          ],
                        ),
                      ),
                      ),
                    Padding(padding: EdgeInsets.only(bottom: 15.0)),
                    Container(
                      padding: EdgeInsets.only(left: 15.0,top: 15.0),
                      height: 125.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          _listItem(),
                          SizedBox(width: 15,),
                          _listItem(),
                          SizedBox(width: 15,),
                          _listItem(),
                       
                        ],
                      ),
                    ),
                  ],
                )
              ],),
              const SizedBox(height: 50.0,),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('September', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                   fontFamily: 'Quicksand',
                  color: Colors.grey
                ),),
              ),
              const SizedBox(height: 10.0,),
               Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 15.0),
                child: const Text('TODAY', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand',
                  fontSize: 30.0,
                  color: Colors.black
                ),),
              ),
              const SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                    Navigator.of(context).push(
                  MaterialPageRoute(builder: (_){
                    return AboutMeal();
                  })
                );
                },
                child: Stack(
                children: [
                  Container(
                    height: 300.0,
                    width: double.infinity,
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      // border: Border.all(color: Colors.red,width: 3),
                      image: DecorationImage(image: AssetImage('assets/images/pizza.jpg'),
                      fit: BoxFit.fill),
                    ),
                    child: ClipRRect(
                     borderRadius: BorderRadius.circular(15.0),
                      child: BackdropFilter(filter: ImageFilter.blur(
                       
                        sigmaX: 1.5,
                        sigmaY: 1.5
                      ),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                      ),
                      ),
                    ),
                  ),
                    Container(
                      padding: EdgeInsets.only(top: 150,left: 60.0),
                      child: Column(
                        children: [
                             Text('Best Of Meals',
                             style: TextStyle(fontSize: 25,
                             fontFamily: 'Quicksand',
                             fontWeight: FontWeight.bold,color: Colors.white),)
                        ],
                      ),
                    )
                ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _listItem extends StatelessWidget {
  const _listItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.0,
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white
       ),
       padding: EdgeInsets.all(3.0),
       child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(
                image: AssetImage('assets/images/pizza.jpg'),
                fit: BoxFit.fill)
            ),
            height: 80.0,
            width: 80.0,
          ),
          SizedBox(width: 20.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top:7.0),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Text(
                    'Big Pizza',
                    style: TextStyle(
                      fontSize: 15,
                       fontFamily: 'Quicksand',
                       fontWeight: FontWeight.bold
                    ),
                   ),
                   Text('New Meal With Different taste',
                   style: TextStyle(
                      fontSize: 12,
                    ),),
                   SizedBox(height:10.0,),
                     Container(
                      height: 2.0,
                      width: 75,
                      color: Colors.orange,
                     ),
                     SizedBox(height: 10.0,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          // margin: EdgeInsets.only(right: 30),
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.5),
                            image: DecorationImage(image: AssetImage('assets/images/smile.jpg'))
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('Christina Verey',style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 12),)
                      
                      ],
                    ),
                ],
              ),
            ),
          ),
        ],
       ),
    );
  }
}