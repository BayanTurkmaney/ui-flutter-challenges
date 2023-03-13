import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge5/food_details.dart';
class home5 extends StatelessWidget {
  const home5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 15.0,left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: (){},
                 icon: Icon(Icons.arrow_back_ios),
                 color: Colors.white,
                 ),
                 Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.filter_list),color: Colors.white,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu),color: Colors.white,)

                    ],
                  ),
                 )
            ],
          ),
          ),

          SizedBox(height: 25.0,),
          Padding(
            padding: EdgeInsets.only(left:40.0),
            child: Row(children: [
              Text('Healthy',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              Text('Food',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 25.0,
                color: Colors.white
              ),
              ),
            ],),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height-185.0,
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(topLeft:Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: [
                Padding(padding: EdgeInsets.only(top: 45.0),
                child: Container(
                  height: MediaQuery.of(context).size.height-300.0,
                  child: ListView(
                    children: [
                         _buildFoodItem(context,'assets/images/chicken.jpg', 'Chicken', '\$24.00'),
                         _buildFoodItem(context,'assets/images/rice_meal.jpg', 'Rice Meal', '\$78.00'),
                         _buildFoodItem(context,'assets/images/ramen.jpg', 'Ramen', '\$45.00'),
                         _buildFoodItem(context,'assets/images/salmon.jpg', 'Salmon', '\$77.00'),
                         _buildFoodItem(context,'assets/images/ramen.jpg', 'Ramen', '\$45.00'),
                    ],
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Icon(Icons.search,color: Colors.black,)),
                      ),
                      SizedBox(width: 2.0,),
                      Container(
                        height: 65.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('2',textAlign: TextAlign.right,),
                              Icon(Icons.shopping_basket_outlined,color: Colors.black,)
                            ],
                          ) ),
                      ),
                      SizedBox(width: 2.0,),
                      Container(
                        height: 50.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 26, 8, 19),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 18.0),))
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

Widget _buildFoodItem(BuildContext context,String imgPath,String foodName,String price){
  return Padding(
    padding: EdgeInsets.only(left: 10.0,right:10.0,top: 10.0),
    child: InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_){
            return FoodDetails(foodName: foodName,foodPrice: price,heroTag: imgPath,);
          })
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Hero(tag: imgPath,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 75.0,
                    width: 75.0,
                    ),
                ),),
                SizedBox(width: 10.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(foodName,
                    style: TextStyle(
                      fontFamily:'Quicksand',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(price,
                    style: TextStyle(
                      fontFamily:'Quicksand',
                      fontSize: 15.0,
                      color:Colors.grey
                    ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.add),color: Colors.black,)
        ],
      ),
    ),
  );
}
}