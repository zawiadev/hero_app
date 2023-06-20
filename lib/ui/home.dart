import 'package:flutter/material.dart';
import 'package:hero_app/ui/widgets/hero_widget.dart';
import 'package:hero_app/ui/widgets/html_widgets.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: controller,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: [
              Expanded(
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    AspectRatio(
                      aspectRatio: 16/9,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(image:
                          AssetImage("assets/images/onboarding1.jpg")),
                          // color: Colors.purpleAccent.withOpacity(0.2)
                        ),
                        child: CustomPaint(
                          size: Size(MediaQuery.of(context).size.width, 300),
                          painter: CustomShapePainter(),
                        ),
                      )),
                    // AspectRatio(
                    //   aspectRatio: 16/16,
                    //   child: HtmlTestPage()),

                    ListTile(
                      title: Text("text"),
                    ),
                    // HtmlHome(),

                    ListTile(
                      title: Text("text"),
                    ),
                    ListTile(
                      title: Text("text"),
                    ),

                  ],
                ),
              ),


            ],
          ),
          Center(
            child: Text('Second Page'),
          ),
          Center(
            child: Text('Third Page'),
          ),
        ],
      ),
    );
  }
}
