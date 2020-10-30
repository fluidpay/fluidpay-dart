import 'package:fluidpay/com/fluidpay/recurring/addon_response.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_response.dart';
import 'package:fluidpay/com/fluidpay/recurring/plan_response.dart';
import 'package:test/test.dart';

void main() {
  testPlanSearchResponse();
}

void testPlanSearchResponse() {
  test('PlanResponse fromJson to Json', () {
    var resp = PlanSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': [
        {
          'id': 'test id',
          'name': 'test plan',
          'description': 'test plan description',
          'amount': 100,
          'currency': 'USD',
          'billing_cycle_interval': 2,
          'billing_frequency': '3',
          'billing_days': '12',
          'duration': 10,
          'add_ons': [
            {
              'id': 'test addon id',
              'name': 'test addon name',
              'description': 'test addon description',
              'amount': 200,
              'percentage': 10,
              'duration': 10,
              'updated_at': '2020-01-01',
              'created_at': '2020-01-01',
            },
            {
              'id': '',
              'name': 'test addon name',
              'description': 'test addon description',
              'amount': 200,
              'percentage': 10,
              'duration': 10,
              'updated_at': '2020-01-01',
              'created_at': '2020-01-01',
            },
          ],
          'discounts': [
            {
              'id': 'test discount is',
              'name': 'test discount name',
              'description': 'test discount description',
              'amount': 200,
              'percentage': 10,
              'duration': 10,
              'updated_at': '2020-01-01',
              'created_at': '2020-01-01',
            },
            {
              'id': '',
              'name': 'test discount name',
              'description': 'test discount description',
              'amount': 200,
              'percentage': 10,
              'duration': 10,
              'updated_at': '2020-01-01',
              'created_at': '2020-01-01',
            },
          ],
          'total_add_ons': 2,
          'total_discounts': 2,
          'subscription_count': 1,
          'updated_at': '2020-01-01',
          'created_at': '2020-01-01'
        },
      ],
      'total_count': 1,
    });
    expect(resp.status, 'success');
    expect(resp.msg, 'success');
    expect(resp.totalCount, 1);

    expect(resp.data[0].id, 'test id');
    expect(resp.data[0].name, 'test plan');
    expect(resp.data[0].description, 'test plan description');
    expect(resp.data[0].amount, 100);
    expect(resp.data[0].currency, 'USD');
    expect(resp.data[0].billingCycleInterval, 2);
    expect(resp.data[0].billingFrequency, '3');
    expect(resp.data[0].billingDays, '12');
    expect(resp.data[0].duration, 10);
    expect(resp.data[0].updatedAt, '2020-01-01');
    expect(resp.data[0].createdAt, '2020-01-01');

    // addons
    expect((resp.data[0].addOns[0] as AddOnResponseData).id, 'test addon id');
    expect(
        (resp.data[0].addOns[0] as AddOnResponseData).name, 'test addon name');
    expect((resp.data[0].addOns[0] as AddOnResponseData).description,
        'test addon description');
    expect((resp.data[0].addOns[0] as AddOnResponseData).amount, 200);
    expect((resp.data[0].addOns[0] as AddOnResponseData).percentage, 10);
    expect((resp.data[0].addOns[0] as AddOnResponseData).duration, 10);
    expect(
        (resp.data[0].addOns[0] as AddOnResponseData).createdAt, '2020-01-01');
    expect(
        (resp.data[0].addOns[0] as AddOnResponseData).updatedAt, '2020-01-01');

    expect((resp.data[0].addOns[1] as AddOnResponseData).id, '');
    expect(
        (resp.data[0].addOns[1] as AddOnResponseData).name, 'test addon name');
    expect((resp.data[0].addOns[1] as AddOnResponseData).description,
        'test addon description');
    expect((resp.data[0].addOns[1] as AddOnResponseData).amount, 200);
    expect((resp.data[0].addOns[1] as AddOnResponseData).percentage, 10);
    expect((resp.data[0].addOns[1] as AddOnResponseData).duration, 10);
    expect(
        (resp.data[0].addOns[1] as AddOnResponseData).createdAt, '2020-01-01');
    expect(
        (resp.data[0].addOns[1] as AddOnResponseData).updatedAt, '2020-01-01');

    // discounts
    expect((resp.data[0].discounts[0] as DiscountResponseData).id,
        'test discount is');
    expect((resp.data[0].discounts[0] as DiscountResponseData).name,
        'test discount name');
    expect((resp.data[0].discounts[0] as DiscountResponseData).description,
        'test discount description');
    expect((resp.data[0].discounts[0] as DiscountResponseData).amount, 200);
    expect((resp.data[0].discounts[0] as DiscountResponseData).percentage, 10);
    expect((resp.data[0].discounts[0] as DiscountResponseData).duration, 10);
    expect((resp.data[0].discounts[0] as DiscountResponseData).createdAt,
        '2020-01-01');
    expect((resp.data[0].discounts[0] as DiscountResponseData).updatedAt,
        '2020-01-01');

    expect((resp.data[0].discounts[1] as DiscountResponseData).id, '');
    expect((resp.data[0].discounts[1] as DiscountResponseData).name,
        'test discount name');
    expect((resp.data[0].discounts[1] as DiscountResponseData).description,
        'test discount description');
    expect((resp.data[0].discounts[1] as DiscountResponseData).amount, 200);
    expect((resp.data[0].discounts[1] as DiscountResponseData).percentage, 10);
    expect((resp.data[0].discounts[1] as DiscountResponseData).duration, 10);
    expect((resp.data[0].discounts[1] as DiscountResponseData).createdAt,
        '2020-01-01');
    expect((resp.data[0].discounts[1] as DiscountResponseData).updatedAt,
        '2020-01-01');
  });
}
