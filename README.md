Dart package for [FluidPay API](https://sandbox.fluidpay.com/docs/api/).

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
Gateway.instance.init(baseUrl, apiKey = myKey);
```

- Login with credentials
```dart
Gateway.instance.login(loginRequest);
```

- You can create custom authorization header with setAuthHeaderCreator method
```dart
Gateway.instance.setAuthHeaderCreator(() => {'Authorization': 'Custom token'});
```

## Development

For json serialization we use [json_serializable](https://pub.dev/packages/json_serializable) package. It generates helper classes we only commited to release branch.
Before start, generate the request/response serialize support files with:

```shell script
pub run build_runner build
```

## Contribution

This is an actively developed library. We will check the new issues soon. But if you wanted to help us with your code, feel free to make a pull request.