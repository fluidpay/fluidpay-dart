import 'package:fluidpay/com/fluidpay/dashboard/response.dart';
import 'package:test/test.dart';

void main() {
  testNewsSearchResponse();
  testRecurringStatsSearchResponse();
  testSettlementStatsSearchResponse();
  testInvoiceStatsSearchResponse();
  testTransactionStatsSearchResponse();
}

void testNewsSearchResponse() {
  test('testNewsSearchResponse fromJson', () {
    var resp = NewsSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': [
        {
          'id': 'testId',
          'account_type_id': 'testAccountTypeId',
          'partner_id': 'testPartnerId',
          'title': 'test title',
          'author_name': 'test author',
          'message': 'test message',
          'visibility': 'visible',
          'created_at': '2020-01-01',
          'updated_at': '2020-01-01',
        }
      ],
      'total_count': 1,
    });
    expect(resp.status, 'success');
    expect(resp.msg, 'success');

    expect(resp.data[0].id, 'testId');
    expect(resp.data[0].accountTypeId, 'testAccountTypeId');
    expect(resp.data[0].partnerId, 'testPartnerId');
    expect(resp.data[0].title, 'test title');
    expect(resp.data[0].authorName, 'test author');
    expect(resp.data[0].message, 'test message');
    expect(resp.data[0].visibility, 'visible');
    expect(resp.data[0].updatedAt, '2020-01-01');
    expect(resp.data[0].createdAt, '2020-01-01');

    expect(resp.totalCount, 1);
  });
}

void testRecurringStatsSearchResponse() {
  test('testRecurringStatsSearchResponse fromJson', () {
    var resp = RecurringStatsSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': {
        'customer_count': 55,
        'subscription_count': 12,
      },
    });

    expect(resp.status, 'success');
    expect(resp.msg, 'success');

    expect(resp.data.customerCount, 55);
    expect(resp.data.subscriptionCount, 12);
  });
}

void testSettlementStatsSearchResponse() {
  test('testSettlementStatsSearchResponse fromJson', () {
    var resp = SettlementStatsSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': {
        'captured': [
          {'x': 12, 'y': 14}
        ],
        'refunded': [
          {'x': 36, 'y': 15}
        ],
      },
    });

    expect(resp.status, 'success');
    expect(resp.msg, 'success');

    expect(resp.data.captured[0].x, 12);
    expect(resp.data.captured[0].y, 14);
    expect(resp.data.refunded[0].x, 36);
    expect(resp.data.refunded[0].y, 15);
  });
}

void testTransactionStatsSearchResponse() {
  test('testTransactionStatsSearchResponse fromJson', () {
    var resp = TransactionStatsSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': {
        'transaction_count': [
          {'x': 12, 'y': 14}
        ],
        'sale_count': [
          {'x': 36, 'y': 15}
        ],
        'refund_count': [
          {'x': 2, 'y': 144}
        ],
        'authorize_count': [
          {'x': 36, 'y': 155}
        ],
        'avg_authorized_ticket': [
          {'x': 12, 'y': 149}
        ],
        'avg_refund_ticket': [
          {'x': 36, 'y': 156}
        ],
      },
    });

    expect(resp.status, 'success');
    expect(resp.msg, 'success');

    expect(resp.data.transactionCount[0].x, 12);
    expect(resp.data.transactionCount[0].y, 14);
    expect(resp.data.saleCount[0].x, 36);
    expect(resp.data.saleCount[0].y, 15);
    expect(resp.data.refundCount[0].x, 2);
    expect(resp.data.refundCount[0].y, 144);
    expect(resp.data.authorizeCount[0].x, 36);
    expect(resp.data.authorizeCount[0].y, 155);
    expect(resp.data.avgAuthorizedTicket[0].x, 12);
    expect(resp.data.avgAuthorizedTicket[0].y, 149);
    expect(resp.data.avgRefundTicket[0].x, 36);
    expect(resp.data.avgRefundTicket[0].y, 156);
  });
}

void testInvoiceStatsSearchResponse() {
  test('testInvoiceStatsSearchResponse fromJson', () {
    var resp = InvoiceStatsSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': {
        'outstanding': {
          'total': {'count': 1, 'amount': 144},
          'next_30_days': {'count': 1, 'amount': 14},
          'past_due': {'count': 1, 'amount': 1}
        },
        'failed': {
          'total': {'count': 1, 'amount': 144},
          'last_30_days': {'count': 1, 'amount': 14},
          'past_due': {'count': 1, 'amount': 144}
        },
        'paid': {
          'total': {'count': 1, 'amount': 144},
          'last_30_days': {'count': 1, 'amount': 1},
        },
      },
    });

    expect(resp.status, 'success');
    expect(resp.msg, 'success');

    expect(resp.data.outstanding.total.count, 1);
    expect(resp.data.outstanding.total.amount, 144);
    expect(resp.data.outstanding.next30days.count, 1);
    expect(resp.data.outstanding.next30days.amount, 14);
    expect(resp.data.outstanding.pastDue.count, 1);
    expect(resp.data.outstanding.pastDue.amount, 1);

    expect(resp.data.failed.total.count, 1);
    expect(resp.data.failed.total.amount, 144);
    expect(resp.data.failed.last30days.count, 1);
    expect(resp.data.failed.last30days.amount, 14);
    expect(resp.data.failed.pastDue.count, 1);
    expect(resp.data.failed.pastDue.amount, 144);

    expect(resp.data.paid.total.count, 1);
    expect(resp.data.paid.total.amount, 144);
    expect(resp.data.paid.last30days.count, 1);
    expect(resp.data.paid.last30days.amount, 1);
  });
}
