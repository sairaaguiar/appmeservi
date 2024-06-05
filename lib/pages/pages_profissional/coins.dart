//import 'package:flutter/material.dart';
//
// /// Flutter code sample for [Notification].
//
// void main() => runApp(const NotificationExampleApp());
//
// class NotificationExampleApp extends StatelessWidget {
//   const NotificationExampleApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: NotificationExample(),
//     );
//   }
// }
//
// class NotificationExample extends StatelessWidget {
//   const NotificationExample({super.key});
//
//   static const List<String> _tabs = <String>['Months', 'Days'];
//   static const List<String> _months = <String>[
//     'January',
//     'February',
//     'March',
//   ];
//   static const List<String> _days = <String>[
//     'Sunday',
//     'Monday',
//     'Tuesday',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: _tabs.length,
//       child: Scaffold(
//         // Listens to the scroll events and returns the current position.
//         body: NotificationListener<ScrollNotification>(
//           onNotification: (ScrollNotification scrollNotification) {
//             if (scrollNotification is ScrollStartNotification) {
//               debugPrint('Scrolling has started');
//             } else if (scrollNotification is ScrollEndNotification) {
//               debugPrint('Scrolling has ended');
//             }
//             // Return true to cancel the notification bubbling.
//             return true;
//           },
//           child: NestedScrollView(
//             headerSliverBuilder:
//                 (BuildContext context, bool innerBoxIsScrolled) {
//               return <Widget>[
//                 SliverAppBar(
//                   title: const Text('Notification Sample'),
//                   pinned: true,
//                   floating: true,
//                   bottom: TabBar(
//                     tabs: _tabs.map((String name) => Tab(text: name)).toList(),
//                   ),
//                 ),
//               ];
//             },
//             body: TabBarView(
//               children: <Widget>[
//                 ListView.builder(
//                   itemCount: _months.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(title: Text(_months[index]));
//                   },
//                 ),
//                 ListView.builder(
//                   itemCount: _days.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(title: Text(_days[index]));
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




//    bottomNavigationBar: BottomAppBar(
//         child: Container(
//           color: Color(0xfff66b0e),
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.home, color: Colors.white),
//                   Text(
//                     "Início",
//                     style: GoogleFonts.vesperLibre(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 10.0,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.calendar_today, color: Colors.white),
//                   Text(
//                     "Agenda",
//                     style: GoogleFonts.vesperLibre(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 10.0,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.work, color: Colors.white),
//                   Text(
//                     "Serviços",
//                     style: GoogleFonts.vesperLibre(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 10.0,
//                     ),
//                   ),
//                 ],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(Icons.person, color: Colors.white),
//                   Text(
//                     "Perfil",
//                     style: GoogleFonts.vesperLibre(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w400,
//                       fontSize: 10.0,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }