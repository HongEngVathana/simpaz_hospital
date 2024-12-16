// this NavigationBar test you can chang 

import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:remixicon/remixicon.dart';
import 'package:simpaz_hospital/views/screen/schedule_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(title: "Home", color: Colors.blue),
      const TodoPage(title: "Todo List", color: Colors.green),
      const ReportsPage(title: "Reports", color: Colors.orange),
      const MessagePage(title: "Messages", color: Colors.purple),
      const SchedulePage(title: "Schedule", color: Colors.red),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.home_4_line),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.todo_line),
        title: ("Todo List"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.folder_chart_2_line),
        title: ("Reports"),
        activeColorPrimary: Colors.orange,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.message_2_line),
        title: ("Messages"),
        activeColorPrimary: Colors.purple,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Remix.calendar_2_line),
        title: ("Schedule"),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      navBarStyle: NavBarStyle.style1,
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;
  final Color color;

  const HomePage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 32, color: color),
        ),
      ),
    );
  }
}

class TodoPage extends StatelessWidget {
  final String title;
  final Color color;
  const TodoPage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 32, color: color),
        ),
      ),
    );
  }
}

class ReportsPage extends StatelessWidget {
  final String title;
  final Color color;
  const ReportsPage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 32, color: color),
        ),
      ),
    );
  }
}

class MessagePage extends StatelessWidget {
  final String title;
  final Color color;
  const MessagePage({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 32, color: color),
        ),
      ),
    );
  }
}

