import 'package:expense_tracker/models/expense_details_model.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class GetExpensesController extends GetxController {
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  var isDataLoading = false.obs;
  ExpensesDetailsModel? expModel;

  getApi() async {
    try {
      isDataLoading(true);
    } catch (e) {
      debugPrint('Error while getting data is $e');
    } finally {
      isDataLoading(false);
    }
  }
}
