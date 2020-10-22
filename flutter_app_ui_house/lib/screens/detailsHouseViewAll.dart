import 'package:flutter/material.dart';
import 'package:flutter_app_ui_house/animations/animation.dart';


class DetailsHouseViewAll extends StatefulWidget {
  DetailsHouseViewAll():super();
  @override
  _DetailsHouseViewAllState createState() => _DetailsHouseViewAllState();
}

class _DetailsHouseViewAllState extends State<DetailsHouseViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38.withOpacity(.9),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40)),
                image: DecorationImage(
                    image: AssetImage("images/architecture-1477041_1280.jpg"),
                    fit: BoxFit.cover
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SimpleAnimationOpacityTween(
                      delay: .9,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back,size: 30,), onPressed: (){
                        print("house");
                        Navigator.pop(context);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(

              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleAnimationOpacityTween(delay:1.6,child: Text("Villa Grand",style: TextStyle(fontSize: 25),)),
                    SimpleAnimationOpacityTween(delay:1.3,child: Text("Abidjan square, Côte d'Ivoire "))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    SimpleAnimationOpacityTween(
                      delay: 1.6,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
                            " Lorem Ipsum is simply dummy text of the printing and typesetting industry"
                            " Lorem Ipsum is simply dummy text of",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SimpleAnimationOpacityTween(delay:1.4,child: Text("Price",style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity(.5)),)),
                            SizedBox(height: 10,),
                            SimpleAnimationOpacityTween(delay: 1.5,child: Text("\$1254",style: TextStyle(fontSize: 20),))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(

                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SimpleAnimationOpacityTween(delay:1.8,child: Text("Reviews",style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity(.5)),)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SimpleAnimationOpacityTween(delay:1.2,child: Icon(Icons.star,color: Colors.green,)),
                              SimpleAnimationOpacityTween(delay:1.4,child: Icon(Icons.star,color: Colors.green,)),
                              SimpleAnimationOpacityTween(delay:1.6,child: Icon(Icons.star,color: Colors.green,)),
                              SimpleAnimationOpacityTween(delay:1.8,child: Icon(Icons.star_half,color: Colors.green,))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SimpleAnimationOpacityTween(delay:1.3,child: Text("Recently ",style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity(.5)),)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SimpleAnimationOpacityTween(delay:1.5,child: onContainer("images/architecture-1477099_1280.jpg")),
                              SimpleAnimationOpacityTween(delay:1.7,child: onContainer("images/architecture-1477099_1280.jpg")),
                              SimpleAnimationOpacityTween(delay:1.9,child: onContainer("images/architecture-1477099_1280.jpg")),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
              ),
              child: Padding(
                padding: EdgeInsets.only(left:10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SimpleAnimationOpacityTween(delay:1.3,child: Text("Aminities")),
                    Row(
                      children: [
                        SimpleAnimationOpacityTween(delay:1.3,child: onIcon(Icons.home,"home")),
                        SimpleAnimationOpacityTween(delay:1.5,child: onIcon(Icons.home,"home")),
                        SimpleAnimationOpacityTween(delay:1.7,child: onIcon(Icons.home,"home")),
                        SimpleAnimationOpacityTween(delay:1.9,child: onIcon(Icons.home,"home")),
                        SimpleAnimationOpacityTween(delay:2.1,child: onIcon(Icons.home,"home")),
                        SimpleAnimationOpacityTween(delay:2.3,child: onIcon(Icons.home,"home")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      flex:2,
                      child: SimpleAnimationOpacityTween(
                        delay: 1.5,
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.favorite_border,color: Colors.green,),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      flex:8,
                      child: SimpleAnimationOpacityTween(
                        delay: 1.8,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text("Buy Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget onContainer(String image){
    return Container(
      width: 35,
      height: 35,
      decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
          )
      ),
    );
  }
  Widget onIcon(IconData iconData,String title){
    return Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(.4)
            ),
            child: Icon(iconData,color: Colors.green),
          ),
          Text(title,)
        ],
      ),
    ) ;
  }
}
