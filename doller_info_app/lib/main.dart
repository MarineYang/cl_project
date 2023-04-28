import 'package:flutter/material.dart';
import 'package:toonfix/widgets/Button.dart';
import 'package:toonfix/widgets/card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text('Hey, MarineYang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text('Welcome back', 
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                          fontSize: 18,
                        )
                      ),
                    ],
                  ),
                  ]
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                      text: "Transfer",
                      bgColor: Colors.amber,
                      textColor: Colors.black,
                    ),
                    
                    Button(
                      text: "Request",
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wallets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 
                  const CurrencyCard(
                    name: 'Euro', 
                    code: 'EUR', 
                    amount: '6 428', 
                    icon: Icons.euro_rounded, isInverted: false,
                    traslateOffset: Offset(0, 0),
                    ),
                  const CurrencyCard(
                      name: 'Bitcoin',
                      code: 'BTC',
                      amount: '9 785',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      traslateOffset: Offset(0, -20),
                  ),
                  const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                      traslateOffset: Offset(0, -40),
                  ),
                  
                
                ],
          ),
          ),
        )
      ),
    );
  }
}