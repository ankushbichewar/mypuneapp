import 'package:flutter/material.dart';
import 'package:mypuneapp/inheritedfile.dart';
import 'package:mypuneapp/model.dart';

class FullDetailSpots extends StatefulWidget{
  const FullDetailSpots({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FullDetailSpotsState();
  }
  
}

class _FullDetailSpotsState extends State{

  @override
  Widget build(BuildContext context){
    SharedData objre=SharedData.of(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset( "${spotsdata[objre.data].assetimage}",
              fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 40
                    ),
                    decoration: const BoxDecoration( 
                      color:  Color.fromARGB(255, 248, 237, 210),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )
                    ),
                    child: Column(
                      children: [
                         Text( "${spotsdata[objre.data].name}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        const SizedBox(height: 30,),
                        Text( "${spotsdata[objre.data].discription}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class FullDetailfood extends StatefulWidget{
  const FullDetailfood({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FullDetailfoodsState();
  }
  
}

class _FullDetailfoodsState extends State{

  @override
  Widget build(BuildContext context){
    SharedData objre=SharedData.of(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset( "${fooddata[objre.data].assetimage}",
              fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 40
                    ),
                    decoration: const BoxDecoration( 
                      color:  Color.fromARGB(255, 248, 237, 210),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )
                    ),
                    child: Column(
                      children: [
                         Text( "${fooddata[objre.data].name}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        const SizedBox(height: 30,),
                        Text( "${fooddata[objre.data].discription}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


class FullDetailhotels extends StatefulWidget{
  const FullDetailhotels({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FullDetailhotelsState();
  }
  
}

class _FullDetailhotelsState extends State{

  @override
  Widget build(BuildContext context){
    SharedData objre=SharedData.of(context);
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset( "${hoteldata[objre.data].assetimage}",
              fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 40
                    ),
                    decoration: const BoxDecoration( 
                      color:  Color.fromARGB(255, 248, 237, 210),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )
                    ),
                    child: Column(
                      children: [
                         Text( "${hoteldata[objre.data].name}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        const SizedBox(height: 30,),
                        Text( "${hoteldata[objre.data].discription}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}