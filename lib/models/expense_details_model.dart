import 'dart:convert';

ExpensesDetailsModel expenseFromJson(String str) =>
    ExpensesDetailsModel.fromJson(json.decode(str));

String expenseToJson(ExpensesDetailsModel data) => json.encode(data.toJson());

class ExpensesDetailsModel {
  int amount;
  String date;
  String description;

  ExpensesDetailsModel({
    required this.amount,
    required this.date,
    required this.description,
  });

  factory ExpensesDetailsModel.fromJson(Map<String, dynamic> json) =>
      ExpensesDetailsModel(
        amount: json["amount"],
        date: json["date"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "date": date,
        "description": description,
      };
}
