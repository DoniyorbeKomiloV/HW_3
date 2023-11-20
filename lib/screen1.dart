import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String receivedText = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beverages'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to Beverages App\nSelect one of the following drinks', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, overflow: TextOverflow.clip)),
              const SizedBox(height: 20),
              ...getWidgets(receivedText)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/main.jpg",
                  width: 360,
                  height: 270,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen2');
                      print(result.toString());
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Coca-Cola'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen3');
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Pepsi'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen4');
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Fanta'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen5');
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Sprite'),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen6');
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Asu'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await Navigator.pushNamed(context, '/screen7');
                      if (result != null) {
                        setState(() {
                          receivedText = result.toString();
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(fixedSize: const Size(150, 30)).merge(ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.green))),
                    child: const Text('Mountain dew'),
                  ),
                ],
              ),

            ],
          ),
        ],
      )

    );
  }

  List<Widget> getWidgets(String string) {
    List<Widget> widgets = [];
    if (string!=""){
      List<String> text = string.split(":");
      print("text: $text");
      for(int i = 0; i < text.length; i++){
        List<String> temp = text[i].split("!");
        print("temp $temp");
        widgets.add(Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(temp[0]),
            Text(temp[1]),
          ],
        ));
      }
    }
    print("widgets $widgets");
    return widgets;
  }
}
