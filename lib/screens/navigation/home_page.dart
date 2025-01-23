import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Text(
            'Home',
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Card
            AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 1),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.accentTeal, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    Text('+1 234 567 890',
                        style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 10),
                    Text('Telco Provider: Popcorn',
                        style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Coverage Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.map, color: Colors.blue),
                      SizedBox(width: 10),
                      Text('Coverage in Brazil'),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.data_usage, color: Colors.green),
                          Text('Data'),
                          Text('Unlimited',
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.call, color: Colors.green),
                          Text('Calls'),
                          Text('Unlimited',
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.sms, color: Colors.green),
                          Text('SMS'),
                          Text('Unlimited',
                              style: TextStyle(color: Colors.green)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Data Remaining Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Monthly Data'),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.5, // 50% data used
                    backgroundColor: Colors.grey[300],
                    color: Colors.blue,
                  ),
                  SizedBox(height: 5),
                  Text('5.2 GB used of 10 GB'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
