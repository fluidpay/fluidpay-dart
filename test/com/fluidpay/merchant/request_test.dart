import 'package:fluidpay/com/fluidpay/merchant/request.dart';
import 'package:test/test.dart';

void main() {
  test('merchant get request getUrl', _testMerchantGetRequestGetUrl);
}

void _testMerchantGetRequestGetUrl() {
  final request = MerchantGetRequest();
  expect('/merchant', request.getUrl());
}