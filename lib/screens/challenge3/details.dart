import 'package:flutter/material.dart';
class Details extends StatelessWidget {
 final heroTag;
 final foodName;
 final foodPrice;
   Details({Key? key,this.foodName,this.foodPrice,this.heroTag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
              ),
               Container(
                height: 200,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage('assets/images/pizza.jpg'),
                  //   fit: BoxFit.cover
                  //   ),
                  color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0)
                    ),
                ),
              ),
              Positioned(
                top:50.0,
                left: 80,
                child: Hero(
                  tag:heroTag, 
                  child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(160),
                      image:DecorationImage(
                        image: AssetImage('assets/images/brocli.jpg'),fit: BoxFit.cover),
                      
                    ),
                  ))),
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, 
                      icon: Icon(Icons.arrow_back_ios),color: Colors.white,)),

                        Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      }, 
                      icon: Icon(Icons.more_horiz),color: Colors.white,)),
                  
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Text(
                'Vegan breakfast',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Quicksand'
                ),
              ),
              SizedBox(height: 6,),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('4.9',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.grey,
                  fontSize: 20.0
                  ),
                ),
                SizedBox(width: 3.0,),
                Icon(Icons.star,color: Colors.green,size: 20.0,),
                Icon(Icons.star,color: Colors.green,size: 20.0,),
                Icon(Icons.star,color: Colors.green,size: 20.0,),
                Icon(Icons.star,color: Colors.green,size: 20.0,),
                Icon(Icons.star,color: Colors.grey,size: 20.0,),
              ],
            ),
            SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Text(
                foodPrice,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 17.0
                ),
              ),
              Container(
                width: 125.0,
                height: 40.0,
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color:Color.fromARGB(255, 218, 247, 205)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline,color:Color(0xFF5CB238) ,)),
                    Text('3',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20.0,
                      color: Color(0xFF5CB238)
                    ),
                    ),
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.add_circle,
                  color:Color(0xFF5AC035) ,)),

                  ],
                ),
              ),
             ],
            ),
            SizedBox(height: 10.0,),
            Text(
                'About Meal',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Quicksand'
                ),
              ),
              SizedBox(height: 5.0,),
            Text(
                'It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food. It is a new meal, delicouse food.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                  // fontFamily: 'Quicksand'
                ),
              ),
            ],
          ),
          ),
          SizedBox(height: 30.0,),
          Container(
            height: 50,
            width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.green,
               borderRadius: BorderRadius.circular(30)
             ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    fontSize: 17.0
                  ),
                  ),
                  SizedBox(width: 10.0,),
                   Text('\$84.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Quicksand',
                    fontSize: 17.0
                  ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}