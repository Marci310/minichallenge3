import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../screens/screens.dart';
import '../models/models.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.currentTab,
  });

  final int currentTab;

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    //screens that can appear in the middle with either show or movie category
    const PopularScreen(),
    ProfileScreen(),
    SearchScreen(),
  ];
  int show = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(
                'Fooderlich',
                style: Theme.of(context).textTheme.headline6,
              ),
              actions: [
                profileButton(widget.currentTab),
              ],
            ),
            body: IndexedStack(index: widget.currentTab, children: pages),
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor:
                  Theme.of(context).textSelectionTheme.selectionColor,
              currentIndex: show,
              onTap: (index) {
                setState(() {
                  Provider.of<AppStateManager>(context, listen: false)
                      .changeCategory(index);
                  show = (show + 1) % 2;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.movie),
                  label: 'Movies',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.live_tv),
                  label: 'TV shows',
                ),
              ],
            ),
          ),
          NavigationRail(
            extended: constraints.maxWidth > 700,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.grade),
                label: Text('Popular'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_circle),
                label: Text('My Profile'),
              )
            ],
            selectedIndex: widget.currentTab,
            onDestinationSelected: (value) {
              Provider.of<AppStateManager>(context, listen: false)
                  .goToTab(value);
            },
          ),
        ],
      );
    });
  }

  Widget profileButton(int currentTab) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        child: const CircleAvatar(
          backgroundColor: Colors.transparent,
          /* backgroundImage: AssetImage(
            'assets/profile_pics/person_stef.jpeg',
          ), */
        ),
        onTap: () {
          // TODO: Navigate to profile screen
        },
      ),
    );
  }
}
