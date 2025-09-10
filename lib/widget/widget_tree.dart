import 'package:flaws_test/data/notifiers.dart';
import 'package:flaws_test/screens/snabp_chip.dart';
import 'package:flaws_test/screens/snabp_status_icon.dart';
import 'package:flaws_test/widget/navbar_widget.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [
  SnabpStatusIcon(icon: Icons.warning, color: Colors.orange.shade800),
  SnabpChip(text: "Complete"),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Playground"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
