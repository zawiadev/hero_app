//
// import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
//
//
//
// class HtmlTestPage extends StatefulWidget {
//   const HtmlTestPage({Key? key}) : super(key: key);
//
//   @override
//   State<HtmlTestPage> createState() => _HtmlTestPageState();
// }
//
// class _HtmlTestPageState extends State<HtmlTestPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Image.asset("assets/images/welcome_.jpeg", fit: BoxFit.cover,)),
//             SingleChildScrollView(
//
//               child: HtmlWidget(
//                 // the first parameter (`html`) is required
//                 '''<!-- Hero -->
// <div class="p-4 shadow-4 rounded-3" style="background-color: hsl(0, 0%, 94%);">
//   <h2>Hello world!</h2>
//   <p>
//     This is a simple hero unit, a simple Hero-style component for calling extra
//     attention to featured content or information.
//   </p>
//
//   <hr class="my-4" />
//
//   <p>
//     It uses utility classes for typography and spacing to space content out within the
//     larger container.
//   </p>
//   <button type="button" class="btn btn-primary">
//     Learn more
//   </button>
// </div>
// <!-- Hero -->
//   ''',
//
//                 // all other parameters are optional, a few notable params:
//
//                 // specify custom styling for an element
//                 // see supported inline styling below
//                 customStylesBuilder: (element) {
//                   if (element.classes.contains('foo')) {
//                     return {'color': 'red'};
//                   }
//
//                   return null;
//                 },
//
//                 // render a custom widget
//                 customWidgetBuilder: (element) {
//                   if (element.attributes['foo'] == 'bar') {
//                     // return FooBarWidget();
//                   }
//
//                   return null;
//                 },
//
//                 // these callbacks are called when a complicated element is loading
//                 // or failed to render allowing the app to render progress indicator
//                 // and fallback widget
//                 onErrorBuilder: (context, element, error) => Text('$element error: $error'),
//                 onLoadingBuilder: (context, element, loadingProgress) => CircularProgressIndicator(),
//
//                 // this callback will be triggered when user taps a link
//                 onTapUrl: (url){
//                   print(url);
//                   return true;
//                 },
//                 // select the render mode for HTML body
//                 // by default, a simple `Column` is rendered
//                 // consider using `ListView` or `SliverList` for better performance
//                 renderMode: RenderMode.column,
//
//                 // set the default styling for text
//                 textStyle: TextStyle(fontSize: 14),
//
//                 // turn on `webView` if you need IFRAME support (it's disabled by default)
//                 // webView: true,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
