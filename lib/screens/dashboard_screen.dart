import 'package:flutter/material.dart';
import '../models/app_data.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Overview'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Greeting card
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Alex Mercer 👋',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'This is your plain mock dashboard overview.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Simple Stat row
          Row(
            children: MockStat.mockStats.map((stat) {
              return Expanded(
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          stat.value,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          stat.title,
                          style: const TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 16),

          // Simple Mock Activity / Tasks
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Recent Mock Items',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.check_circle_outline, color: Colors.green),
                  title: Text('Task: Setup Navigation'),
                  subtitle: Text('Completed'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.pending_outlined, color: Colors.orange),
                  title: Text('Task: Design Mock Screens'),
                  subtitle: Text('In progress'),
                ),
                Divider(height: 1),
                ListTile(
                  leading: Icon(Icons.article_outlined, color: Colors.blue),
                  title: Text('Note: Hardcoded Data'),
                  subtitle: Text('Static review ready'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
