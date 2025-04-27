import 'package:flutter/material.dart';
import 'package:katyani_organics_task/widgets/bestsellers_widget.dart';
import 'package:katyani_organics_task/widgets/category_widget.dart';
import 'package:katyani_organics_task/widgets/featured_widget.dart';
import 'package:katyani_organics_task/widgets/offer_widget.dart';
import 'package:katyani_organics_task/widgets/trending_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.only(top: 40, left: 10),
                  height: MediaQuery.of(context).size.height * 0.575,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Blinkit in",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "12 minutes",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Near XYZ , XYZ Nagar, City",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                suffixIcon: Icon(
                                  Icons.mic,
                                  color: Colors.white,
                                ),
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                fillColor: Color.fromRGBO(47, 47, 55, 1),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            CategoryWidget(
                              title: "All",
                              icon: Icons.all_inbox,
                              isSelected: true,
                            ),
                            CategoryWidget(
                              title: "Summer",
                              icon: Icons.sunny,
                              isSelected: false,
                            ),
                            CategoryWidget(
                              title: "Electronics",
                              icon: Icons.headphones,
                              isSelected: false,
                            ),
                            CategoryWidget(
                              title: "Beauty",
                              icon: Icons.brush,
                              isSelected: false,
                            ),
                            CategoryWidget(
                              title: "Kids",
                              icon: Icons.toys_outlined,
                              isSelected: false,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          OfferWidget(
                            image:
                                "https://www.pinclipart.com/picdir/big/485-4858060_png-transparent-image-toys-clipart.png",
                            off: "70",
                            title: "Baby &\nToddler Toys",
                          ),
                          OfferWidget(
                            image:
                                "http://clipart-library.com/images_k/nerf-gun-transparent-background/nerf-gun-transparent-background-6.png",
                            off: "70",
                            title: "Guns, Dolls\n& More",
                          ),
                          OfferWidget(
                            image:
                                "https://www.pngkey.com/png/full/110-1108106_uno-card-game-mattel-uno.png",
                            off: "70",
                            title: "Summer\nActivities",
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.all(
                            5,
                          ).copyWith(left: 20, right: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(94, 7, 13, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14),
                              topRight: Radius.circular(14),
                            ),
                          ),
                          child: Text(
                            "TOP TRENDING DEALS",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 245, 207, 1),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Color.fromRGBO(93, 6, 12, 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TrendingWidget(),
                      TrendingWidget(),
                      TrendingWidget(),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  color: Color.fromRGBO(24, 23, 28, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Bestsellers",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          BestsellersWidget(),
                          BestsellersWidget(),
                          BestsellersWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  color: Color.fromRGBO(24, 23, 28, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Featured this week",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          FeaturedWidget(),
                          FeaturedWidget(),
                          FeaturedWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:
            (value) => setState(() {
              currIndex = value;
            }),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(32, 33, 38, 1),
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                Container(
                  height: 2,
                  color: currIndex == 0 ? Colors.white : Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Icon(Icons.home, color: Colors.white),
                Text(
                  "Home",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                Container(
                  height: 2,
                  color: currIndex == 1 ? Colors.white : Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Icon(
                  Icons.badge_outlined,
                  color: currIndex == 1 ? Colors.white : Colors.white54,
                ),
                Text(
                  "Order Again",
                  style: TextStyle(
                    color: currIndex == 1 ? Colors.white : Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                Container(
                  height: 2,
                  color: currIndex == 2 ? Colors.white : Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Icon(
                  Icons.category_outlined,
                  color: currIndex == 2 ? Colors.white : Colors.white54,
                ),
                Text(
                  "Categories",
                  style: TextStyle(
                    color: currIndex == 2 ? Colors.white : Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Column(
              children: [
                Container(
                  height: 2,
                  color: currIndex == 3 ? Colors.white : Colors.transparent,
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                Icon(
                  Icons.print,
                  color: currIndex == 3 ? Colors.white : Colors.white54,
                ),
                Text(
                  "Print",
                  style: TextStyle(
                    color: currIndex == 3 ? Colors.white : Colors.white54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
                color: Color.fromRGBO(220, 58, 72, 1),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                "Zomato",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
