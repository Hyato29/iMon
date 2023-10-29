import 'dart:convert';

import 'package:get/get.dart';
import 'package:ngitengs/domain/models/transaction/transaction_model.dart';
import 'package:ngitengs/domain/provider/provider.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  var isLoading = false.obs;
  var selectedItem = 'Beli Makanan'.obs;
  var items = ['Beli Makanan', 'Beli Perabotan', 'Beli Alat Elektronik'];
  var transactions = List<Product>.empty().obs;

  final _transactionProvider = Provider();

  @override
  void onInit() {
    super.onInit();
    getTransactions();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getTransactions() async {
    try {
      http.Response response = await _transactionProvider.transactionApi();

      if (response.statusCode == 200) {
        var jsonData = response.body;
        TransactionModel transactionModel =
            TransactionModel.fromJson(jsonDecode(jsonData));
        transactions.assignAll(transactionModel.products);
       } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }

  void onItemSelected(String item) {
    selectedItem.value = item;
  }

  void increment() => count.value++;
}
