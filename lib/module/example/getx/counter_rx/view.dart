import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class GetCounterRxPage extends StatelessWidget {
  final logic = Get.put(GetCounterRxLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('计数器-响应式')),
      body: Center(
        child: Obx(() {
          return Text(
            '点击了 ${logic.count.value} 次',
            style: TextStyle(fontSize: 30.0),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => logic.increase(),
        child: Icon(Icons.add),
      ),
    );
  }
}
