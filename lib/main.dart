import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _CurrencyState();
}

class _CurrencyState extends State<MyApp> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();

  double count1 = 0;
  double count2 = 0;

  void convertLKRtoUSD() {
    setState(() {
      count1 = double.parse(num1.text) / 303.71;
    });
  }

  void convertUSDtoLKR() {
    setState(() {
      count2 = double.parse(num2.text) * 303.71;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Converter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(235, 233, 218, 1),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30, width: double.infinity),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Currency Converter',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 250, 162, 22),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset("assets/US_100__17_.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: const Text(
                    "Sri Lankan rupee to United State dollar",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  height: 20,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  height: 105,
                  child: Row(
                    children: [
                      SizedBox(height: 50, width: 30),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/Sri Lanka.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 50, width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Text(
                            "LKR",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(height: 50, width: 30),
                      Container(
                        height: 105,
                        width: 180,
                        child: Column(
                          children: [
                            TextField(
                              controller: num1,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Amount",
                              ),
                            ),
                            MaterialButton(
                              onPressed: convertLKRtoUSD,
                              child: Image.asset(
                                "assets/Swap languages.png",
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(height: 50, width: 30),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/American Flag.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 50, width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Text(
                            "USD",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(height: 50, width: 30),
                      Container(
                        height: 50,
                        width: 180,
                        child: Text("${count1.toStringAsFixed(2)} "),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: const Text(
                    "United State dollar to Sri Lankan rupee",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  height: 20,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  height: 105,
                  child: Row(
                    children: [
                      SizedBox(height: 50, width: 30),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/American Flag.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 50, width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Text(
                            "USD",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(height: 50, width: 30),
                      Container(
                        height: 105,
                        width: 180,
                        child: Column(
                          children: [
                            TextField(
                              controller: num2,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Amount",
                              ),
                            ),
                            MaterialButton(
                              onPressed: convertUSDtoLKR,
                              child: Image.asset(
                                "assets/Swap languages.png",
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(height: 50, width: 30),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(
                          "assets/Sri Lanka.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(height: 50, width: 10),
                      Container(
                        height: 50,
                        width: 50,
                        child: const Center(
                          child: Text(
                            "LKR",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                      SizedBox(height: 50, width: 30),
                      Container(
                        height: 50,
                        width: 180,
                        child: Text("${count2.toStringAsFixed(2)}"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
