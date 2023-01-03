Dart package for [Fluid Pay API](https://sandbox.fluidpay.com/docs/api/).

## How to use

First you have to initalize and set your base url

```dart
Gateway.instance.init(baseUrl);
```

To execute requests declared in [Fluid Pay API](https://sandbox.fluidpay.com/docs/api/)

Every request has its own response type which the execute method returns with.

```dart
Gateway.instance.execute(request);
```

There are three options to authenticate your request

- API Key

```dart
Gateway.instance.init(baseUrl, apiKey: myKey);
```

- Login with credentials

```dart
Gateway.instance.login(loginRequest);
```

- You can create custom authorization header with setAuthHeaderCreator method

```dart
Gateway.instance.setAuthHeaderCreator(() => {'Authorization': 'Custom token'});
```

- Or you can set the previous auth response to make Gateway requests authenticated

```dart
void setSavedAuthJson() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  final authDataJson = sharedPreferences.getString(KEY_AUTH_DATA);

  Gateway.instance.authData = AuthLoginResponseData.fromJson(jsonDecode(authDataJson));
}
```

## Available Requests and Responses

| Category                 | Request                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Response                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Authentication           | <ul><li>AuthLoginRequest</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                | <ul><li>AuthLoginResponse</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Common                   | <ul><li>InvoiceCreateRequest</li><li>InvoiceUpdateRequest</li><li>InvoiceResendRequest</li><li>InvoiceMarkAsPaidRequest</li><li>InvoiceReactivateRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceGetRequest</li><li>InvoiceSearchRequest</li></ul>                                                                                                                                                                                                                            | <li>InvoiceCreateResponse</li><li>InvoiceUpdateResponse</li><li>InvoiceResendResponse</li><li>InvoiceMarkAsPaidResponse</li><li>InvoiceReactivateResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceGetResponse</li><li>InvoiceSearchResponse</li>                                                                                                                                                                                                                                          |
| Customer Vault           | <ul><li>CustomerCreateRequest</li><li>CustomerGetRequest</li><li>CustomerDeleteRequest</li><li>CustomerUpdateRequest</li><li>CustomerSearchRequest</li><li>CustomerAddressCreateRequest</li><li>CustomerAddressUpdateRequest</li><li>CustomerAddressDeleteRequest</li><li>CustomerPaymentTypeCreateRequest</li><li>CustomerPaymentTypeUpdateRequest</li><li>CustomerPaymentTypeDeleteRequest</li></ul>                                                                            | <ul><li>CustomerCreateResponse</li><li>CustomerGetResponse</li><li>CustomerDeleteResponse</li><li>CustomerUpdateResponse</li><li>CustomerSearchResponse</li><li>CustomerAddressCreateResponse</li><li>CustomerAddressUpdateResponse</li><li>CustomerAddressDeleteResponse</li><li>CustomerPaymentTypeCreateResponse</li><li>CustomerPaymentTypeUpdateResponse</li><li>CustomerPaymentTypeDeleteResponse</li></ul>                                                                              |
| Invoice                  | <ul><li>InvoiceCreateRequest</li><li>InvoiceUpdateRequest</li><li>InvoiceResendRequest</li><li>InvoiceMarkAsPaidRequest</li><li>InvoiceReactivateRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceDeleteRequest</li><li>InvoiceSearchRequest</li></ul>                                                                                                                                                                                                                         | <ul><li>InvoiceCreateResponse</li><li>InvoiceUpdateResponse</li><li>InvoiceResendResponse</li><li>InvoiceMarkAsPaidResponse</li><li>InvoiceReactivateResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceDeleteResponse</li><li>InvoiceSearchResponse</li></ul>                                                                                                                                                                                                                              |
| Recurring                | <ul><li>AddOnCreateRequest</li><li>AddOnUpdateRequest</li><li>AddOnSearchRequest</li><li>AddOnDeleteRequest</li><li>AddOnRequest</li><li>CustomerRequest</li><li>DiscountCreateRequest</li><li>DiscountUpdateRequest</li><li>DiscountSearchRequest</li><li>DiscountDeleteRequest</li><li>DiscountRequest</li><li>PlanCreateRequest</li><li>PlanSearchRequest</li><li>SubscriptionCreateRequest</li><li>SubscriptionSearchRequest</li></ul>                                        | <ul><li>AddOnCreateResponse</li><li>AddOnUpdateResponse</li><li>AddOnSearchResponse</li><li>AddOnDeleteResponse</li><li>AddOnResponse</li><li>CustomerResponse</li><li>DiscountCreateResponse</li><li>DiscountUpdateResponse</li><li>DiscountSearchResponse</li><li>DiscountDeleteResponse</li><li>DiscountResponse</li><li>PlanCreateResponse</li><li>PlanSearchResponse</li><li>SubscriptionCreateResponse</li><li>SubscriptionSearchResponse</li></ul>                                      |
| Terminal                 | <ul><li>TerminalGetRequest</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                              | <ul><li>TerminalGetResponse</li></ul>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Transaction              | <ul><li>TransactionCreateRequest</li><li>TransactionGetRequest</li><li>TransactionCaptureRequest</li><li>TransactionVoidRequest</li><li>TransactionRefundRequest</li><li>TransactionCreateVaultRequest</li><li>TransactionEmailReceiptRequest</li><li>TransactionPrintReceiptRequest</li><li>TransactionTipAdjustmentRequest</li><li>TransactionMultiRequest</li><li>TransactionMultiVoidRequest</li><li>TransactionMultiRefundRequest</li><li>TransactionSearchRequest</li></ul> | <ul><li>TransactionCreateResponse</li><li>TransactionGetResponse</li><li>TransactionCaptureResponse</li><li>TransactionVoidResponse</li><li>TransactionRefundResponse</li><li>TransactionCreateVaultResponse</li><li>TransactionEmailReceiptResponse</li><li>TransactionPrintReceiptResponse</li><li>TransactionTipAdjustmentResponse</li><li>TransactionMultiResponse</li><li>TransactionMultiVoidResponse</li><li>TransactionMultiRefundResponse</li><li>TransactionSearchResponse</li></ul> |
| User                     | <ul><li>ForgotUsernameRequest</li><li>ForgotPasswordRequest</li><li>ForgotPasswordResetRequest</li><li>UserGetRequest</li><li>UserPasswordChangeRequest</li><li>UserSetTotpRequest</li><li>UserRemoveTotpRequest</li><li>UserCreateRequest</li><li>UserUpdateRequest</li><li>UsersRequest</li><li>UserLoginAsRequest</li><li>UserDeleteRequest</li><li>UserCopyRequest</li><li>UserResendWelcomeEmailRequest</li></ul>                                                            | <ul><li>ForgotUsernameResponse</li><li>ForgotPasswordResponse</li><li>ForgotPasswordResetResponse</li><li>UserGetResponse</li><li>UserPasswordChangeResponse</li><li>UserSetTotpResponse</li><li>UserRemoveTotpResponse</li><li>UserCreateResponse</li><li>UserUpdateResponse</li><li>UsersResponse</li><li>UserLoginAsResponse</li><li>UserDeleteResponse</li><li>UserCopyResponse</li><li>UserResendWelcomeEmailResponse</li></ul>                                                           |

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