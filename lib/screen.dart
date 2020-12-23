import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String> mycate=["Food","Adventure","Art"];
  List<String> cities=["Dhahran","Riyadh","Riyadh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child:   Padding(
                    padding: const EdgeInsets.only(left: 00, right: 00,top: 05),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Theme(
                        data: new ThemeData(
                          primaryColor: Colors.transparent,
                          primaryColorDark: Colors.transparent,

                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,

//                      border: new OutlineInputBorder(
//                          borderSide: new BorderSide(color: Colors.transparent,width: 0.0)),
                            contentPadding:
                            EdgeInsets.only(top: 14,bottom: 08,left: 20,right: 10), // add padding to adjust icon
                            isDense: true,
                            hintText: "Search Anything",
                            suffixIcon: Padding(
                              padding:
                              EdgeInsets.only(top: 08,bottom: 08,left: 10,right: 20), // add padding to adjust icon
                              child: InkWell(
                                  onTap: (){
                                  },
                                  child: Icon(Icons.filter_alt_outlined, size: 25,color: Colors.black.withOpacity(.5),)),
                            ),
                            prefixIcon: Padding(
                              padding:
                              EdgeInsets.only(top: 08,bottom: 08,left: 10,right: 20), // add padding to adjust icon
                              child: InkWell(
                                  onTap: (){
                                  },
                                  child: Icon(Icons.search, size: 25,color: Colors.black.withOpacity(.5),)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
             SizedBox(height: 10,),
             Container(

               height: 213,
               child: Carousel(
                  images: [
                    Stack(
                      children: [
                        Image.asset("assets/image.png"),
                        Image.asset("assets/background.png"),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Connect Hobbyist",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w800),),
                              Text("With Passion Expert",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w800),),

                            ],
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset("assets/image.png"),
                        Image.asset("assets/background.png"),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Connect Hobbyist",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w800),),
                              Text("With Passion Expert",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w800),),

                            ],
                          ),
                        )
                      ],
                    )

                  ],
                 dotSize: 5.0,
                 dotBgColor: Colors.transparent,
                 indicatorBgPadding: 4.0,
                 dotSpacing: 15.0,


               ),
             ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore By Category",style: TextStyle(
                      fontFamily: "Segui"
                  ),),
                  Icon(Icons.arrow_forward,color: Colors.black.withOpacity(.8),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: mycate.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return  Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Categorybox(mycate[index], mycate[index])
                    );
                  },
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("This Week Experiences ",style: TextStyle(
                      fontFamily: "Segui"
                  ),),
                  Icon(Icons.arrow_forward,color: Colors.black.withOpacity(.8),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 370,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                          image: AssetImage("assets/bg.png"),
                            fit: BoxFit.fill
                        )
                      )
                      ),
                     SizedBox(height: 10,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(" Little Picasso ",style: TextStyle(
                             fontFamily: "Segui",
                           fontSize: 25,
                           fontWeight: FontWeight.w700
                         ),),
                         Container(
                           child: Row(
                             children: [
                               Container(
                                   height:30,
                                   width: 30,
                                   child: Image.asset("assets/rating.png")),
                               Text(
                                 " (46)"
                               )
                             ],
                           ),

                         )

                       ],

                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 08),
                        child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna..... ",style: TextStyle(
                            fontFamily: "Segui",
                          fontSize: 10,
                          color: Colors.black.withOpacity(.4)
                        ),),
                      ),
                    SizedBox(height:10),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset("assets/icons.png"),
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.red)),
                                onPressed: () {},
                                color: Colors.white,
                                textColor: Colors.red,
                                child: Text(" 135 RS".toUpperCase(),
                                    style: TextStyle(fontSize: 14)),
                              ),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore The Experience In Other Cities ",style: TextStyle(
                      fontFamily: "Segui"
                  ),),
                  Icon(Icons.arrow_forward,color: Colors.black.withOpacity(.8),)
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cities.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return  Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Categorybox(cities[index], cities[index])
                    );
                  },
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }

  Widget Categorybox(String imagename, String name){
    return  Container(
      height: 180,
      width: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage("assets/"+imagename+".png"),
              fit: BoxFit.fitWidth
          )
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xFF4A787D).withOpacity(.48),

            ),
          ),
          Center(child: Text(name,style: TextStyle(
            fontFamily: "Segui",
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),),)
        ],
      ),
    );
  }
}
