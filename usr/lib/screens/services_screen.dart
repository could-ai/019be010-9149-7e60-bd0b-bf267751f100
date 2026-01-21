import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Comprehensive Business Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Tailored financial and operational support for UK businesses of all sizes.',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 32),
            // Services List
            const ServiceDetail(
              title: 'Virtual CFO',
              description: 'Strategic financial oversight without the overhead of a full-time executive. Access to chartered accountant expertise for UK SMEs.',
              features: [
                'Monthly financial reports',
                'Cash flow management',
                'Compliance with UK regulations',
                'Growth funding strategies',
              ],
            ),
            const ServiceDetail(
              title: 'Accounting',
              description: 'Comprehensive bookkeeping, ledger maintenance, and financial statement preparation.',
              features: [
                'VAT returns and PAYE submissions',
                'Bank reconciliation',
                'Year-end accounts',
                'HMRC compliance',
              ],
            ),
            const ServiceDetail(
              title: 'Payroll',
              description: 'Full payroll processing ensuring compliance with UK employment laws and tax regulations.',
              features: [
                'Monthly payroll runs',
                'Auto-enrolment pensions',
                'Statutory sick pay calculations',
                'P60 and P45 processing',
              ],
            ),
            const ServiceDetail(
              title: 'Tax Compliance',
              description: 'Expert tax planning, preparation, and filing to minimise liabilities and ensure compliance.',
              features: [
                'Corporation tax returns',
                'Self-assessment forms',
                'Tax planning strategies',
                'HMRC correspondence handling',
              ],
            ),
            const ServiceDetail(
              title: 'Financial Modelling',
              description: 'Detailed financial projections, scenario analysis, and valuation models for informed decision-making.',
              features: [
                'Cash flow projections',
                'Break-even analysis',
                'Investor presentations',
                'Risk assessment models',
              ],
            ),
            const ServiceDetail(
              title: 'Business Advisory',
              description: 'Strategic guidance on operations, market expansion, and overall business development.',
              features: [
                'Operational efficiency reviews',
                'Market expansion strategies',
                'Digital transformation planning',
                'Risk management advice',
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/contact-us'),
                child: const Text('Get a Free Consultation'),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}

class ServiceDetail extends StatelessWidget {
  const ServiceDetail({
    super.key,
    required this.title,
    required this.description,
    required this.features,
  });

  final String title;
  final String description;
  final List<String> features;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 16),
            const Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            ...features.map((feature) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                children: [
                  const Icon(Icons.check_circle, color: Colors.green, size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(feature, style: const TextStyle(fontSize: 14)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
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