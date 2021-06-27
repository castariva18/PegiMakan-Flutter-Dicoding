part of 'view.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pegi Makan"),
        backgroundColor: Color(0xFF2d3463),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                color: Color(0xFFF7A538)),
            height: 230,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                _horizontalHeadContent(context),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 10.0, left: 16.0),
                child: Text(
                  "List retaurant",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          _contentPage(context),
        ],
      ),
    );
  }
}

Widget _contentPage(BuildContext context) => Expanded(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return FoodPlaceList();
              } else if (constraints.maxWidth <= 1200) {
                return FoodPlaceGrid(gridCount: 4);
              } else {
                return FoodPlaceGrid(gridCount: 6);
              }
            },
          );
        },
      ),
    );

Widget _horizontalHeadContent(BuildContext context) => Expanded(
      child: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://admaterials.files.wordpress.com/2013/09/2013-09-20-kompas-mandiri.jpg?w=300&h=200&crop=1"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider

              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.diskonpromosi.com/wp-content/uploads/2020/12/108-300x200.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider

              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cashbac.com/blog/wp-content/uploads/2019/09/Image-Blog-HSBC_McD-300x200.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider

              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.shoppirate.in/blog/wp-content/uploads/2018/08/My-Starbucks-Rewards.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider

              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://asset-a.grid.id/crop/0x0:759x500/360x240/photo/2021/01/11/2265822499.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties

            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );

class FoodPlaceGrid extends StatelessWidget {
  final int gridCount;

  FoodPlaceGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: foodPlaceList.map((place) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        place.name,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        place.location,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class FoodPlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2 / 2.3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          final FoodPlace place = foodPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Expanded(
                      flex: 1,
                      child: Image.asset(place.imageAsset),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: foodPlaceList.length,
      ),
    );
  }
}
