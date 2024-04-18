import 'package:flutter/material.dart';
import 'package:mypuneapp/inheritedfile.dart';
import 'package:mypuneapp/model.dart';

class FullDetail extends StatefulWidget{
  const FullDetail({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FullDetailState();
  }
  
}

class _FullDetailState extends State{

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