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
              fontSize: 28,
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
            AnimatedOpacity(
              opacity: 1.0,
              duration: Duration(seconds: 1),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.accentTeal, AppColors.primaryGreen],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe',
                        style: GoogleFonts.poppins(
                            fontSize: 24, color: AppColors.white)),
                    Text('+49 225 664 890',
                        style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'lib/assets/logo.png',
                              height: 42,
                              width: 42,
                              color: AppColors.white,
                            ),
                            SizedBox(width: 10),
                            Text('SignalSync',
                                style: GoogleFonts.poppins(
                                    fontSize: 28, color: Colors.white)),
                          ],
                        ),
                        Icon(
                          Icons.sim_card,
                          size: 38,
                          color: AppColors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Coverage Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.map, color: AppColors.grey),
                      SizedBox(width: 10),
                      Text(
                        'Coverage',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/assets/map.png',
                        height: 180,
                        width: 180,
                      ),
                      SizedBox(width: 20),
                      Wrap(
                        // spacing: 25,
                        direction: Axis.vertical,
                        children: [
                          Text(
                            'Brazil 🇧🇷',
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              Icon(Icons.data_usage, color: AppColors.grey),
                              Text('Data'),
                              Spacer(),
                              Text('Unlimited',
                                  style: TextStyle(
                                      color: AppColors.primaryGreen,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.call, color: AppColors.grey),
                              Text('Calls'),
                              Text('Unlimited',
                                  style: TextStyle(
                                      color: AppColors.primaryGreen,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.sms, color: AppColors.grey),
                              Text('SMS'),
                              Text('Unlimited',
                                  style: TextStyle(
                                      color: AppColors.primaryGreen,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.bar_chart, color: AppColors.grey),
                      SizedBox(width: 10),
                      Text(
                        'Monthly Data',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: 0.5, // 50% data used
                    backgroundColor: Colors.grey[300],
                    color: AppColors.accentTeal,
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
