import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
      //theme: ThemeData.from(colorScheme: ColorScheme.light()),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora de IMC"),
        backgroundColor: const Color(0xff18E300),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const Icon(
              Icons.person_outline,
              size: 120,
              color: Color(0xff18E300),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso (Kg)",
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff18E300),
                fontSize: 25,
              ),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura (cm)",
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff18E300),
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff18E300),
                        padding: const EdgeInsets.all(14),
                        //fixedSize: const Size(300, 50),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Calcular",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Info",
              style: TextStyle(
                color: Color(0xff18E300),
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
