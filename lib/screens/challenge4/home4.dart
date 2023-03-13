import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge4/meal_details.dart';
class Home4 extends StatelessWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/soup.jpg'),
                  fit: BoxFit.cover
                  )
              ),
            ),
            Positioned(
              left: 25.0,
              top: 75.0,
              child: Container(
                height: 400.0,
                width: 390.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(15.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 4.0,
                      offset: Offset(0.0,-6.0)
                    ),
                  ],
                ),
                child: ListView(
                 
                  children: [
                    Padding(padding: EdgeInsets.only(left:15.0,bottom: 10.0),
                    child: Text(
                      'Fruit Recipes',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                     Padding(padding: EdgeInsets.only(left:15.0,bottom: 20.0,right: 25.0),
                    child: Text(
                      'Enjoy one of our delicious fruit recepies',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF9E9E9E)
                      ),
                    ),
                    ),
                     Padding(padding: EdgeInsets.only(left:15.0,bottom: 10.0),
                    child: Container(
                      height: 275.0,
                      width: 310.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                         _buildFoodCard(context,'Italian Pasta', '248kcal', 'assets/images/pasta.jpg'),
                          _buildFoodCard(context,'Hindi Salmon', '248kcal', 'assets/images/salmon.jpg'),
                           _buildFoodCard(context,'Ramen Rice', '248kcal', 'assets/images/ramen.jpg')
                        ],
                      ),
                    ),
                    ),
                 ],
                ),
              ), ),
             Positioned(
              left: 25.0,
              top: 475.0,
              child: Container(
                height:300.0,
                width: 390.0,
                margin: EdgeInsets.only(bottom: 10),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //    border: Border.all(color: Colors.red),
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(25.0),
                //     topRight: Radius.circular(15.0),
                //   ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     blurRadius: 4.0,
                  //     color: Colors.grey.withOpacity(0.2),
                  //     spreadRadius: 4.0,
                  //     offset: Offset(0.0,-6.0)
                  //   ),
                  // ],
                // ),
                child: ListView(
                 children: [
                     SizedBox(height: 20,),
                    Padding(padding: EdgeInsets.only(left:15.0,bottom: 10.0),
                    child: Text(
                      'Your Favorites',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    ),
                    SizedBox(height: 20,),
                     Padding(padding: EdgeInsets.only(left:15.0,bottom: 20.0),
                    child: Container(
                      height: 150.0,
                      width: 310.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                        Container( 
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(image: AssetImage('assets/images/ramen.jpg'),fit: BoxFit.cover)
                            ),),
                        Container( 
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(image: AssetImage('assets/images/salmon.jpg'),fit: BoxFit.cover)
                            ),),
                        Container( 
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 180,
                          height: 50,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                           image: DecorationImage(image: AssetImage('assets/images/steak.jpg'),fit: BoxFit.cover)

                            ),),
                        ],
                      ),
                    ),
                    ),
                 ],
                ),
              ), ),
                  
        ],) ,
    );
  }
  Widget _buildFoodCard(BuildContext context,String title, String calCount, String imagePath){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_){
            return MealDetails(calCount: calCount,disName: title,heroTag: imagePath,);
          })
        );
      },
      child: Padding(padding: EdgeInsets.only(left: 20.0,top:10.0,bottom: 10.0),
      child: Stack(
        children: [
          Container(
            height:275.0,
            width: 200.0,
            // color: Colors.blue,
          ),
          Positioned(
            top: 7.0,
            child: Container(
              height: 250.0,
              width: 175.0,
              padding: EdgeInsets.only(left: 10.0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 110,
                  ),
                  Text(title,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                   SizedBox(
                      height: 10,
                  ),
                  Text('An incredible meal, new food , fast and deliciose.',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                   SizedBox(
                      height: 20,
                  ),
                  Text(calCount,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),)
                ],
              ) ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFF20D3D2)
              ),
            )),
            Positioned(
              left: 90.0,
              child: Hero(
                tag: imagePath, child: Container(
                  height: 110.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                      image: AssetImage(imagePath),fit: BoxFit.cover)
                  ),
                )))
        ],
      ),
      ),
    );
  }
}