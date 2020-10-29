import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/subscription_customer_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/subscription_request.dart';
import 'package:test/test.dart';

void main() {
  testSubscriptionCreateRequest();
}

void testSubscriptionCreateRequest() {
  test('SubscriptionCreateRequest to Json', () {
    var req = SubscriptionCreateRequest(
      planId: 'test subscription',
      description: 'test subscription description',
      subscriptionCustomerRequest: SubscriptionCustomerRequest(
          id: 'id',
          paymentMethodType: 'card',
          paymentMethodID: 'pmID',
          shippingAddressID: 'addressID'),
      amount: 100,
      currency: 'USD',
      billingCycleInterval: 2,
      billingFrequency: '3',
      billingDays: '12',
      duration: 10,
      nextBillDate: '2020-01-01',
      addOns: [
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
    ).toJson();
    var expected = {
      'plan_id': 'test subscription',
      'description': 'test subscription description',
      'amount': 100,
      'currency': 'USD',
      'billing_cycle_interval': 2,
      'billing_frequency': '3',
      'billing_days': '12',
      'duration': 10,
      'update_subscriptions': true,
      'next_bill_date': '2020-01-01',
    };
    expect(req['plan_id'], expected['plan_id']);
    expect(req['description'], expected['description']);
    expect(req['amount'], expected['amount']);
    expect(req['currency'], expected['currency']);
    expect(req['billing_cycle_interval'], expected['billing_cycle_interval']);
    expect(req['billing_frequency'], expected['billing_frequency']);
    expect(req['billing_cycle_interval'], expected['billing_cycle_interval']);
    expect(req['billing_days'], expected['billing_days']);
    expect(req['duration'], expected['duration']);
    expect(req['next_bill_date'], expected['next_bill_date']);

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

    //customer
    expect((req['customer'] as SubscriptionCustomerRequest).id, 'id');
    expect((req['customer'] as SubscriptionCustomerRequest).paymentMethodType,
        'card');
    expect((req['customer'] as SubscriptionCustomerRequest).paymentMethodID,
        'pmID');
    expect((req['customer'] as SubscriptionCustomerRequest).shippingAddressID,
        'addressID');
  });
}
