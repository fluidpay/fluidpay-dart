Dart SDK for using the [Fluid Pay API](https://sandbox.fluidpay.com/docs/api/).

### Install

```dart
  fluidpay:
    git:
      url: git@github.com:fluidpay/fluidpay-dart.git
      ref: v0.4.0
```

### Usage

Before you can use the SDK a pre-initialization is required. This can be done by using API key or logging in.

#### Initialization - API Key


```dart
import 'package:fluidpay/com/fluidpay/gateway.dart';

void main() async {
  String baseUrl = "https://sandbox.fluidpay.com/api";
  Gateway.instance.init(baseUrl, apiKey: "apixxxx");
}
```

#### Initialization - User login

If you choose this option you can use the SDK in the name of the user who logged in.

```dart
import 'package:fluidpay/com/fluidpay/gateway.dart';

void main() async {
  String baseUrl = "https://sandbox.fluidpay.com/api";
  Gateway.instance.init(baseUrl);
  
  final request = AuthLoginRequest('testUser', 'testPassword');
  Gateway.instance.login(request);
}
```

#### Execute requests

If you have done wny of the steps above, the SDK initialized and ready to send requests. You can execute requests by passing the right request representation to the execute function. You can see the detailed description below about the [supported operations](#supported-operations).

```dart
import 'package:fluidpay/com/fluidpay/gateway.dart';

void main() async {
  // Do the initialization

  final request = TransactionCreateRequest();
  request.amount = 1000;
  request.paymentMethod.card.number = "4111111111111111"
  // Fill other fields

  final response = await Gateway.instance.execute(request); // response will be TransactionCreateResponse
}
```

#### Change Auth Header

In case of reauthentication or change of the method of the authentication there is an option to set the Authorization header.

```dart
Gateway.instance.setAuthHeaderCreator(() => {'Authorization': 'token/key/etc'});
```

##### Save authentication

```dart
void setSavedAuthJson() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final authDataJson = sharedPreferences.getString(KEY_AUTH_DATA);

  Gateway.instance.authData = AuthLoginResponseData.fromJson(jsonDecode(authDataJson));
}
```

### Supported operations

| <div style="width:110px">Category</div>                               | Request                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Response                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|-----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Authentication                                                        | <ul><li>AuthLoginRequest</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                | <ul><li>AuthLoginResponse</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Common<br><br><br><br><br><br><br><br>                                | <ul><li>InvoiceCreateRequest</li><li>InvoiceUpdateRequest</li><li>InvoiceResendRequest</li><li>InvoiceMarkAsPaidRequest</li><li>InvoiceReactivateRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceGetRequest</li><li>InvoiceSearchRequest</li></ul>                                                                                                                                                                                                                            | <li>InvoiceCreateResponse</li><li>InvoiceUpdateResponse</li><li>InvoiceResendResponse</li><li>InvoiceMarkAsPaidResponse</li><li>InvoiceReactivateResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceGetResponse</li><li>InvoiceSearchResponse</li>                                                                                                                                                                                                                                          |
| Customer Vault<br><br><br><br><br><br><br><br><br><br><br>            | <ul><li>CustomerCreateRequest</li><li>CustomerGetRequest</li><li>CustomerDeleteRequest</li><li>CustomerUpdateRequest</li><li>CustomerSearchRequest</li><li>CustomerAddressCreateRequest</li><li>CustomerAddressUpdateRequest</li><li>CustomerAddressDeleteRequest</li><li>CustomerPaymentTypeCreateRequest</li><li>CustomerPaymentTypeUpdateRequest</li><li>CustomerPaymentTypeDeleteRequest</li></ul>                                                                            | <ul><li>CustomerCreateResponse</li><li>CustomerGetResponse</li><li>CustomerDeleteResponse</li><li>CustomerUpdateResponse</li><li>CustomerSearchResponse</li><li>CustomerAddressCreateResponse</li><li>CustomerAddressUpdateResponse</li><li>CustomerAddressDeleteResponse</li><li>CustomerPaymentTypeCreateResponse</li><li>CustomerPaymentTypeUpdateResponse</li><li>CustomerPaymentTypeDeleteResponse</li></ul>                                                                              |
| Invoice<br><br><br><br><br><br><br><br>                               | <ul><li>InvoiceCreateRequest</li><li>InvoiceUpdateRequest</li><li>InvoiceResendRequest</li><li>InvoiceMarkAsPaidRequest</li><li>InvoiceReactivateRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceSearchRequest</li></ul>                                                                                                                                                                                                                         | <ul><li>InvoiceCreateResponse</li><li>InvoiceUpdateResponse</li><li>InvoiceResendResponse</li><li>InvoiceMarkAsPaidResponse</li><li>InvoiceReactivateResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceSearchResponse</li></ul>                                                                                                                                                                                                                              |
| Recurring<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> | <ul><li>AddOnCreateRequest</li><li>AddOnUpdateRequest</li><li>AddOnSearchRequest</li><li>AddOnDeleteRequest</li><li>AddOnRequest</li><li>CustomerRequest</li><li>DiscountCreateRequest</li><li>DiscountUpdateRequest</li><li>DiscountSearchRequest</li><li>DiscountDeleteRequest</li><li>DiscountRequest</li><li>PlanCreateRequest</li><li>PlanSearchRequest</li><li>SubscriptionCreateRequest</li><li>SubscriptionSearchRequest</li></ul>                                        | <ul><li>AddOnCreateResponse</li><li>AddOnUpdateResponse</li><li>AddOnSearchResponse</li><li>AddOnDeleteResponse</li><li>AddOnResponse</li><li>CustomerResponse</li><li>DiscountCreateResponse</li><li>DiscountUpdateResponse</li><li>DiscountSearchResponse</li><li>DiscountDeleteResponse</li><li>DiscountResponse</li><li>PlanCreateResponse</li><li>PlanSearchResponse</li><li>SubscriptionCreateResponse</li><li>SubscriptionSearchResponse</li></ul>                                      |
| Terminal                                                              | <ul><li>TerminalGetRequest</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                              | <ul><li>TerminalGetResponse</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Transaction<br><br><br><br><br><br><br><br><br><br><br><br><br>       | <ul><li>TransactionCreateRequest</li><li>TransactionGetRequest</li><li>TransactionCaptureRequest</li><li>TransactionVoidRequest</li><li>TransactionRefundRequest</li><li>TransactionCreateVaultRequest</li><li>TransactionEmailReceiptRequest</li><li>TransactionPrintReceiptRequest</li><li>TransactionTipAdjustmentRequest</li><li>TransactionMultiRequest</li><li>TransactionMultiVoidRequest</li><li>TransactionMultiRefundRequest</li><li>TransactionSearchRequest</li></ul> | <ul><li>TransactionCreateResponse</li><li>TransactionGetResponse</li><li>TransactionCaptureResponse</li><li>TransactionVoidResponse</li><li>TransactionRefundResponse</li><li>TransactionCreateVaultResponse</li><li>TransactionEmailReceiptResponse</li><li>TransactionPrintReceiptResponse</li><li>TransactionTipAdjustmentResponse</li><li>TransactionMultiResponse</li><li>TransactionMultiVoidResponse</li><li>TransactionMultiRefundResponse</li><li>TransactionSearchResponse</li></ul> |
| User<br><br><br><br><br><br><br><br><br><br><br><br><br><br>          | <ul><li>ForgotUsernameRequest</li><li>ForgotPasswordRequest</li><li>ForgotPasswordResetRequest</li><li>UserGetRequest</li><li>UserPasswordChangeRequest</li><li>UserSetTotpRequest</li><li>UserRemoveTotpRequest</li><li>UserCreateRequest</li><li>UserUpdateRequest</li><li>UsersRequest</li><li>UserLoginAsRequest</li><li>UserDeleteRequest</li><li>UserCopyRequest</li><li>UserResendWelcomeEmailRequest</li></ul>                                                            | <ul><li>ForgotUsernameResponse</li><li>ForgotPasswordResponse</li><li>ForgotPasswordResetResponse</li><li>UserGetResponse</li><li>UserPasswordChangeResponse</li><li>UserSetTotpResponse</li><li>UserRemoveTotpResponse</li><li>UserCreateResponse</li><li>UserUpdateResponse</li><li>UsersResponse</li><li>UserLoginAsResponse</li><li>UserDeleteResponse</li><li>UserCopyResponse</li><li>UserResendWelcomeEmailResponse</li></ul>                                                           |

## Development

For json serialization we use [json_serializable](https://pub.dev/packages/json_serializable) package. It generates
helper classes we only commited to release branch. Before start, generate the request/response serialize support files
with:

```shell script
pub run build_runner build
```

## Contribution

This is an actively developed library. We will check the new issues soon. But if you wanted to help us with your code,
feel free to make a pull request.