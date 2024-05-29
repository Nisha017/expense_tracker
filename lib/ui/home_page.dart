import 'package:expense_tracker/controllers/get_expenses.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double? width, height;
  GetExpensesController dataController = Get.put(GetExpensesController());

  @override
  void initState() {
    super.initState();
    getAPI();
  }

  Future<void> getAPI() async {
    await dataController.getApi();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Obx(() => dataController.isDataLoading.value
        ? const Center(child: CircularProgressIndicator())
        : const Scaffold(
            body: Center(
            child: Text("Code Started"),
          )));
  }
}
