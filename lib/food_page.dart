import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mypuneapp/detailscrren.dart';
import 'package:mypuneapp/profilePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mypuneapp/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mypuneapp/model.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State createState() => _FoodState();
}

class _FoodState extends State {
  List<String> options = ['Uber', 'OLA', 'Rapido'];

  List<String> pmt = ["Moovit"];

  List<String> metro = ["Pune Metro"];

  String selectedOption = 'Select an option';
  String selectedpmt = 'Select an option';
  String selectedmetro = 'Select an option';

  List<String> spots = [
    "Vaishali",
    "Goodluck Café",
    "German Bakery",
    "Kayani Bakery",
    "Bedekar Misal ",
    "Vohuman Café",
    "Chitale Bandhu Mithaiwale",
    "Sujata Mastani ",
    "Joshi Wadewale",
    "Cafe Goodtimes",
    "Marz-o-Rin",
    "Cafe Peterdonuts",
    "Pune FC Road's Street Food",
    "Shabree Restaurant",
    "Wadeshwar",
    "FC Road's Ice Cream Parlors",
    "Tiranga Non-Veg",
    "Camp Burger",
    "Malaka Spice",
    "Barbeque Nation",
    "Little Italy",
    "Cafe Mosaic ",
    "Arthur's Theme",
    "The Urban Foundry",
    "Kalyani Veg",
    "Baan Tao"
  ];
  String selectedspot = "select";
  List iconImage = [
    "assets/icons/auto.webp",
    "assets/icons/car.png",
    "assets/icons/metro.webp",
    "assets/icons/pmt.png",
  ];

  final foodImage = [
    Image.asset(
      "assets/food/bhel.jpg",
    ),
    Image.asset("assets/food/camp.jpg"),
    Image.asset("assets/food/pavbhaji.jpg"),
  ];

  int myCurrentIndex = 0;
  int optid = 0;

  void _showOptionsDialog() {
    showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: options
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        setState(() {
                          selectedOption = option;
                          launchapp();
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  void _showOptionsDialogpmt() {
    showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: pmt
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        setState(() {
                          selectedpmt = option;
                          launchpmt();
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  void _showOptionsDialometro() {
    showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: ListBody(
              children: metro
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        setState(() {
                          selectedmetro = option;
                          launchmetro();
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }

// Explore Spots
  void _showspots() {
    showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return AlertDialog(
          title: const Text(
            "Food",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: spots
                  .map(
                    (option) => ListTile(
                      title: Text(option),
                      onTap: () {
                        setState(() {
                          selectedspot = option;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  void launchapp() {
    if (selectedOption == "Uber") {
      setState(() {
        _launchURL("www.uber.com");
      });
    } else if (selectedOption == "OLA") {
      _launchURL("www.olacabs.com");
    } else {
      _launchURL("www.rapido.bike");
    }
  }

  void launchpmt() {
    if (selectedpmt == "Moovit") {
      setState(() {
        _launchURL("www.moovitapp.com");
      });
    }
  }

  void launchmetro() {
    if (selectedmetro == "Pune Metro") {
      setState(() {
        _launchURL("www.punemetrorail.org");
      });
    }
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url*";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// App Bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 248, 237, 210),
        title: const Text(
          "Food",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),

      //Bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              backgroundColor: const Color.fromARGB(255, 248, 237, 210),
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home()));
                },
                child: const Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
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
                  onTap: () {
                    setState(() {
                      _launchURL("maps.google.com");
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
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const EditProfilePage(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ),
                ),
                label: "Account"),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: fooddata.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        (index == 0) ? getUpperColumefood() : const SizedBox(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const FullDetailfood()));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(6),
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 248, 237, 210),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 10,
                                      offset: Offset(10, 10),
                                      color: Color.fromRGBO(0, 0, 0, 0.15))
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                      "${fooddata[index].assetimage}"),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 250,
                                        child: Text(
                                          "${fooddata[index].name}",
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        "${fooddata[index].discription}",
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }

  Widget getUpperColumefood() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        // image Scroller Start
        SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: foodImage,
              ),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: foodImage.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Colors.grey.shade200,
                  activeDotColor: Colors.grey.shade900,
                  paintStyle: PaintingStyle.fill,
                ),
              )
            ],
          ),
        ),

        /// Image Scroll End

        const SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.topLeft,
            child: const Text(
              "Must Taste !!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Image.asset(
              "assets/spots/explore.jpg",
              height: 80,
              width: 80,
            ),
            const SizedBox(
              width: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 237, 210)),
              onPressed: () {
                _showspots();
              },
              child: const Text(
                "Click To Explore",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        // Travel Option box start
        Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          color: const Color.fromARGB(255, 248, 237, 210),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    //first row
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showOptionsDialog();
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 248, 237, 210),
                              ),
                              child: Image.asset(iconImage[0])),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showOptionsDialog();
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 248, 237, 210),
                              ),
                              child: Image.asset(iconImage[1])),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showOptionsDialometro();
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 248, 237, 210),
                              ),
                              child: Image.asset(iconImage[2])),
                        ),
                        GestureDetector(
                          onTap: () {
                            _showOptionsDialogpmt();
                          },
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromARGB(255, 248, 237, 210),
                              ),
                              child: Image.asset(iconImage[3])),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Auto ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          " Car ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Metro",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          " PMT ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //
              ),
            ],
          ),
        ),
        //Travel Option Box End
      ],
    );
  }
}
