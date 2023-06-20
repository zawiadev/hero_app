import 'package:flutter/material.dart';
import 'package:hero_app/ui/widgets/service_card.dart';

class ServiceListPage extends StatefulWidget {
  const ServiceListPage({Key? key}) : super(key: key);

  @override
  State<ServiceListPage> createState() => _ServiceListPageState();
}

class _ServiceListPageState extends State<ServiceListPage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 7,
      child: Scaffold(
        
        body: Column(
          children: [
            TabBar(
              isScrollable: true,

              tabs: [
                Tab(text: "Graphic Design"),
                Tab(text: "Development"),
                Tab(text: "Promotion"),
                Tab(text: "Online marketing"),
                Tab(text: "Business"),
                Tab(text: "Technology"),
                Tab(text: "Content strategy"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}
