// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandingGetResponse _$BrandingGetResponseFromJson(Map<String, dynamic> json) {
  return BrandingGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : BrandingResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BrandingGetResponseToJson(
        BrandingGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

BrandingResponseData _$BrandingResponseDataFromJson(Map<String, dynamic> json) {
  return BrandingResponseData()
    ..id = json['id'] as String
    ..accountType = json['account_type'] as String
    ..accountTypeId = json['account_type_id'] as String
    ..styles = json['styles'] == null
        ? null
        : MerchantStyles.fromJson(json['styles'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BrandingResponseDataToJson(
        BrandingResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type': instance.accountType,
      'account_type_id': instance.accountTypeId,
      'styles': instance.styles,
    };

MerchantStyles _$MerchantStylesFromJson(Map<String, dynamic> json) {
  return MerchantStyles(
    colorPrimary: json['color-primary'] as String,
    colorSecondary: json['color-secondary'] as String,
    colorTertiary: json['color-tertiary'] as String,
    colorQuaternary: json['color-quaternary'] as String,
    colorWhite: json['color-white'] as String,
    colorLightest: json['color-lightest'] as String,
    colorLighter: json['color-lighter'] as String,
    colorLight: json['color-light'] as String,
    colorGrey: json['color-grey'] as String,
    colorDark: json['color-dark'] as String,
    colorDarker: json['color-darker'] as String,
    colorDarkest: json['color-darkest'] as String,
    colorBlack: json['color-black'] as String,
    colorBorder: json['color-border'] as String,
    colorBackground: json['color-background'] as String,
    colorContent: json['color-content'] as String,
    colorHover: json['color-hover'] as String,
    colorHoverText: json['color-hover-text'] as String,
    colorFont: json['color-font'] as String,
    colorLink: json['color-link'] as String,
    colorInput: json['color-input'] as String,
    colorSuccess: json['color-success'] as String,
    colorInfo: json['color-info'] as String,
    colorWarning: json['color-warning'] as String,
    colorError: json['color-error'] as String,
    colorCheckboxBg: json['color-checkbox-bg'] as String,
    colorDisabledColor: json['color-disabled-color'] as String,
    colorDisabledBackground: json['color-disabled-background'] as String,
    menuWidth: json['menu-width'] as String,
    menuBgColor: json['menu-bg-color'] as String,
    menuItemTextColor: json['menu-item-text-color'] as String,
    menuItemBgColor: json['menu-item-bg-color'] as String,
    menuItemHoverTextColor: json['menu-item-hover-text-color'] as String,
    menuItemHoverBgColor: json['menu-item-hover-bg-color'] as String,
    titleBarBgColor: json['title-bar-bg-color'] as String,
    titleBarTextColor: json['title-bar-text-color'] as String,
    collapseBarBgColor: json['collapse-bar-bg-color'] as String,
    btnCreateColor: json['btn-create-color'] as String,
    btnUpdateColor: json['btn-update-color'] as String,
    btnDeleteColor: json['btn-delete-color'] as String,
    btnSuccessColor: json['btn-success-color'] as String,
    btnInfoColor: json['btn-info-color'] as String,
    btnWarningColor: json['btn-warning-color'] as String,
    btnErrorColor: json['btn-error-color'] as String,
    btnTextLight: json['btn-text-light'] as String,
    btnTextDark: json['btn-text-dark'] as String,
    fontFamily: json['font-family'] as String,
    fontSize: json['font-size'] as String,
    fontWeightNormal: json['font-weight-normal'] as String,
    fontWeightBold: json['font-weight-bold'] as String,
    spacing: json['spacing'] as String,
    spacingHalf: json['spacing-half'] as String,
    spacingQuarter: json['spacing-quarter'] as String,
    borderRadius: json['border-radius'] as String,
  );
}

Map<String, dynamic> _$MerchantStylesToJson(MerchantStyles instance) =>
    <String, dynamic>{
      'color-primary': instance.colorPrimary,
      'color-secondary': instance.colorSecondary,
      'color-tertiary': instance.colorTertiary,
      'color-quaternary': instance.colorQuaternary,
      'color-white': instance.colorWhite,
      'color-lightest': instance.colorLightest,
      'color-lighter': instance.colorLighter,
      'color-light': instance.colorLight,
      'color-grey': instance.colorGrey,
      'color-dark': instance.colorDark,
      'color-darker': instance.colorDarker,
      'color-darkest': instance.colorDarkest,
      'color-black': instance.colorBlack,
      'color-border': instance.colorBorder,
      'color-background': instance.colorBackground,
      'color-content': instance.colorContent,
      'color-hover': instance.colorHover,
      'color-hover-text': instance.colorHoverText,
      'color-font': instance.colorFont,
      'color-link': instance.colorLink,
      'color-input': instance.colorInput,
      'color-success': instance.colorSuccess,
      'color-info': instance.colorInfo,
      'color-warning': instance.colorWarning,
      'color-error': instance.colorError,
      'color-checkbox-bg': instance.colorCheckboxBg,
      'color-disabled-color': instance.colorDisabledColor,
      'color-disabled-background': instance.colorDisabledBackground,
      'menu-width': instance.menuWidth,
      'menu-bg-color': instance.menuBgColor,
      'menu-item-text-color': instance.menuItemTextColor,
      'menu-item-bg-color': instance.menuItemBgColor,
      'menu-item-hover-text-color': instance.menuItemHoverTextColor,
      'menu-item-hover-bg-color': instance.menuItemHoverBgColor,
      'title-bar-bg-color': instance.titleBarBgColor,
      'title-bar-text-color': instance.titleBarTextColor,
      'collapse-bar-bg-color': instance.collapseBarBgColor,
      'btn-create-color': instance.btnCreateColor,
      'btn-update-color': instance.btnUpdateColor,
      'btn-delete-color': instance.btnDeleteColor,
      'btn-success-color': instance.btnSuccessColor,
      'btn-info-color': instance.btnInfoColor,
      'btn-warning-color': instance.btnWarningColor,
      'btn-error-color': instance.btnErrorColor,
      'btn-text-light': instance.btnTextLight,
      'btn-text-dark': instance.btnTextDark,
      'font-family': instance.fontFamily,
      'font-size': instance.fontSize,
      'font-weight-normal': instance.fontWeightNormal,
      'font-weight-bold': instance.fontWeightBold,
      'spacing': instance.spacing,
      'spacing-half': instance.spacingHalf,
      'spacing-quarter': instance.spacingQuarter,
      'border-radius': instance.borderRadius,
    };
