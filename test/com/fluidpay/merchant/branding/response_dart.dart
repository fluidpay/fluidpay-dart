import 'package:fluidpay/com/fluidpay/merchant/branding/response.dart';
import 'package:test/test.dart';

void main() {
  test('branding get response fromJson', _testBrandingGetResponseFromJson);
}

void _testBrandingGetResponseFromJson() {
  final req = BrandingGetResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'msg': 'success',
    'data': {
      'id': 'bv8unt9erttq6jaaf990',
      'account_type': 'merchant',
      'account_type_id': 'bv6t8p1erttrap2la0bg',
      'styles': {
        'color-primary': '#00aeef',
        'color-secondary': '#8dc63f',
        'color-tertiary': '#efc600',
        'color-quaternary': '#ef5a00',
        'color-white': '#ffffff',
        'color-lightest': '#e0e0e0',
        'color-lighter': '#c2c2c2',
        'color-light': '#a3a3a3',
        'color-grey': '#858585',
        'color-dark': '#666666',
        'color-darker': '#474747',
        'color-darkest': '#292929',
        'color-black': '#000000',
        'color-border': 'var(--color-lighter)',
        'color-background': 'var(--color-lightest)',
        'color-content': 'var(--color-white)',
        'color-hover': 'var(--color-dark)',
        'color-hover-text': 'var(--color-lightest)',
        'color-font': 'var(--color-dark)',
        'color-link': 'var(--color-primary)',
        'color-input': 'var(--color-content)',
        'color-success': 'var(--color-secondary)',
        'color-info': 'var(--color-primary)',
        'color-warning': 'var(--color-tertiary)',
        'color-error': 'var(--color-quaternary)',
        'color-checkbox-bg': 'var(--color-success)',
        'color-disabled-color': 'var(--color-font)',
        'color-disabled-background': 'var(--color-lightest)',
        'menu-width': '200px',
        'menu-bg-color': 'var(--color-darker)',
        'menu-item-text-color': 'var(--color-light)',
        'menu-item-bg-color': 'var(--menu-bg-color)',
        'menu-item-hover-text-color': 'var(--color-hover-text)',
        'menu-item-hover-bg-color': 'var(--color-hover)',
        'title-bar-bg-color': 'var(--color-primary)',
        'title-bar-text-color': 'var(--color-white)',
        'collapse-bar-bg-color': 'var(--color-primary)',
        'btn-create-color': 'var(--color-success)',
        'btn-update-color': 'var(--color-success)',
        'btn-delete-color': 'var(--color-error)',
        'btn-success-color': 'var(--color-success)',
        'btn-info-color': 'var(--color-info)',
        'btn-warning-color': 'var(--color-warning)',
        'btn-error-color': 'var(--color-error)',
        'btn-text-light': 'var(--color-white)',
        'btn-text-dark': 'var(--color-font)',
        'font-family': 'Helvetica, Arial, sans-serif',
        'font-size': '13px',
        'font-weight-normal': 'normal',
        'font-weight-bold': '700',
        'spacing': '20px',
        'spacing-half': '10px',
        'spacing-quarter': '5px',
        'border-radius': '4px'
      }
    }
  });

  expect(req.status, 'success');
  expect(req.msg, 'success');
  expect(req.statusCode, 200);
  expect(req.data.id, 'bv8unt9erttq6jaaf990');
  expect(req.data.accountType, 'merchant');
  expect(req.data.accountTypeId, 'bv6t8p1erttrap2la0bg');
  expect(req.data.styles.colorPrimary ,'#00aeef');
  expect(req.data.styles.colorSecondary ,'#8dc63f');
  expect(req.data.styles.colorTertiary ,'#efc600');
  expect(req.data.styles.colorQuaternary ,'#ef5a00');
  expect(req.data.styles.colorWhite ,'#ffffff');
  expect(req.data.styles.colorLightest ,'#e0e0e0');
  expect(req.data.styles.colorLighter ,'#c2c2c2');
  expect(req.data.styles.colorLight ,'#a3a3a3');
  expect(req.data.styles.colorGrey ,'#858585');
  expect(req.data.styles.colorDark ,'#666666');
  expect(req.data.styles.colorDarker ,'#474747');
  expect(req.data.styles.colorDarkest ,'#292929');
  expect(req.data.styles.colorBlack ,'#000000');
  expect(req.data.styles.colorBorder ,'var(--color-lighter)');
  expect(req.data.styles.colorBackground ,'var(--color-lightest)');
  expect(req.data.styles.colorContent ,'var(--color-white)');
  expect(req.data.styles.colorHover ,'var(--color-dark)');
  expect(req.data.styles.colorHoverText ,'var(--color-lightest)');
  expect(req.data.styles.colorFont ,'var(--color-dark)');
  expect(req.data.styles.colorLink ,'var(--color-primary)');
  expect(req.data.styles.colorInput ,'var(--color-content)');
  expect(req.data.styles.colorSuccess ,'var(--color-secondary)');
  expect(req.data.styles.colorInfo ,'var(--color-primary)');
  expect(req.data.styles.colorWarning ,'var(--color-tertiary)');
  expect(req.data.styles.colorError ,'var(--color-quaternary)');
  expect(req.data.styles.colorCheckboxBg ,'var(--color-success)');
  expect(req.data.styles.colorDisabledColor ,'var(--color-font)');
  expect(req.data.styles.colorDisabledBackground ,'var(--color-lightest)');
  expect(req.data.styles.menuWidth ,'200px');
  expect(req.data.styles.menuBgColor ,'var(--color-darker)');
  expect(req.data.styles.menuItemTextColor ,'var(--color-light)');
  expect(req.data.styles.menuItemBgColor ,'var(--menu-bg-color)');
  expect(req.data.styles.menuItemHoverTextColor ,'var(--color-hover-text)');
  expect(req.data.styles.menuItemHoverBgColor ,'var(--color-hover)');
  expect(req.data.styles.titleBarBgColor ,'var(--color-primary)');
  expect(req.data.styles.titleBarTextColor ,'var(--color-white)');
  expect(req.data.styles.collapseBarBgColor ,'var(--color-primary)');
  expect(req.data.styles.btnCreateColor ,'var(--color-success)');
  expect(req.data.styles.btnUpdateColor ,'var(--color-success)');
  expect(req.data.styles.btnDeleteColor ,'var(--color-error)');
  expect(req.data.styles.btnSuccessColor ,'var(--color-success)');
  expect(req.data.styles.btnInfoColor ,'var(--color-info)');
  expect(req.data.styles.btnWarningColor ,'var(--color-warning)');
  expect(req.data.styles.btnErrorColor ,'var(--color-error)');
  expect(req.data.styles.btnTextLight ,'var(--color-white)');
  expect(req.data.styles.btnTextDark ,'var(--color-font)');
  expect(req.data.styles.fontFamily ,'Helvetica, Arial, sans-serif');
  expect(req.data.styles.fontSize ,'13px');
  expect(req.data.styles.fontWeightNormal ,'normal');
  expect(req.data.styles.fontWeightBold ,'700');
  expect(req.data.styles.spacing ,'20px');
  expect(req.data.styles.spacingHalf ,'10px');
  expect(req.data.styles.spacingQuarter ,'5px');
  expect(req.data.styles.borderRadius ,'4px');
}
