import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      List<String> chip1=['fast food', 'pizza', 'burger'];
  List<String> chip2=['sandwishes','fish'];
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
          color: Colors.black,
          ),
          centerTitle: true,
          title: Text(
            'Search',
            style:TextStyle(
              color: Colors.black,
              fontFamily: 'Quicksand',
              fontSize: 22,
              fontWeight: FontWeight.bold
            )
          ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(25, 40, 20, 30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 209, 200, 200).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color:Colors.black,size: 30,),
                    hintText: 'Looking for your food',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    )
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(left: 20),
              child:Text('History record',
              style:  TextStyle(
                      color: Colors.black,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                    ),
              )
              ),
               SizedBox(height: 15,),
              Padding(padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                Row(children: [
                  ...chip1.map((e) => Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.0),
                    child: Chip(

                      label: Text(e,style: TextStyle(fontSize: 18,fontFamily: 'Quicksand',fontWeight: FontWeight.w700),),
                      backgroundColor:   Color.fromARGB(255, 209, 200, 200).withOpacity(0.4),
                      ),
                  )).toList()
                ],),
                SizedBox(height: 2,),
                
                 Row(children: [
                  ...chip2.map((e) => Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.0),
                    child: Chip(

                      label: Text(e,style: TextStyle(fontSize: 18,fontFamily: 'Quicksand',fontWeight: FontWeight.w700),),
                      backgroundColor:   Color.fromARGB(255, 209, 200, 200).withOpacity(0.4),
                      ),
                  )).toList()
                ],),
                ],
              ),
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  mainAxisSpacing:8,
                  crossAxisSpacing: 8,
                  itemCount: 30,
                   itemBuilder: (context,index)=>buildImageCard(index), 
                   staggeredTileBuilder: (index)=> StaggeredTile.count(2, index.isEven?2:1))
              ),
            ],
          )
        ],
      )
    );
  }
  Widget buildImageCard(int index){
    List<String> image=[
      'assets/images/brocli.jpg',
      'assets/images/burger_meal.jpg',
      'assets/images/chicken.jpg',
      'assets/images/meal.jpg',
      'assets/images/pizza_catego.jpg',
      'assets/images/pizza_meal.jpg',
      'assets/images/pizza.jpg',
      'assets/images/rice_meal.jpg',
      'assets/images/sandwiches_catego.jpg',
      'assets/images/spagetti_meal.jpg',
        'assets/images/brocli.jpg',
      'assets/images/burger_meal.jpg',
      'assets/images/chicken.jpg',
      'assets/images/meal.jpg',
      'assets/images/pizza_catego.jpg',
      'assets/images/pizza_meal.jpg',
      'assets/images/pizza.jpg',
      'assets/images/rice_meal.jpg',
      'assets/images/sandwiches_catego.jpg',
      'assets/images/spagetti_meal.jpg',
        'assets/images/brocli.jpg',
      'assets/images/burger_meal.jpg',
      'assets/images/chicken.jpg',
      'assets/images/meal.jpg',
      'assets/images/pizza_catego.jpg',
      'assets/images/pizza_meal.jpg',
      'assets/images/pizza.jpg',
      'assets/images/rice_meal.jpg',
      'assets/images/sandwiches_catego.jpg',
      'assets/images/spagetti_meal.jpg',
    ];
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
      ),
      child: Container(decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image[index]),fit: BoxFit.cover)
      ),),
    );
  }
}