import'package:flutter/material.dart';
class dasboard extends StatefulWidget {
  const dasboard({super.key});

  @override
  State<dasboard> createState() => _dasboardState();
}

class _dasboardState extends State<dasboard> {
  var height, width;
  List imgsrc= [
    "images/Achievements.jpg",
    "images/alerts.jpg",
    "images/exam.png",
    "images/workshop.png",

  ];
  List titles = [
    "Add",
    "Fetch",
    "Remove",
    "Update"
  ];
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: width,
        height: height,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black
              ),
              height: height*0.25,
              width: width,
              child: Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35,
                      left: 15,
                      right: 15
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(
                        onTap: (){},
                        child: Icon(
                          Icons.sort,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      Container(
                        height:40,
                        width:40,
                         decoration:  BoxDecoration(
                           borderRadius: BorderRadius.circular(15),
                           color: Colors.white,
                           image: DecorationImage(
                             image: AssetImage("images/1.png")
                           )
                         ),

                      )
                    ],),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 30,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dashboard",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1
                        ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Last Updated 24 Jan 2024",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: height*0.1),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                  )
              ),
              height: height*0.75,
              width: width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    mainAxisSpacing: 25
                  ),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index){
                    return InkWell(
                      onTap: (){} ,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 1,
                              blurRadius: 6
                            )
                          ],

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(imgsrc[index],
                              width: 100,

                            ),
                            Text(
                            titles[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                      ),
                    );

                  })
            )
          ],
        ),
      ),

    );
  }
}
