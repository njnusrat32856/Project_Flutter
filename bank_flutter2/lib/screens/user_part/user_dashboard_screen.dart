// import 'package:bank2/screens/dashboard.dart';
// import 'package:flutter/material.dart';
//
// class UserDashboardScreen extends StatefulWidget {
//   const UserDashboardScreen({super.key});
//
//   @override
//   State<UserDashboardScreen> createState() => _UserDashboardScreenState();
// }
//
// class _UserDashboardScreenState extends State<UserDashboardScreen> {
//
//   int currentIndex = 0;
//
//   final List<Widget> pages = [
//     Dashboard(),
//     // MyCardPage(),
//     // ScanPage(),
//     // ActivityPage(),
//     // ProfilePage(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: pages[currentIndex],
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.grey[350],
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             tabItem(Icons.home, "Dashboard", 0),
//             tabItem(Icons.credit_card, "Loan Details", 1),
//             // tabItem(Icons.credit_card, "", 2),
//             FloatingActionButton(
//               onPressed: () => onTabTapped(2),
//               backgroundColor: Color.fromARGB(255, 16, 80, 98),
//               child: Icon(
//                 Icons.qr_code_scanner,
//                 color: Colors.white,
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(30)
//               ),
//             ),
//             tabItem(Icons.bar_chart, "Activity", 3),
//             tabItem(Icons.person, "Profile", 4),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget tabItem(IconData icon, String label, int index) {
//     return IconButton(
//       onPressed: () => onTabTapped(index),
//       icon: Column(
//         children: [
//           Icon(
//             icon,
//             color: currentIndex == index ? Colors.black : Colors.teal,
//           ),
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 10,
//               color: currentIndex == index ? Theme.of(context).primaryColor : Colors.teal,
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   void onTabTapped (int index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
// }
import 'package:bank2/screens/my_card_page.dart';
import 'package:bank2/screens/user_part/dashboard.dart';
import 'package:bank2/screens/loan_part/apply_loan_screen.dart';
import 'package:bank2/screens/loan_part/loans_other_activity_screen.dart';
import 'package:bank2/screens/user_part/user_profile_screen.dart';
import 'package:flutter/material.dart';

class UserDashboardScreen extends StatefulWidget {
  const UserDashboardScreen({Key? key}) : super(key: key);

  @override
  State<UserDashboardScreen> createState() => _UserDashboardScreenState();
}

class _UserDashboardScreenState extends State<UserDashboardScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    Dashboard(),
    // Center(child: Text("Loan Details")),
    MyCardPage(),
    Center(child: Text("QR Scanner")),
    // Center(child: Text("Activity")),
    LoansOtherActivityScreen(),
    // Center(child: Text("Profile")),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTabTapped,
        backgroundColor: Colors.grey[200],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.teal,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "My Cards",
          ),
          BottomNavigationBarItem(
            icon: FloatingActionButton(
              onPressed: () => onTabTapped(2),
              backgroundColor: Color.fromARGB(255, 16, 80, 98),
              child: Icon(Icons.qr_code, color: Colors.white),
              elevation: 0,
              mini: true,
            ),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

