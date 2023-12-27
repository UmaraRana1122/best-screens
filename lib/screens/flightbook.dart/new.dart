// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/material.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: DatePickerDemo(),
// //     );
// //   }
// // }

// class DatePickerDemo extends StatefulWidget {
//   @override
//   _DatePickerDemoState createState() => _DatePickerDemoState();
// }

// class _DatePickerDemoState extends State<DatePickerDemo> {
//    DateTime _selectedDate1;
//    DateTime _selectedDate2;

//   Future<void> _selectDate(BuildContext context, int pickerNumber) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2101),
//     );
//     if (picked != null) {
//       setState(() {
//         if (pickerNumber == 1) {
//           _selectedDate1 = picked;
//         } else if (pickerNumber == 2) {
//           _selectedDate2 = picked;
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Date Picker Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () => _selectDate(context, 1),
//                   child: Text('Select Date 1'),
//                 ),
//                 Text(
//                   _selectedDate1 == null
//                       ? 'No Date Selected'
//                       : 'Date 1: ${_selectedDate1.toLocal()}'.split(' ')[0],
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () => _selectDate(context, 2),
//                   child: Text('Select Date 2'),
//                 ),
//                 Text(
//                   _selectedDate2 == null
//                       ? 'No Date Selected'
//                       : 'Date 2: ${_selectedDate2.toLocal()}'.split(' ')[0],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
