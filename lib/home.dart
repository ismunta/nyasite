import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:bulleted_list/bulleted_list.dart';
class MyHome extends StatefulWidget {
   MyHome({super.key});
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _current = 0;
  final List<String> routes= [
        "NYA LAUNCHS YOUTH ACTION GROUP ON CLIMATE CHANGE",
        "CEO OF NYA MEETS WITH CHINESE PRESIDENT",
        "CEO OF NYA COURTS OTUMFOUR ",
        "GOVERNING BODY OF NYA MEETS DIRECTORS AND REGIONAL EXECUTIVES"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("National Youth Authority"),
            SizedBox(width: 200,),
             Row(
              children: [
                Text("Home"),
                SizedBox(width: 20,),
                Text("NYA Initiatives"),
                SizedBox(width: 20,),
                Text("Youth Connect GH"),
                SizedBox(width: 20,),
                Text("Media"),
                SizedBox(width: 20,),
                Text("Contact"),
                SizedBox(width: 20,),
                Text("NYVP"),
              ],
            ),


          ],
        ),
        centerTitle: true,
        titleSpacing: 22,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                        Stack(
                          children: [
                            CarouselSlider(
                            items: [
                              "imgs/Board_meeting-shs7h9.JPG",
                              "imgs/chineese& CEO-2uxw7z.jpg",
                              "imgs/climate_Change-b9di6c.jpg",
                              "imgs/IMG_9596-u9w70y.jpg",
                            ].map((i){
                              return  Image.asset("$i",fit: BoxFit.fill, width: 1800,);
                            }).toList(),
                            options: CarouselOptions(
                              onPageChanged: (index,reason){
                                setState(() {
                                  _current=index;
                                });
                              },
                              aspectRatio: 18/9,
                              disableCenter: true,
                              //height: 900,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              //enlargeFactor: 1,
                            ),
                           ),
                            Padding(
                              padding: const EdgeInsets.only(top:28.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 1200,
                                    height: 50,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top:12.0),
                                      child: AspectRatio(
                                        aspectRatio: 18/8,
                                        child: Text(routes[_current],style: const TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 3,
                                            //fontFamily:'Ele'
                                        ),
                                          textAlign: TextAlign.center,),
                                      ),
                                    ),

                                  ),
                                ],
                              ),
                            )
                          ]
                        ),

                        Container(
                        height: 150,
                        color: Colors.red,
                      ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 780,left: 220),
                  width: 1260,
                  height: 200,
                  color: Colors.white,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text("The NYA exists to provide relevant and conducive environment that defines and "
                          "supports the implementation"
                          " of effective frontline youth empowerment practices, "
                          "focusing on young people’s participation in socio-economic and "
                          "political development whist facilitating private and third sector provider "
                          "investments in youth empowerment.",
                           style: TextStyle(fontSize: 22,color: Colors.blue),textAlign: TextAlign.start,),
                    ),
                  ),
                )
            ]
            ),
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text("Latest News",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                 const Text("Get the latest updates and blog posts from the NYA and its team. We're constantly updating \n this website with the latest events and programmes.",textAlign: TextAlign.center,),
              Container(
                color: Colors.white,
                width: 1250,
                child: SingleChildScrollView(
                  primary: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //color: Colors.white,
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("imgs/Board_meeting-shs7h9.JPG",
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                              scale: 6,),
                            const Text("2024 National Youth Conference: NYA convenes over 2000 young Ghanaians, sets course for digital revolution",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.start,),
                            const Text("The Minister for Youth and Sports, Hon.Mustapha Ussif has tasked the Youth Sector Working Group to work assiduously to change the apparent unproductive current situation of the Ghanaian youth.",
                              style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("imgs/Board_meeting-shs7h9.JPG",
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                              scale: 6,),
                            const Text("2024 National Youth Conference: NYA convenes over 2000 young Ghanaians, sets course for digital revolution",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.start,),
                            const Text("The Minister for Youth and Sports, Hon.Mustapha Ussif has tasked the Youth Sector Working Group to work assiduously to change the apparent unproductive current situation of the Ghanaian youth.",
                              style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("imgs/Board_meeting-shs7h9.JPG",
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                              scale: 6,),
                            const Text("2024 National Youth Conference: NYA convenes over 2000 young Ghanaians, sets course for digital revolution",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.start,),
                            const Text("The Minister for Youth and Sports, Hon.Mustapha Ussif has tasked the Youth Sector Working Group to work assiduously to change the apparent unproductive current situation of the Ghanaian youth.",
                              style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("imgs/Board_meeting-shs7h9.JPG",
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                              scale: 6,),
                            const Text("2024 National Youth Conference: NYA convenes over 2000 young Ghanaians, sets course for digital revolution",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.start,),
                            const Text("The Minister for Youth and Sports, Hon.Mustapha Ussif has tasked the Youth Sector Working Group to work assiduously to change the apparent unproductive current situation of the Ghanaian youth.",
                              style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Container(
                        width: 400,
                        child: Column(
                          children: [
                            Image.asset("imgs/Board_meeting-shs7h9.JPG",
                              height: 250,
                              width: 400,
                              fit: BoxFit.cover,
                              scale: 6,),
                            const Text("2024 National Youth Conference: NYA convenes over 2000 young Ghanaians, sets course for digital revolution",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),textAlign: TextAlign.start,),
                            const Text("The Minister for Youth and Sports, Hon.Mustapha Ussif has tasked the Youth Sector Working Group to work assiduously to change the apparent unproductive current situation of the Ghanaian youth.",
                              style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
                 Container(
                   color: Colors.white,
                   child: Column(
                     children: [
                       const SizedBox(height: 200,),
                       const Text("Youth Development Initiative",
                         style: TextStyle(
                           fontSize: 32,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                       const Text("These are Initiatives  being run by the Authority. "
                           "Click on each and view the details.",
                         style: TextStyle(
                           fontSize: 18,
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Container(
                               height: 400,
                               width: 280,
                               color: Colors.black12,
                               child:  Column(
                                 children: [
                                   const Padding(
                                     padding: EdgeInsets.only(bottom: 38.0,top:18),
                                     child: Icon(FontAwesomeIcons.users,),
                                   ),
                                   const Text("Youth Policy, Governance \n and Leadership",
                                     style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                     textAlign: TextAlign.center,
                                   ),
                                  const SizedBox(height: 10,),
                                   const Divider(color: Colors.black,indent: 120,endIndent: 120,thickness: 2,),
                                   const SizedBox(height: 10,),
                                   const Padding(
                                     padding: EdgeInsets.all(18.0),
                                     child: Text("The NYA seeks to build the capacity of the youth in governance",
                                       style: TextStyle(fontSize: 18),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),
                                   ElevatedButton(
                                     onPressed: (){},
                                     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                                     child: const Text("LEARN MORE",style:TextStyle(color: Colors.white)),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Container(
                               height: 400,
                               width: 280,
                               color: Colors.black12,
                               child:  Column(
                                 children: [
                                   const Padding(
                                     padding: EdgeInsets.only(bottom: 38.0,top:18),
                                     child: Icon(FontAwesomeIcons.users,),
                                   ),
                                   const Text("Youth Policy, Governance \n and Leadership",
                                     style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                     textAlign: TextAlign.center,
                                   ),
                                  const SizedBox(height: 10,),
                                   const Divider(color: Colors.black,indent: 120,endIndent: 120,thickness: 2,),
                                   const SizedBox(height: 10,),
                                   const Padding(
                                     padding: EdgeInsets.all(18.0),
                                     child: Text("The NYA seeks to build the capacity of the youth in governance",
                                       style: TextStyle(fontSize: 18),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),
                                   ElevatedButton(
                                     onPressed: (){},
                                     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                                     child: const Text("LEARN MORE",style:TextStyle(color: Colors.white)),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Container(
                               height: 400,
                               width: 280,
                               color: Colors.black12,
                               child:  Column(
                                 children: [
                                   const Padding(
                                     padding: EdgeInsets.only(bottom: 38.0,top:18),
                                     child: Icon(FontAwesomeIcons.users,),
                                   ),
                                   const Text("Youth Policy, Governance \n and Leadership",
                                     style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                     textAlign: TextAlign.center,
                                   ),
                                  const SizedBox(height: 10,),
                                   const Divider(color: Colors.black,indent: 120,endIndent: 120,thickness: 2,),
                                   const SizedBox(height: 10,),
                                   const Padding(
                                     padding: EdgeInsets.all(18.0),
                                     child: Text("The NYA seeks to build the capacity of the youth in governance",
                                       style: TextStyle(fontSize: 18),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),
                                   ElevatedButton(
                                     onPressed: (){},
                                     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                                     child: const Text("LEARN MORE",style:TextStyle(color: Colors.white)),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(20.0),
                             child: Container(
                               height: 400,
                               width: 280,
                               color: Colors.black12,
                               child:  Column(
                                 children: [
                                   const Padding(
                                     padding: EdgeInsets.only(bottom: 38.0,top:18),
                                     child: Icon(FontAwesomeIcons.users,),
                                   ),
                                   const Text("Youth Policy, Governance \n and Leadership",
                                     style:TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                     textAlign: TextAlign.center,
                                   ),
                                  const SizedBox(height: 10,),
                                   const Divider(color: Colors.black,indent: 120,endIndent: 120,thickness: 2,),
                                   const SizedBox(height: 10,),
                                   const Padding(
                                     padding: EdgeInsets.all(18.0),
                                     child: Text("The NYA seeks to build the capacity of the youth in governance",
                                       style: TextStyle(fontSize: 18),
                                       textAlign: TextAlign.center,
                                     ),
                                   ),
                                   ElevatedButton(
                                     onPressed: (){},
                                     style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
                                     child: const Text("LEARN MORE",style:TextStyle(color: Colors.white)),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                       const SizedBox(height: 50,),
                        Container(
                          height: 610,
                          color: Colors.black12,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              const Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text("Upcoming International & National Events 2024",
                                 style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),
                                 ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 80.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset("imgs/WhatsApp Image 2024-07-30 at 4.16.37 PM.jpeg",height: 500,width: 800,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                       SizedBox(height: 20,),

                       Container(
                         height: 500,
                         width: MediaQuery.of(context).size.width,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Infrastructural Projects",
                               style: TextStyle(fontSize: 32),
                             ),
                             //SizedBox(height: 10,),
                             const Divider(color: Colors.blue,indent: 820,endIndent: 820,thickness: 2,),
                             SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                Container(
                                  height: 200,
                                  width: 400,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                                  child: Stack(children: [
                                    Image.asset("imgs/WhatsApp Image 2024-08-14 at 2.43.13 PM.jpeg",
                                      fit: BoxFit.fitWidth,
                                      width: 400,
                                    ),
                                    const Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Text("Construction of 300 bed capacity dormitories",
                                          style:TextStyle(
                                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                    )
                                  ],),
                                ),
                                SizedBox(width: 20,),
                                Container(
                                  height: 200,
                                  width: 400,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                                  child: Stack(children: [
                                    Image.asset("imgs/WhatsApp Image 2024-08-14 at 2.43.13 PM.jpeg",
                                      fit: BoxFit.fitWidth,
                                      width: 400,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(28.0),
                                      child: Text("Construction of 300 bed capacity dormitories",
                                          style:TextStyle(
                                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                    )
                                  ],),
                                ),
                                 SizedBox(width: 20,),
                                Container(
                                  height: 200,
                                  width: 400,
                                  //decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                                  child: Stack(children: [
                                    Image.asset("imgs/WhatsApp Image 2024-08-14 at 2.43.13 PM.jpeg",
                                      fit: BoxFit.fitWidth,
                                      width: 400,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(28.0),
                                      child: Text("Construction of 300 bed capacity dormitories",
                                          style:TextStyle(
                                              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                    )
                                  ],),
                                ),
                               ],
                             ),

                           ],
                         ),
                       ),
                       const SizedBox(height: 20,),
                       Container(
                         color: Color(0x24E0D7D5),
                         height: 700,
                         width: MediaQuery.of(context).size.width,
                         child: Column(
                           children: [
                             const Padding(
                               padding: EdgeInsets.only(top: 100.0,bottom: 20),
                               child: Text("Get the latest news, trends and tips on our social media handles",
                                 style:
                                 TextStyle(color: Colors.blue,),
                               ),
                             ),
                             const Text("Media",
                               style:
                               TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),
                             ),

                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   width: 400,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       const Text("LIKE US ON FACEBOOK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                       const Divider(
                                         endIndent: 320,
                                         indent: 0,
                                         color: Colors.blue,
                                         thickness: 2,
                                       ),
                                       Image.asset("imgs/271738712_6803179229756746_5803261278182207586_n.jpg",height: 200,width: 350,)
                                     ],
                                   ),
                                 ),
                                 const SizedBox(width :150,),
                                 Padding(
                                   padding: const EdgeInsets.only(top: 70.0),
                                   child: Container(
                                     height: 300,
                                     width: 400,
                                     color: Colors.blue,
                                   ),
                                 )
                               ],
                             ),
                           ],
                         ),
                       ),
                       Column(
                         children: [
                           Text("NYA Gallery",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                           Container(
                             width: 1250,
                             height: 500,
                             //color: Colors.blue,
                             child: Padding(
                               padding: EdgeInsets.only(top: 60),
                               child: GridView(
                                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6,mainAxisSpacing: 10,crossAxisSpacing: 10,
                                       //mainAxisExtent: 200
                                   ),
                                 children: [
                                   Container(
                                     child: Image.asset("imgs/IMG_9596-u9w70y.jpg",fit: BoxFit.cover),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/IMG_9596-u9w70y.jpg",fit: BoxFit.cover),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/Board_meeting-shs7h9.JPG",fit: BoxFit.cover),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/otumfour_slider1-u1qr80.jpg",fit: BoxFit.cover),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/otumfour_slider1-u1qr80.jpg",fit: BoxFit.cover),
                                   ),
                                   Container(
                                     //padding: const EdgeInsets.all(8),
                                     color: Colors.teal[600],
                                     child: Image.asset("imgs/climate_Change-b9di6c.jpg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     padding: const EdgeInsets.all(8),
                                     color: Colors.teal[100],
                                     child: Image.asset("imgs/WhatsApp Image 2024-08-12 at 4.32.01 PM.jpeg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/271738712_6803179229756746_5803261278182207586_n.jpg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/WhatsApp Image 2024-08-12 at 4.32.01 PM.jpeg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/WhatsApp Image 2024-08-12 at 4.32.01 PM.jpeg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/WhatsApp Image 2024-08-12 at 4.32.01 PM.jpeg",fit: BoxFit.cover,),
                                   ),
                                   Container(
                                     child: Image.asset("imgs/WhatsApp Image 2024-08-14 at 2.43.13 PM.jpeg",fit: BoxFit.cover,),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                       SizedBox(height: 20,),
                       Container(
                         height: 200,
                         width: 1250,
                         //color: Colors.black12,
                         child: CarouselSlider(
                             items: [
                               "imgs/action_aid.PNG",
                               "imgs/columbia_embassy.PNG",
                               "imgs/giz.PNG",
                               "imgs/action_aid.PNG",
                             ].map((a){
                               return Image.asset("$a",fit: BoxFit.cover,);
                             }).toList(),
                             options: CarouselOptions(
                                autoPlay: true,
                               reverse: false,
                               autoPlayInterval: Duration(microseconds: 1),
                             ),
                         ),
                       ),
                       SizedBox(height: 50,),
                     ],
                   ),
                 ),
               ],
             ),
            Container(
              color: Color(0xF2010116),
                height: 500,
                width:MediaQuery.of(context).size.width,
              child:  Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("CONTACT INFO",
                              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                endIndent: 220,
                                //indent: 0,
                                color: Colors.white,
                                thickness: 2,
                              ),
                              SizedBox(height: 20,),
                              Row(children: [
                                Icon(Icons.home,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Azumah Nelson Youth and Sports ",style: TextStyle(color: Colors.white),),
                              ],),
                              SizedBox(height: 10,),
                              Text("Complex, Kaneshie, Accra",style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              Row(children: [
                                Icon(Icons.phone,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("+233 302 - 221 246",style: TextStyle(color: Colors.white),),
                                SizedBox(height: 20,),
                              ],),
                              SizedBox(height: 10,),
                              Row(children: [
                                Icon(Icons.location_city,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Digital Address : GA-172-6005",style: TextStyle(color: Colors.white),),
                              ],),
                              SizedBox(height: 10,),
                              Row(children: [
                                Icon(Icons.email,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("admin@nya.gov.gh",style: TextStyle(color: Colors.white),),
                              ],),
                              SizedBox(height: 10,),
                              Row(children: [
                                Icon(Icons.facebook,color: Colors.white,),
                                SizedBox(width: 10,),
                                Text("Facebook",style: TextStyle(color: Colors.white),),
                              ],),

                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          child:  const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("LINK FOOTER",
                              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                endIndent: 220,
                                //indent: 0,
                                color: Colors.white,
                                thickness: 2,
                              ),
                              SizedBox(height: 20,),
                              InkWell(
                                child: BulletedList(
                                    style: TextStyle(color:Colors.white),
                                    bulletColor: Colors.white38,
                                    listItems: [
                                      "About Us",
                                      "News Update",
                                      "Programmes",
                                      "Press Release",
                                      "FAQS",
                                      "NYVP",
                                      "Privacy Policy"
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Twitter block - Light",
                              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),
                              ),
                              const Divider(
                                endIndent: 220,
                                //indent: 0,
                                color: Colors.white,
                                thickness: 2,
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                height:200,
                                //color:Colors.green,
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("imgs/download (1).png"),
                                      const Text("Nothing to \n see here - yet",
                                        style:TextStyle(color:Colors.white,fontSize: 32,fontWeight: FontWeight.bold),
                                      ),
                                      const Text("When they post, their \n posts will show up here",
                                        style:TextStyle(color:Colors.white),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 28.0),
                                        child: Container(
                                          height: 50,
                                          width: 150,
                                          child: OutlinedButton(
                                              onPressed: (){},
                                              child: Text("View on X",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue,),
                                          ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("NEWSLETTER SUBSCRIPTION",
                              style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                              ),
                              const Divider(
                                endIndent: 220,
                                //indent: 0,
                                color: Colors.white,
                                thickness: 2,
                              ),
                              const SizedBox(height: 20,),
                              const Text("Efforts at enhancing the overall development of young people "
                                  "are therefore considered crucial to our national development agenda.",
                                style: TextStyle(color:Colors.white,fontSize: 15),
                              ),
                              const SizedBox(height: 20,),
                              Container(
                                  width: 300,height: 50,
                                  color:Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          //labelText: 'Enter your username',
                                        ),
                                      ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: 300,height:30,
                                child: ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(),
                                      backgroundColor: Colors.blue
                                      //MaterialStatePropertyAll<Color>(Colors.blue,
                                      ),
                                  onPressed: (){},
                                  label: Text("SUBSCRIBE",style: TextStyle(color:Colors.white),),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Text("© Copyright NYA 2024. All Rights Reserved. ",style: TextStyle(color:Colors.white),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );


  }
}
