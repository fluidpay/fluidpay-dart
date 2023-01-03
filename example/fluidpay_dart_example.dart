import 'package:fluidpay/com/fluidpay/authentication/request.dart';
import 'package:fluidpay/com/fluidpay/gateway.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';

void main() async {
  Gateway.instance.init('https://example.com/api', apiKey: 'YourApiKey');

  final response = await Gateway.instance.login(AuthLoginRequest('testUser', 'testPassword'));

  if ((response.statusCode ?? 0) / 100 != 2) {
    print('Login was not successful');
    return;
  }

  final transactions = await Gateway.instance.execute(TransactionSearchRequest());

  if (transactions.data != null) {
    for (final transaction in transactions.data!) {
      print(transaction.orderId);
    }
  }
}