import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge2/fllower.dart';
import 'package:food_ui_challenge1/screens/challenge1/search.dart';
class AboutMeal extends StatelessWidget {
  const AboutMeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:Colors.transparent,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){Navigator.of(context).pop();},color: Colors.black,),
        title: Text('About Meal',style: TextStyle(fontFamily: 'Quicksand',color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
             Navigator.of(context).push(
                  MaterialPageRoute(builder: (_){
                    return SearchScreen();
                  })
                );
          }, 
          icon: Icon(Icons.search),color: Colors.grey,),
        ],
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 250.0,
                          width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            
                            image: DecorationImage(
                              image: AssetImage('assets/images/pizza.jpg'),
                              fit: BoxFit.cover)
                          ),
                        ),
                        Container(
                           height: 250.0,
                          width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width/3,
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                          color: Colors.black.withOpacity(0.3),),
                        ),
                        Positioned(
                          left: 15.0,
                          top: 130.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pizza with Cheese',
                              style: TextStyle(
                                color:Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                                 Text('\$ 88',
                              style: TextStyle(
                                color:Colors.white,
                                fontFamily: 'Quicksand',
                                fontSize: 20.0,
                               
                              ),
                              ),
                            ],
                          )),
                      ],
                    ),
                    SizedBox(width: 5.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.favorite,color: Colors.red,),
                                Text('440',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize:15.0,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                         Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.chat_bubble,color: Colors.grey,),
                                Text('40',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize:15.0,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        ),
                         Material(
                          borderRadius: BorderRadius.circular(7.0),
                          elevation: 2.0,
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.replay,color: Colors.grey,),
                                Text('80',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize:15.0,
                                  fontWeight: FontWeight.bold
                                ),)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(padding: 
              EdgeInsets.only(left: 17.0),
              child: Text('Commodity',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize:20.0,
                                  fontWeight: FontWeight.bold
                                ),),
              ),
              SizedBox(height: 10.0,),
              Padding(padding: 
              EdgeInsets.only(left: 17.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_){
                        return Follower();
                      }
                    )
                  );
                },
                child: Text('search followers ..',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize:14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                                ),),)
              ),
              SizedBox(height: 10.0,),

              GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                childAspectRatio: 100/100,
                mainAxisSpacing: 10.0,
                shrinkWrap: true,
                children: [
                  _gridCard(name: 'Soup',description: 'new soup', 
                  image: 'assets/images/soup.jpg'),
                    _gridCard(name: 'Brocli',description: 'new brocli', 
                  image: 'assets/images/brocli.jpg'),
                   _gridCard(name: 'Hindi Rice',description: 'new rice', 
                  image: 'assets/images/rice_meal.jpg'),
                  _gridCard(name: 'Pizza',description: 'new pizza', 
                  image: 'assets/images/pizza_meal.jpg'),
                  //  _gridCard(),
                  //   _gridCard(),
                  //    _gridCard(),
                ],
                )
            ],
          )
        ], ),
    );
  }
  Widget _gridCard({String? image,String?name,String?description}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
      child: Stack(
        children: [
          GridTile(
          child: Container(
            
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.5),style: BorderStyle.solid,width: 1.0),
              image: DecorationImage(image: AssetImage(image!),fit: BoxFit.fill)
            ),
          ),
          footer:Container(
            height: 70,
           
            child: GridTileBar(
              backgroundColor: Colors.white,
              // title: Text('new title',style: TextStyle(color: Colors.black),),
              leading: Padding(
                padding: const EdgeInsets.all(3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,fontFamily: 'Quicksand',fontSize: 16.0),),
                    Text(description!,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,fontFamily: 'Quicksand',fontSize: 12.0),),
                    SizedBox(height: 3.0,),
                    Container(
                      // width: 40,
                      margin: EdgeInsets.only(left: 0),
                      child: Row(children: [
                         Icon(Icons.favorite,color: Colors.grey.withOpacity(0.4),size: 15.0,),
                         SizedBox(width: 2.0,),
                                    Text('440',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize:10.0,
                                      color: Colors.grey
                                    ),),
                                    SizedBox(width: 8,),
                                    Icon(Icons.chat_bubble,color: Colors.grey.withOpacity(0.4),size: 15.0,),
                         SizedBox(width: 2.0,),
                                   Text('440',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize:10.0,
                                      color: Colors.grey
                                    ),),
                                    SizedBox(width: 7,),
                                    Icon(Icons.reply,color: Colors.grey.withOpacity(0.4),size: 15.0,),
                         SizedBox(width: 2.0,),
                                    Text('440',
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize:10.0,
                                      color: Colors.grey
                                    ),),
                                   
                      ],),
                    )
                  ],
                ),
              ),
            ),
          ) ,),
          Positioned(
            left: 110,
            top: 100,
            child: Container(
              height:40.0,
              width:40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange
              ),
              child: Center(child: Icon(Icons.shopping_cart,color: Colors.white,)),
            ))
        ],
      ),
    );
  }
}