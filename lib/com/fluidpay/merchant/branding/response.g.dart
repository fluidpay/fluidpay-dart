// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandingGetResponse _$BrandingGetResponseFromJson(Map<String, dynamic> json) {
  return BrandingGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : BrandingResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BrandingGetResponseToJson(BrandingGetResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

BrandingResponseData _$BrandingResponseDataFromJson(Map<String, dynamic> json) {
  return BrandingResponseData()
    ..id = json['id'] as String?
    ..accountType = json['account_type'] as String?
    ..accountTypeId = json['account_type_id'] as String?
    ..styles = json['styles'] == null
        ? null
        : MerchantStyles.fromJson(json['styles'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BrandingResponseDataToJson(
    BrandingResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('account_type', instance.accountType);
  writeNotNull('account_type_id', instance.accountTypeId);
  writeNotNull('styles', instance.styles);
  return val;
}

MerchantStyles _$MerchantStylesFromJson(Map<String, dynamic> json) {
  return MerchantStyles(
    colorPrimary: json['color-primary'] as String?,
    colorSecondary: json['color-secondary'] as String?,
    colorTertiary: json['color-tertiary'] as String?,
    colorQuaternary: json['color-quaternary'] as String?,
    colorWhite: json['color-white'] as String?,
    colorLightest: json['color-lightest'] as String?,
    colorLighter: json['color-lighter'] as String?,
    colorLight: json['color-light'] as String?,
    colorGrey: json['color-grey'] as String?,
    colorDark: json['color-dark'] as String?,
    colorDarker: json['color-darker'] as String?,
    colorDarkest: json['color-darkest'] as String?,
    colorBlack: json['color-black'] as String?,
    colorBorder: json['color-border'] as String?,
    colorBackground: json['color-background'] as String?,
    colorContent: json['color-content'] as String?,
    colorHover: json['color-hover'] as String?,
    colorHoverText: json['color-hover-text'] as String?,
    colorFont: json['color-font'] as String?,
    colorLink: json['color-link'] as String?,
    colorInput: json['color-input'] as String?,
    colorSuccess: json['color-success'] as String?,
    colorInfo: json['color-info'] as String?,
    colorWarning: json['color-warning'] as String?,
    colorError: json['color-error'] as String?,
    colorCheckboxBg: json['color-checkbox-bg'] as String?,
    colorDisabledColor: json['color-disabled-color'] as String?,
    colorDisabledBackground: json['color-disabled-background'] as String?,
    menuWidth: json['menu-width'] as String?,
    menuBgColor: json['menu-bg-color'] as String?,
    menuItemTextColor: json['menu-item-text-color'] as String?,
    menuItemBgColor: json['menu-item-bg-color'] as String?,
    menuItemHoverTextColor: json['menu-item-hover-text-color'] as String?,
    menuItemHoverBgColor: json['menu-item-hover-bg-color'] as String?,
    titleBarBgColor: json['title-bar-bg-color'] as String?,
    titleBarTextColor: json['title-bar-text-color'] as String?,
    collapseBarBgColor: json['collapse-bar-bg-color'] as String?,
    btnCreateColor: json['btn-create-color'] as String?,
    btnUpdateColor: json['btn-update-color'] as String?,
    btnDeleteColor: json['btn-delete-color'] as String?,
    btnSuccessColor: json['btn-success-color'] as String?,
    btnInfoColor: json['btn-info-color'] as String?,
    btnWarningColor: json['btn-warning-color'] as String?,
    btnErrorColor: json['btn-error-color'] as String?,
    btnTextLight: json['btn-text-light'] as String?,
    btnTextDark: json['btn-text-dark'] as String?,
    fontFamily: json['font-family'] as String?,
    fontSize: json['font-size'] as String?,
    fontWeightNormal: json['font-weight-normal'] as String?,
    fontWeightBold: json['font-weight-bold'] as String?,
    spacing: json['spacing'] as String?,
    spacingHalf: json['spacing-half'] as String?,
    spacingQuarter: json['spacing-quarter'] as String?,
    borderRadius: json['border-radius'] as String?,
  );
}

Map<String, dynamic> _$MerchantStylesToJson(MerchantStyles instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color-primary', instance.colorPrimary);
  writeNotNull('color-secondary', instance.colorSecondary);
  writeNotNull('color-tertiary', instance.colorTertiary);
  writeNotNull('color-quaternary', instance.colorQuaternary);
  writeNotNull('color-white', instance.colorWhite);
  writeNotNull('color-lightest', instance.colorLightest);
  writeNotNull('color-lighter', instance.colorLighter);
  writeNotNull('color-light', instance.colorLight);
  writeNotNull('color-grey', instance.colorGrey);
  writeNotNull('color-dark', instance.colorDark);
  writeNotNull('color-darker', instance.colorDarker);
  writeNotNull('color-darkest', instance.colorDarkest);
  writeNotNull('color-black', instance.colorBlack);
  writeNotNull('color-border', instance.colorBorder);
  writeNotNull('color-background', instance.colorBackground);
  writeNotNull('color-content', instance.colorContent);
  writeNotNull('color-hover', instance.colorHover);
  writeNotNull('color-hover-text', instance.colorHoverText);
  writeNotNull('color-font', instance.colorFont);
  writeNotNull('color-link', instance.colorLink);
  writeNotNull('color-input', instance.colorInput);
  writeNotNull('color-success', instance.colorSuccess);
  writeNotNull('color-info', instance.colorInfo);
  writeNotNull('color-warning', instance.colorWarning);
  writeNotNull('color-error', instance.colorError);
  writeNotNull('color-checkbox-bg', instance.colorCheckboxBg);
  writeNotNull('color-disabled-color', instance.colorDisabledColor);
  writeNotNull('color-disabled-background', instance.colorDisabledBackground);
  writeNotNull('menu-width', instance.menuWidth);
  writeNotNull('menu-bg-color', instance.menuBgColor);
  writeNotNull('menu-item-text-color', instance.menuItemTextColor);
  writeNotNull('menu-item-bg-color', instance.menuItemBgColor);
  writeNotNull('menu-item-hover-text-color', instance.menuItemHoverTextColor);
  writeNotNull('menu-item-hover-bg-color', instance.menuItemHoverBgColor);
  writeNotNull('title-bar-bg-color', instance.titleBarBgColor);
  writeNotNull('title-bar-text-color', instance.titleBarTextColor);
  writeNotNull('collapse-bar-bg-color', instance.collapseBarBgColor);
  writeNotNull('btn-create-color', instance.btnCreateColor);
  writeNotNull('btn-update-color', instance.btnUpdateColor);
  writeNotNull('btn-delete-color', instance.btnDeleteColor);
  writeNotNull('btn-success-color', instance.btnSuccessColor);
  writeNotNull('btn-info-color', instance.btnInfoColor);
  writeNotNull('btn-warning-color', instance.btnWarningColor);
  writeNotNull('btn-error-color', instance.btnErrorColor);
  writeNotNull('btn-text-light', instance.btnTextLight);
  writeNotNull('btn-text-dark', instance.btnTextDark);
  writeNotNull('font-family', instance.fontFamily);
  writeNotNull('font-size', instance.fontSize);
  writeNotNull('font-weight-normal', instance.fontWeightNormal);
  writeNotNull('font-weight-bold', instance.fontWeightBold);
  writeNotNull('spacing', instance.spacing);
  writeNotNull('spacing-half', instance.spacingHalf);
  writeNotNull('spacing-quarter', instance.spacingQuarter);
  writeNotNull('border-radius', instance.borderRadius);
  return val;
}
