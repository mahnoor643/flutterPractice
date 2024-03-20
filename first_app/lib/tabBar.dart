import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    //Carousel or Slider Images list
      List Mydat = [
    {"id":1,"imgPath":"assets/images/banner1.png"},
    {"id":2,"imgPath":"assets/images/banner2.png"},
    {"id":3,"imgPath":"assets/images/banner3.png"},
  ];
  final CarouselController carouselController = CarouselController ();
  int currentIndex = 0;

    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 157, 212),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.flight,color: Colors.white,)),
          Tab(icon: Icon(Icons.directions,color: Colors.white,),),
          Tab(icon: Icon(Icons.directions_bike,color: Colors.white,),),
        ],
        indicatorColor: Colors.purple,
        indicatorWeight: 4,),
      ),
      body: TabBarView(children: [
        //First screen widget
         Column(
       children: [
         Text('First Text'),
         SizedBox(height: 30,),
         Text('First Text'),
         SizedBox(height: 30,),
         Text('First Text'),
          SizedBox(height: 30,),
         Text('First Text'),
       ],
     ),
     //Second screen widget
       Column(children: [
        Stack(
          children: [
            InkWell(
              onTap: (){
                print('slider');
              },
              child: CarouselSlider(
                 items: Mydat
                .map(
                  (item) => Image.asset(
                      item['imgPath'],
                       fit: BoxFit.cover,
                      width: double.infinity,
                )
              ).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                 
                ),),)],)],),
     //Third Screen Widget
     Container(color: Color.fromARGB(255, 175, 76, 84),width: 500,height: 50,)
      ],),
    ));
  }
}