import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:flutter/material.dart';
import 'package:trip_cost/components/dialog_address.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<AnimatedFloatingActionButtonState> key =
      GlobalKey<AnimatedFloatingActionButtonState>();

  Widget buttonMyLocation() {
    return FloatingActionButton(
      onPressed: () {},
      heroTag: "My location",
      tooltip: "Add",
      child: const Icon(Icons.my_location),
    );
  }

  Widget buttonNewLocaltionCalc() {
    return FloatingActionButton(
      onPressed: () {
        showDialogAddress(context);
      },
      heroTag: "My location",
      tooltip: "Add",
      child: const Icon(Icons.location_on),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Trip Cost"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              'AQUI',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        key: key,
        fabButtons: <Widget>[
          buttonMyLocation(),
          buttonNewLocaltionCalc(),
        ],
        colorStartAnimation: const Color.fromARGB(255, 78, 173, 251),
        colorEndAnimation: const Color.fromARGB(255, 247, 137, 129),
        animatedIconData: AnimatedIcons.menu_close,
      ),
    );
  }
}
