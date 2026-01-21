import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'About outsourceya.com',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Who We Are',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              'outsourceya.com is a premier provider of outsourced business services, specialising in financial and operational support for UK-based companies. Founded and led by a Chartered Accountant with over 25 years of experience, our team combines deep UK market understanding with Indian delivery excellence. We operate from state-of-the-art facilities in India, ensuring cost-effective, high-quality service delivery while maintaining full compliance with UK regulations and data protection standards.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 24),
            const Text(
              'Our Mission',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8),
            const Text(
              'Our mission is to empower UK businesses of all sizes to thrive by providing accessible, expert financial and advisory services. We bridge the gap between complex regulatory requirements and operational efficiency, enabling entrepreneurs to focus on innovation and growth. Through our commitment to excellence, transparency, and client-centric solutions, we aim to be the trusted partner for UK SMEs navigating today\'s challenging business environment.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 32),
            // Leadership
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Text(
                    'Led by Chartered Accountant with 25+ Years Experience',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Combining UK market expertise with global delivery standards',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Trust Signals
            const Text(
              'Why Choose Us?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            const Column(
              children: [
                ListTile(
                  leading: Icon(Icons.verified, color: Colors.green),
                  title: Text('UK Market Understanding'),
                  subtitle: Text('Deep knowledge of UK business regulations and practices'),
                ),
                ListTile(
                  leading: Icon(Icons.security, color: Colors.blue),
                  title: Text('Indian Delivery Excellence'),
                  subtitle: Text('Cost-effective, high-quality service from expert professionals'),
                ),
                ListTile(
                  leading: Icon(Icons.gavel, color: Colors.orange),
                  title: Text('Regulatory Compliance'),
                  subtitle: Text('Full compliance with UK laws and data protection standards'),
                ),
                ListTile(
                  leading: Icon(Icons.support_agent, color: Colors.purple),
                  title: Text('Dedicated Support'),
                  subtitle: Text('Personalised service with Chartered Accountant oversight'),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/contact-us'),
                child: const Text('Get Started Today'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, this.currentIndex = 0});

  final int currentIndex;

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
      currentIndex: currentIndex,
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