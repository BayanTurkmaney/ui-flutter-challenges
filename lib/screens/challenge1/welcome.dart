import 'package:flutter/material.dart';
import 'package:food_ui_challenge1/screens/challenge1/home.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
             Padding(
              padding: const EdgeInsets.fromLTRB(15, 55, 15, 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(59, 182, 149, 149).withOpacity(0.3)
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    
                    hintText: 'Search for new recipies',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "OpenSans"
                    )
                  ),
                ),
              ),
             ),
            const SizedBox(height: 400,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Fast Food',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 60),),
                   const Text('welcome to you at new deliciouse meals. contact us to explore the newest delivery fast food',
                    style: TextStyle(
                       fontFamily: 'Quicksand',
                      color: Colors.white70,fontSize: 17),
                   ),
                ],
              ),),
            const SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_){
                    return HomeScreen();
                  })
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 30),
                ),
              ),
            )
            ],
          ),
        )
      ],
    );
  
  }
  // ignore: non_constant_identifier_names
  Widget BackgroundImage(){
    return  ShaderMask(
      shaderCallback: (rect) => const LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Colors.black, Colors.transparent],
      ).createShader(rect),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pizza.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(Colors.white,
             BlendMode.darken),
          ),
        ),
      ),
    );
  }
}