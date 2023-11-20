import 'package:flutter/material.dart';

class Pepsi extends StatefulWidget {
  const Pepsi({super.key});

  @override
  State<Pepsi> createState() => Screen3State();
}

class Screen3State extends State<Pepsi> {
  int _counter15 = 0;
  int _counter10 = 0;
  int _counter05 = 0;
  int _counter025 = 0;

  void _incrementCounter15() {
    setState(() {
      _counter15++;
    });
  }

  void _decrementCounter15() {
    setState(() {
      if (_counter15 != 0) {
        _counter15--;
      }
    });
  }

  void _incrementCounter10() {
    setState(() {
      _counter10++;
    });
  }

  void _decrementCounter10() {
    setState(() {
      if (_counter10 != 0) {
        _counter10--;
      }
    });
  }

  void _incrementCounter05() {
    setState(() {
      _counter05++;
    });
  }

  void _decrementCounter05() {
    setState(() {
      if (_counter05 != 0) {
        _counter05--;
      }
    });
  }

  void _incrementCounter025() {
    setState(() {
      _counter025++;
    });
  }

  void _decrementCounter025() {
    setState(() {
      if (_counter025 != 0) {
        _counter025--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pepsi'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/pepsi.jpg",
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ),
          const Text("Pepsi", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Pepsi 1.5l", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter15,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_counter15',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter15,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Pepsi 1.0l", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter10,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),

                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_counter10',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter10,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Pepsi 0.5l", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter05,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),

                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_counter05',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter05,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Pepsi 0.25l", style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: _decrementCounter025,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' - '),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '$_counter025',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: _incrementCounter025,
                        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green)),
                        child: const Text(' + '),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
                children: [
                  get15(),
                  get10(),
                  get05(),
                  get025(),
                  getButton(),
                ]
            ),
          ),
        ],
      ),

    );
  }

  Widget get15() {
    int temp = _counter15*12000;
    return _counter15!=0 ? Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Pepsi 1.5 l x $_counter15 "),
            Text("12000 x $_counter15 = $temp")
          ],
        ),
        const SizedBox(height: 10,),
      ],
    ):Row() ;
  }

  Widget get10() {
    int temp = _counter10*10000;
    return _counter10!=0 ? Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Pepsi 1.0 l x $_counter10 "),
            Text("10000 x $_counter10 = $temp")
          ],
        ),
        const SizedBox(height: 10,),
      ],
    ):Row() ;
  }
  Widget get05() {
    int temp = _counter05*6000;
    return _counter05!=0 ? Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Pepsi 0.5 l x $_counter05 "),
            Text("6000 x $_counter05 = $temp")
          ],
        ),
        const SizedBox(height: 10,),
      ],
    ):Row() ;
  }
  Widget get025() {
    int temp = _counter025*4000;
    return _counter025!=0 ? Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Pepsi 0.5 l x $_counter025 "),
            Text("4000 x $_counter025 = $temp")
          ],
        ),
        const SizedBox(height: 10,),
      ],
    ):Row() ;
  }
  Widget getButton() {
    if (_counter15+_counter10+_counter05+_counter025 != 0) {
      return ElevatedButton(
          onPressed: () {
            Navigator.pop(context, getString());
          },
          child: const Text("Sent to main Page"));
    }
    return const Row();
  }

  String getString() {
    String response = "";
    if(_counter15!=0 && (_counter025+_counter05+_counter10)!=0){
      response += "Pepsi 1.5 l x $_counter15!12000 x $_counter15 = ${12000*_counter15}:";
    } else if (_counter15!=0){
      response += "Pepsi 1.5 l x $_counter15!12000 x $_counter15 = ${12000*_counter15}";
      return response;
    }
    if(_counter10!=0  && (_counter025+_counter05)!=0){
      response += "Pepsi 1.0 l x $_counter10!10000 x $_counter10 = ${10000*_counter10}:";
    } else if(_counter10!=0){
      response += "Pepsi 1.0 l x $_counter10!10000 x $_counter10 = ${10000*_counter10}";
      return response;
    }
    if(_counter05!=0 && _counter025!=0){
      response += "Pepsi 0.5 l x $_counter05!6000 x $_counter05 = ${6000*_counter05}:";
    } else if(_counter05!=0){
      response += "Pepsi 0.5 l x $_counter05!6000 x $_counter05 = ${6000*_counter05}";
      return response;
    }
    if(_counter025!=0){
      response += "Pepsi 0.25 l x $_counter025!4000 x $_counter025 = ${4000*_counter025}";
    }
    return response;
  }

}
