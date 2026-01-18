import 'package:flutter/material.dart';
import 'package:lesson_14/controller/list_controller.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  get SvgPicture => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ), // Padding
        toolbarHeight: 70.0,
        leadingWidth: 120.0,
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.black,
      ), // AppBar
      body: SafeArea(
        child: FutureBuilder(
          future: ListController.getCharacters(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: ,)
            }
          },
        ), // FutureBuilder
      ), // SafeArea
    ); // Scaffold
  }
}
