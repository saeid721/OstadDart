void main (){
  ///Making a list of items
  List<double> itemsPrice =[12.99,8.75,21.50,5.00];

  ///5% tax
  double tax = 0.05;

  ///Total list price sum
  double totalamoumt=0;
  for (var price in itemsPrice){
    totalamoumt += price;
  }

  /// Multipling tax with totalAmount to get the TaxAmount
  double amountwithTax = totalamoumt * tax;

  /// Now adding total amount with the total tax amount
  double totalcost = totalamoumt + amountwithTax;

  /// printing the total cost and we want to print two decimal after point so we used toStringasFixed
  print('Total Cost: ${totalcost.toStringAsFixed(2)}');
}