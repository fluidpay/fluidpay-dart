import 'package:fluidpay_dart/com/fluidpay/common/actions.dart';

class AddOnRequest extends ForCreate {
  String name;
  String description;
  int amount;
  int percentage;
  String duration;

  AddOnRequest(
      {this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'amount': amount,
        'percentage': percentage,
        'duration': duration,
      };

  @override
  String getUrl() => '/recurring/addon';
}

class AddOnSearchRequest extends ForSearch {
  @override
  String getUrl() => '/recurring/addons';

  @override
  Map<String, dynamic> toJson() => {};

}
