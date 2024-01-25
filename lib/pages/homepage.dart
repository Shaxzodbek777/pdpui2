import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
static final String id = "HomePage";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List <String> _listItem= [
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpg',
    'assets/images/ic_image3.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white,),
        title: Text("Apple Products",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text("7", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.orange,
      body: Container(
        padding: (EdgeInsets.all(20)),
        child: Column(
          children: [
            //#header
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_image2.jpg'),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                        Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.3)
                    ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifsityle Sale", style: TextStyle(color: Colors.white, fontSize: 35),),
                    SizedBox(
                      height: 30,
                    ),
                    Container(

                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white
                      ),
                      child: Center(
                       child: Text("Shop Now"),

                      ),
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            //#body
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children: _listItem.map((item) => cellOfList(item)).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card (
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover
          )
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon (Icons.favorite, color: Colors.red, size: 40,),

          ],
        ),
      ),
    );
  }
}
