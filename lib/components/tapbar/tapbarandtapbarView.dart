import 'package:flutter/material.dart';

class TabPair {
  final Tab tab;
  final Widget view;
  TabPair({required this.tab, required this.view});
}

// ignore: non_constant_identifier_names
List<TabPair> TabPairs = [
  TabPair(
    tab: const Tab(
      text: 'Intro',
    ),
    view: const Center(
      child: Text(
        'Intro here',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  TabPair(
    tab: const Tab(
      text: 'Ingredients',
    ),
    view: const Center(
      // replace with your own widget here
      child: Text(
        'Ingredients here',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ),
  TabPair(
    tab: const Tab(
      text: 'Steps',
    ),
    view: const Center(
      child: Text(
        'Steps here',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  )
];

class TabBarAndTabViews extends StatefulWidget {
  const TabBarAndTabViews({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabBarAndTabViewsState createState() => _TabBarAndTabViewsState();
}

class _TabBarAndTabViewsState extends State<TabBarAndTabViews>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: TabPairs.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // give the tab bar a height [can change height to preferred height]
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: TabBar(
                      controller: _tabController,
                      // give the indicator a decoration (color and border radius)
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          25.0,
                        ),
                        color: const Color(0xFFFF8527),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black,
                      tabs: TabPairs.map((tabPair) => tabPair.tab).toList()),
                ),
              ),
              Expanded(
                child: TabBarView(
                    controller: _tabController,
                    children: TabPairs.map((tabPair) => tabPair.view).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
