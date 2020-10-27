import 'dart:math';

import 'package:fluidpay_dart/fluidpay_dart.dart';
import 'package:fluidpay_dart/src/com.fluidpay/recurring/addon/request.dart';
import 'package:fluidpay_dart/src/com.fluidpay/recurring/addon/response.dart';

void main() {
  FluidPay('api_1cUR7yhmqEGJdOQyNJLrK1T8lnE').create<AddOnResponse>(AddOnRequest(
      name: 'data' + Random().nextDouble().toString(),
      amount: 1000
  )).then((value) => print(value));
  FluidPay('api_1cUR7yhmqEGJdOQyNJLrK1T8lnE').get<AddOnSearchResponse>(AddOnSearchRequest()).then((value) => print(value));
}
