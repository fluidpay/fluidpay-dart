import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/plan_request.dart';
import 'package:test/test.dart';

void main() {
  testPlanCreateRequest();
}

void testPlanCreateRequest() {
  test('PlanCreateRequest to Json', () {
    var req = PlanCreateRequest(
      name: 'test plan',
      description: 'test plan description',
      amount: 100,
      currency: 'USD',
      billingCycleInterval: 2,
      billingFrequency: '3',
      billingDays: '12',
      duration: 10,
      addons: [
        AddOnRequest(
            id: 'test addon id',
            description: 'test addon description',
            amount: 200,
            percentage: 10,
            duration: 10),
        AddOnRequest(
            id: '',
            description: 'test addon description',
            amount: 200,
            percentage: 10,
            duration: 10),
      ],
      discounts: [
        DiscountRequest(
            id: 'test discount is',
            description: 'test discount description',
            amount: 200,
            percentage: 10,
            duration: 10),
        DiscountRequest(
            id: '',
            description: 'test discount description',
            amount: 200,
            percentage: 10,
            duration: 10),
      ],
      updateSubscriptions: true,
    ).toJson();
    var expected = {
      'name': 'test plan',
      'description': 'test plan description',
      'amount': 100,
      'currency': 'USD',
      'billing_cycle_interval': 2,
      'billing_frequency': '3',
      'billing_days': '12',
      'duration': 10,
      'update_subscriptions': true,
    };
    expect(req['name'], expected['name']);
    expect(req['description'], expected['description']);
    expect(req['amount'], expected['amount']);
    expect(req['currency'], expected['currency']);
    expect(req['billing_cycle_interval'], expected['billing_cycle_interval']);
    expect(req['billing_frequency'], expected['billing_frequency']);
    expect(req['billing_cycle_interval'], expected['billing_cycle_interval']);
    expect(req['billing_days'], expected['billing_days']);
    expect(req['duration'], expected['duration']);
    expect(req['update_subscriptions'], expected['update_subscriptions']);

    // addons
    expect((req['add_ons'][0] as AddOnRequest).id, 'test addon id');
    expect((req['add_ons'][0] as AddOnRequest).description,
        'test addon description');
    expect((req['add_ons'][0] as AddOnRequest).amount, 200);
    expect((req['add_ons'][0] as AddOnRequest).percentage, 10);
    expect((req['add_ons'][0] as AddOnRequest).duration, 10);

    expect((req['add_ons'][1] as AddOnRequest).id, '');
    expect((req['add_ons'][1] as AddOnRequest).description,
        'test addon description');
    expect((req['add_ons'][1] as AddOnRequest).amount, 200);
    expect((req['add_ons'][1] as AddOnRequest).percentage, 10);
    expect((req['add_ons'][1] as AddOnRequest).duration, 10);

    // discounts
    expect((req['discounts'][0] as DiscountRequest).id, 'test discount is');
    expect((req['discounts'][0] as DiscountRequest).description,
        'test discount description');
    expect((req['discounts'][0] as DiscountRequest).amount, 200);
    expect((req['discounts'][0] as DiscountRequest).percentage, 10);
    expect((req['discounts'][0] as DiscountRequest).duration, 10);

    expect((req['discounts'][1] as DiscountRequest).id, '');
    expect((req['discounts'][1] as DiscountRequest).description,
        'test discount description');
    expect((req['discounts'][1] as DiscountRequest).amount, 200);
    expect((req['discounts'][1] as DiscountRequest).percentage, 10);
    expect((req['discounts'][1] as DiscountRequest).duration, 10);
  });
}
