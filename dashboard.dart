import 'package:flutter/material.dart';
class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Search Bar
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.0),

          // Containers with Image and Text
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildContainer('Add Data', Icons.home),
              buildContainer('Update Data', Icons.business),
              buildContainer('Delete Data', Icons.school),
              buildContainer('Fetch Data', Icons.shopping_cart),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildContainer(String text, IconData icon) {
    return Container(
      width: 80.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          SizedBox(height: 8.0),
          Icon(icon, size: 30.0),
          SizedBox(height: 8.0),
          Text(text),
          SizedBox(height: 8.0),
        ],
      ),
    );
  }
}