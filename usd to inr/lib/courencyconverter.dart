import 'package:flutter/material.dart';

class Courncypage extends StatefulWidget {
  const Courncypage({super.key});

  @override
  State<Courncypage> createState() => _CourncypageState();
}

double result = 0;

final TextEditingController textEditingController = TextEditingController();

class _CourncypageState extends State<Courncypage> {
  @override
  Widget build(BuildContext context) {
    print('object');

    return Scaffold(
      backgroundColor: const Color(0xff42855B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR  $result',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color(0xff483838),
                ),
                decoration: const InputDecoration(
                  hintText: "add amount",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(143, 72, 56, 56),
                  ),
                  filled: true,
                  fillColor: Color(0xffD2D79F),
                  prefixIcon: Icon(Icons.monetization_on),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff90B77D),
                  minimumSize: const Size(double.infinity, 50),
                  foregroundColor: const Color(0xff483838),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(
                      style: BorderStyle.solid,
                      width: 2,
                    ),
                  ),
                ),
                child: const Text("CONVERT"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
