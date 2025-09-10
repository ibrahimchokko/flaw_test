import 'package:flaws_test/data/notifiers.dart';
import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
      return NavigationBar(destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "SnabpstatusIcon"),
          NavigationDestination(icon: Icon(Icons.play_circle_filled), label: "SnabpChip"),
        ],
        onDestinationSelected: (int value){
          selectedPageNotifier.value = value;
        },
        selectedIndex: selectedPage,
        );
    },);
  }
}