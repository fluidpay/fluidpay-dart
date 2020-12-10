import 'package:fluidpay/com/fluidpay/merchant/branding/request.dart';
import 'package:test/test.dart';

void main() {
  test('branding get request getUrl', _testBrandingGetRequestGetUrl);
}

void _testBrandingGetRequestGetUrl() {
  final request = BrandingGetRequest(merchantId: 'merchantId');
  expect('/merchant/branding/merchantId', request.getUrl());
}