import 'package:flutter/material.dart';
class FoodList extends StatelessWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    ListView(
      
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right:15.0,
            top:15.0
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Recommended',
              style: TextStyle(
                fontSize:18.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold
              ),
              ),
               const Text('SEE ALL',
              style: TextStyle(
                fontSize:18.0,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold
              ),
              )
            ],
          ),
          ),
          Container(
            
           height: 180,
           child: ListView(
            scrollDirection: Axis.horizontal,
               children: [
                 getCard('assets/images/brocli.jpg', 'Brocli'),
                  getCard('assets/images/pizza.jpg', 'Pizza'),
                getCard('assets/images/chicken.jpg', 'Chicken'),
               ],
           ),
          )
      ],
    );
  
  }
  Widget getCard(String imgPath,String foodName){
    return Padding(padding: EdgeInsets.only(left: 25.0,top: 25.0,bottom: 10.0),
    child: Container(
      
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3.0
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imgPath),fit: BoxFit.cover)
            ),
          ),
          Text(foodName,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(height: 4.0,),
          Text('Light Food',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color:Colors.grey.withOpacity(0.3)
          ),
          ),
          SizedBox(height: 3.0,),
          Padding(
            padding: const EdgeInsets.only(left:15.0),
            child: Row(children: [
              Icon(Icons.star,color: Colors.yellow,size: 14.0,), Icon(Icons.star,color: Colors.yellow,size: 14.0,),
               Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                 Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  Icon(Icons.star,color: Colors.yellow,size: 14.0,),
                  SizedBox(width: 10.0,),
                  Text('4.5',
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0
                  ),
                  )
            ],),
          )
        ],
      ),
    ),
    );
  }
}