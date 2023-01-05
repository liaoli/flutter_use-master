import 'package:flutter/material.dart';
import 'package:flutter_use/module/example/getx/easy_x/easy.dart';
import 'package:flutter_use/module/example/getx/easy_x/easy_builder/easy_builder.dart';

import 'logic.dart';

class EasyXCounterPage extends StatelessWidget {
  final logic = Easy.put(EasyXCounterLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EasyX-自定义EasyBuilder刷新机制')),
      body: Center(
        child: EasyBuilder<EasyXCounterLogic>(builder: (logic) {
          return Text(
            '点击了 ${logic.count} 次',
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
