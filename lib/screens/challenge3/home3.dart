import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge3/details.dart';
class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.black,),
                Container(
                  height:40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/pasta.jpg',),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  Text('GOOD',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF588842)
                  ),
                  ),
                   Text('MORNING',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF588842)
                  ),
                  ),
                  SizedBox(height: 20.0,),
                  Text(
                    'Popular Food',
                    style:TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0
                    )
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.0,),
        
           Container(
            height: 250,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildListItem(context,'assets/images/brocli.jpg','Brocli','\$28'),
                  _buildListItem(context,'assets/images/pasta.jpg','Pasta','\$28'),
              ],
            ),
           ),
           SizedBox(height: 20.0,),
           Padding(padding: EdgeInsets.only(left: 20.0),
           child: Text('Best Food',
           style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.w600,
            fontSize: 17.0
           ),
           ),
           ),
           SizedBox(height: 20.0,),
           Padding(
             padding: const EdgeInsets.only(left:20.0,right: 20.0),
             child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.white,Color(0xFFACBEA3),],
                        begin: Alignment.topLeft,
                        end:Alignment.bottomRight
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)
                        ),
                      image: DecorationImage(
                        image: AssetImage('assets/images/salmon.jpg'),
                        fit: BoxFit.cover
                        )
                    ),
                  ),
           ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0)
          ),
          color: Color(0xFF5AC035)
        ),
        padding: EdgeInsets.only(left: 40.0,right: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.bookmark_border,color: Colors.white,),
             Icon(Icons.search,color: Colors.white,),
              Icon(Icons.shopping_basket,color: Colors.white,),
               Icon(Icons.person_outline,color: Colors.white,),
          ],
        ),
      ),
    );
  }

  _buildListItem(BuildContext context,String imagePath, String foodName, String price){
    return InkWell(
       onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_){
            return Details(heroTag:imagePath,foodName:foodName,foodPrice:price);
          })
        );
       },
       child: Padding(
        padding: EdgeInsets.only(left: 20.0,top: 10.0,bottom: 10.0),
       child: Container(
        height: 200.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
            blurRadius: 6.0,
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5.0,
            // blurRadius: 6.0,
            // color: Colors.green,
            // spreadRadius: 5.0,
            // offset: Offset(10, 240)
              )]
            ),
            child: Stack(
              children: [
                Container(
                  height: 175.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3),],
                      begin: Alignment.topLeft,
                      end:Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)
                      )
                    
                  ),
                ),
                Hero(
                  tag: imagePath, 
                  child: Container(
                    height:175.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)
                    )
                    ),
                    
                    ),
                    ),
                 Positioned(
                  top: 160.0,
                  right: 20.0,
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                        child: Icon(Icons.favorite,color: Colors.red,size: 17,),
                          ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color:Colors.white
                      ),
                    ),
                  ),
                  ),
                  Positioned(
                    top: 190.0,
                    left: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                        style: TextStyle(
                          fontFamily:'Quicksand',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize:14.0
                        ),
                        ),
                        SizedBox(height: 3.0,),
                        Container(
                          width: 175.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('4.9',
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    color: Colors.grey,
                                    fontSize: 12.0
                                    ),
                                  ),
                                  SizedBox(width: 3.0,),
                                  Icon(Icons.star,color: Colors.green,size: 14.0,),
                                  Icon(Icons.star,color: Colors.green,size: 14.0,),
                                  Icon(Icons.star,color: Colors.green,size: 14.0,),
                                  Icon(Icons.star,color: Colors.green,size: 14.0,),
                                  Icon(Icons.star,color: Colors.grey,size: 14.0,),
                                ],
                              ),
                            Text(price,
                            style: TextStyle(
                              fontFamily:'Quicksand',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 16.0
                            ),
                            )
                            ],
                          ),
                        )
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