import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Homepage(), // Directly show the SecondaryHomePage
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _SecondaryHomePageState();
}

class _SecondaryHomePageState extends State<Homepage> {
// For bottom navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Homepage", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Icon Grid Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  buildGridItem(Icons.directions_car, "Journey"),
                  buildGridItem(Icons.lightbulb, "Bonanza"),
                  buildGridItem(Icons.wheelchair_pickup, "Wheel"),
                  buildGridItem(Icons.nightlight_round, "Calm"),
                  buildGridItem(Icons.campaign, "Beep"),
                  buildGridItem(Icons.car_repair, "Car SOS"),
                  buildGridItem(Icons.local_offer, "Offer"),
                  buildGridItem(Icons.card_giftcard, "Rewards"),
                  buildGridItem(Icons.ac_unit, "Beloomi"),
                ],
              ),
            ),

            // Advertisement Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(IconData icon, String title) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.teal.withOpacity(0.2),
          child: Icon(
            icon,
            color: Colors.teal,
            size: 30,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
