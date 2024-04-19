import 'package:flutter/material.dart';
import 'package:mypuneapp/food_page.dart';
import 'package:mypuneapp/hotelpage.dart';
import 'package:mypuneapp/profilePage.dart';
import 'package:mypuneapp/spots.dart';
import 'package:mypuneapp/model.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State createState() => _HomeState();
}

class _HomeState extends State {
  TextEditingController searchcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       
       unselectedLabelStyle:const  TextStyle(
        color: Colors.black
       ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items:  [
        BottomNavigationBarItem(
          
          backgroundColor: const Color.fromARGB(255, 248, 237, 210),
          icon: GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Home()));
            },
            child: const Icon(
                Icons.home_outlined,
                color: Colors.black,
              
            ),
          ),
          label: 'Home',

          
        ),
        BottomNavigationBarItem(
          icon:  GestureDetector(
            onTap: (){},
            child: const Icon(
                Icons.mode_of_travel_rounded,
                color: Colors.black,
              
            ),
          ),
          label: "Detail",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                 setState(() {
                      launchURL("maps.google.com");
                    });
              },
              child: const Icon(
                  Icons.travel_explore_rounded,
                  color: Colors.black,
                ),
            ),
            
            label: "Explore"),
        BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                 Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const EditProfilePage()));
              },
              child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.black,
                
              ),
            ),
            label: "Account"),
      ]),


      body: Stack(children: [
        Image.asset("assets/home/pune.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 330,
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(4, -4),
                        color: Color.fromARGB(255, 185, 184, 184),
                        blurRadius: 2)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                    
                      alignment: Alignment.topCenter,
                      child: const Text(
                        "Welcome to Pune !!",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const MySpots()));
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 140,
                                width: 140,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: Image.asset("assets/home/package.jpg"),
                              ),
                              const Text(
                                "Spots",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                             Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Food()));
                          },
                          child: Column(
                            children: [
                              Container(
                                  height: 140,
                                  width: 140,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Image.asset("assets/home/food.jpg")),
                              const Text(
                                "Food",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>  const Hotel()));
                          },
                          child: Column(
                            children: [
                              Container(
                                  height: 140,
                                  width: 140,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Image.asset("assets/home/hotel.jpg")),
                              const Text(
                                "Hotel",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                  height: 140,
                                  width: 140,
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: Image.asset("assets/home/package1.jpg")),
                              const Text(
                                "Packages",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        )
      ]),
    );
  }
}
