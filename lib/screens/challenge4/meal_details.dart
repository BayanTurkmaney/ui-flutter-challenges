import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class MealDetails extends StatelessWidget {
  final  heroTag,  calCount,  disName;
   MealDetails({this.heroTag,this.disName,this.calCount});

  @override
  Widget build(BuildContext context) {
    final screenHeight=MediaQuery.of(context).size.height;
    final screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: 225.0,
            color: Color(0xFF20D3D2),
          ),
          Positioned(
            left: screenWidth/2+25.0,
            bottom: screenHeight-175.0,
            child: Hero(tag: heroTag, child: Container(
              height: 250.0,
              width: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(heroTag ),fit: BoxFit.cover)
              ),
            )),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(padding: const EdgeInsets.only(top: 20.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: (){Navigator.of(context).pop();},
              color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 190.0,
            child: Container(
              height: screenHeight-190.0,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                ),
              ),
            child: ListView(
              children: [
                Padding(padding: EdgeInsets.all(5),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                  // border:Border.all(color: Colors.green)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Fruit Salad',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xFF20D3D2),
                      ),
                     child: Center(
                       child: Text('489 Kal',
                       style: TextStyle(
                        color: Colors.white,
                        fontSize: 18, ),
                       ),
                     ),
                    )
                  ],
                ),
                ),
                ),
                Padding(padding: EdgeInsets.only(
                  left: 20.0,right:20.0,bottom: 10.0,top: 5.0
                ),
                child: Text('A refreshin and incredible tasting fruit salad',
                style: TextStyle(
                  // fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                  color: Color(0xFFBBBBBB)
                ),
                ),
                ),
                Padding(padding: EdgeInsets.only(
                  left: 20.0,right:20.0,bottom: 10.0,top: 25.0
                ),
                child: Text('Integredients',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  // color: Color(0xFFBBBBBB)
                ),
                ),
                ),
                 Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 10.0,
                    top: 5.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIntegredientRow(
                        'Pizza', 'assets/images/pizza.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                        _buildIntegredientRow(
                        'Steak', 'assets/images/steak.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                        _buildIntegredientRow(
                        'Salmon', 'assets/images/salmon.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                       _buildIntegredientRow(
                        'Ramen', 'assets/images/ramen.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                       _buildIntegredientRow(
                        'Pasta', 'assets/images/pasta.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                       _buildIntegredientRow(
                        'Rice', 'assets/images/rice_meal.jpg', '400g', screenWidth),
                      SizedBox(height: 5.0,),
                      Container(height: 0.5,color: Colors.green.withOpacity(0.2),),
                      SizedBox(height: 5.0,),
                    
                    ],
                  ),
                  ),
              ],
            ),
            ))
        ],
      ) ,
    );
  }
  _buildIntegredientRow(
    String title,String imgPath,String quantity,double screenWidth
  ){
       return Container(
        width: screenWidth,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            height: 75.0,
            child:Row(
              children: [
                Container(height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain)
                          ),
                        ),
                        const SizedBox(width: 25.0,),
                        Text(
                          title,
                          style: const TextStyle(
                            // fontFamily: 'Quicksand',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ],
                    ),
                  ],
                ),),

              ],
            )
          ),
            Text(
                      quantity,
                      style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400
                      ),
                    ),
        ]),
       );
  }
}