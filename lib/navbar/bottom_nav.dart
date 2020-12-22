import 'package:flutter/material.dart';
import 'package:tubes/navbar/home_nav.dart';
import 'package:tubes/navbar/navbar.dart';
import 'package:tubes/config/palette.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    HomeNav(),
    ResepNav(),
    UploadResepNav(),
    NotifikasiNav(),
    AkunNav()
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0 ? Palette.primaryColor : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(
                color: _selectedIndex == 0 ? Palette.primaryColor : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.kitchen_outlined,
              color: _selectedIndex == 1 ? Palette.primaryColor : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Resep',
              style: TextStyle(
                color: _selectedIndex == 1 ? Palette.primaryColor : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.upload_file,
              color: _selectedIndex == 2 ? Palette.primaryColor : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Upload Resep',
              style: TextStyle(
                color: _selectedIndex == 2 ? Palette.primaryColor : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              color: _selectedIndex == 3 ? Palette.primaryColor : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Notifikasi',
              style: TextStyle(
                color: _selectedIndex == 3 ? Palette.primaryColor : Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedIndex == 4 ? Palette.primaryColor : Colors.grey,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Akun',
              style: TextStyle(
                color: _selectedIndex == 4 ? Palette.primaryColor : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
