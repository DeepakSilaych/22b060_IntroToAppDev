import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BUDGET',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 40,
              letterSpacing: -2.5,
              wordSpacing: 0),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 70, top: 40, bottom: 20),
            child: const Text(
              'Total Budget: 1500', // Replace with actual expense total
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: const Text('Groceries',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25)), // Replace with actual category name
                  onTap: () {
                    // Navigate to Expense Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Expense()),
                    );
                  },
                ),
                ListTile(
                  title: const Text(
                    'Bills',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ), // Replace with actual category name
                  onTap: () {
                    // Navigate to Expense Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Expense()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Friends',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25)), // Replace with actual category name
                  onTap: () {
                    // Navigate to Expense Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Expense()),
                    );
                  },
                ),
                ListTile(
                  title: const Text('EMI',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25)), // Replace with actual category name
                  onTap: () {
                    // Navigate to Expense Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Expense()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Expense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Expenses List', // Replace with actual category name
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('Expense 1',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25)), // Replace with actual expense name
                  subtitle:
                      Text('\$1560'), // Replace with actual expense amount
                ),
                ListTile(
                  title: Text('Expense 2',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25)), // Replace with actual expense name
                  subtitle:
                      Text('\$ 1000'), // Replace with actual expense amount
                ),
                // Add more ListTiles for other expenses
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to Add Expense Screen/Pop-Up
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Add()),
              );
            },
            child: const Text(
              'Add Expense',
              style: TextStyle(color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Add extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Expense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Expense Value',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter expense value',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter description',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Save the expense and go back to the Expense Screen
                Navigator.pop(context);
              },
              child: const Text('Save Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
