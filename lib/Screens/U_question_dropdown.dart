import 'package:flutter/material.dart';
//import 'package:uff/screens/User%20Screen/city_by_search_dish.dart';
//import 'package:uff/screens/User%20Screen/try_somthing_new.dart';




class Question extends StatefulWidget {
  final int index1;
  const Question({Key? key, required this.index1}) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child:Card(margin: EdgeInsets.only(left: 12,bottom: 5,right: 12),
        elevation: 0.5,
        child: AnimatedContainer(
            curve: Curves.decelerate,
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.symmetric(vertical: 0.4),
            height: _isExpanded ? size.height*0.14:size.height*0.055 ,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 7,),
            alignment: Alignment.center,

            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 7.4),
                          // width: 6,
                          // height: 0,
                          // decoration: BoxDecoration(
                          //   color: Colors.black,
                          //   borderRadius: BorderRadius.circular(3),
                          // ),
                        ),
                        Text(
                          "QUESTION ${widget.index1 + 1}",
                          style: TextStyle(fontFamily: "Montserrat",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,letterSpacing: -0.05,color: Color(0xFF414141)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),

                    Container(width: size.width*0.10,
                      child: RotatedBox(
                        quarterTurns: _isExpanded ? 2 : 0,
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,color: Colors.lightBlue,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                if (_isExpanded)
                  Expanded(
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (){

                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => Login()),
                                // );
                                ;
                              },
                              child: Container(padding: EdgeInsets.only(top: 5),
                                height: MediaQuery.of(context).size.width*0.14,
                                width: MediaQuery.of(context).size.width*0.85,

                                child: Text("This is a food app where you can find evrything what you want to eat, we are very strict about hygine.",
                                style: TextStyle(fontFamily: "Montserrat",
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,letterSpacing: -0.05,color: Color(0xFF414141)),),
                                // child: Card(
                                //   elevation: 2,
                                //   child:ListTile(
                                //     title: Column(
                                //       mainAxisAlignment: MainAxisAlignment.start,
                                //       crossAxisAlignment: CrossAxisAlignment.start,
                                //       children: [
                                //         Row(
                                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //           children: [
                                //             Text("Questions",style: TextStyles.mn14,),
                                //             Icon(Icons.arrow_forward_ios,size: 16, color: ColorPallete.blue,)
                                //           ],
                                //         ),
                                //         SizedBox(height: 10),
                                //        // Text("littel bit of dish 1",style: TextStyles.mb12,)
                                //       ],
                                //     ),
                                //   ),
                                // ),
                              ),
                              
                            ),
                          ],
                        ),
                      )
                  )
                else
                  const SizedBox(),
              ],
            )

        ),
      )

    );
  }
}
