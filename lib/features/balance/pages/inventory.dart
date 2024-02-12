import 'package:flutter/material.dart';

class InventoryContent extends StatefulWidget {
  const InventoryContent({super.key});

  @override
  State<InventoryContent> createState() => _InventoryContentState();
}

class _InventoryContentState extends State<InventoryContent> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: const Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Icon(
                        Icons.build,
                        size: 100,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
