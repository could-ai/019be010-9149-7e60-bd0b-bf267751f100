import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('outsourceya.com'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/services'),
            child: const Text('Services', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/about-us'),
            child: const Text('About Us', style: TextStyle(color: Colors.white)),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/contact-us'),
            child: const Text('Get a Free Consultation'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Expert Business Services for UK Companies',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Professional financial and operational support tailored for UK businesses',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24),
                    // Placeholder for CTA button - already in app bar
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Services Overview
            const Text(
              'Our Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            GridView.count(
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                ServiceCard(
                  title: 'Virtual CFO',
                  description: 'Strategic financial oversight for UK SMEs',
                  route: '/services',
                ),
                ServiceCard(
                  title: 'Accounting',
                  description: 'Comprehensive bookkeeping and financial statements',
                  route: '/services',
                ),
                ServiceCard(
                  title: 'Payroll',
                  description: 'Compliant payroll processing for UK businesses',
                  route: '/services',
                ),
                ServiceCard(
                  title: 'Tax Compliance',
                  description: 'Expert tax planning and HMRC compliance',
                  route: '/services',
                ),
                ServiceCard(
                  title: 'Financial Modelling',
                  description: 'Detailed financial projections and analysis',
                  route: '/services',
                ),
                ServiceCard(
                  title: 'Business Advisory',
                  description: 'Strategic guidance for business growth',
                  route: '/services',
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Trust Signals
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Text(
                    'Trusted by UK Businesses',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('FCA Compliant'),
                      Text('GDPR Ready'),
                      Text('HMRC Approved'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.title,
    required this.description,
    required this.route,
  });

  final String title;
  final String description;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Services',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_mail),
          label: 'Contact',
        ),
      ],
      currentIndex: 0,
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/');
            break;
          case 1:
            Navigator.pushNamed(context, '/services');
            break;
          case 2:
            Navigator.pushNamed(context, '/about-us');
            break;
          case 3:
            Navigator.pushNamed(context, '/contact-us');
            break;
        }
      },
    );
  }
}