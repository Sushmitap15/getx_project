import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/home_page_controller.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final HomePageController controller = Get.put(HomePageController());
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.decrement,
        tooltip: 'decrement',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.remove),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text(
              'You have pushed the button this many times:',
            ),
            Obx(
              () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child:
             
              Text(
                "The Flutter app developers at FlutterDevs have decades of industry experience under a single roof,"
                    " and this empowers us to serve you with excellence.",
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    minimumSize: const Size.fromHeight(40),
                    primary: Colors.teal,
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(flex: 3, child: Text("Go to Home screen")),
                    ],
                  ),
                  onPressed: () {
                    Get.back();
                  }),
            ),
           
          ],
          
        ),
      ),
    );
  }
}