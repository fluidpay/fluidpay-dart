import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BrandingGetResponse extends Responsable<BrandingResponseData> {
  BrandingGetResponse();

  factory BrandingGetResponse.fromJson(Map<String, dynamic> map) =>
      _$BrandingGetResponseFromJson(map);

  Map<String, dynamic> toJson() => _$BrandingGetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BrandingResponseData extends Decodable {
  String id;
  String accountType;
  String accountTypeId;
  MerchantStyles styles;

  BrandingResponseData();

  factory BrandingResponseData.fromJson(Map<String, dynamic> json) =>
      _$BrandingResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BrandingResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantStyles extends Decodable {
// colors
  @JsonKey(name: 'color-primary')
  String colorPrimary;
  @JsonKey(name: 'color-secondary')
  String colorSecondary;
  @JsonKey(name: 'color-tertiary')
  String colorTertiary;
  @JsonKey(name: 'color-quaternary')
  String colorQuaternary;
  @JsonKey(name: 'color-white')
  String colorWhite;
  @JsonKey(name: 'color-lightest')
  String colorLightest;
  @JsonKey(name: 'color-lighter')
  String colorLighter;
  @JsonKey(name: 'color-light')
  String colorLight;
  @JsonKey(name: 'color-grey')
  String colorGrey;
  @JsonKey(name: 'color-dark')
  String colorDark;
  @JsonKey(name: 'color-darker')
  String colorDarker;
  @JsonKey(name: 'color-darkest')
  String colorDarkest;
  @JsonKey(name: 'color-black')
  String colorBlack;

//content
  @JsonKey(name: 'color-border')
  String colorBorder;
  @JsonKey(name: 'color-background')
  String colorBackground;
  @JsonKey(name: 'color-content')
  String colorContent;

  // hover
  @JsonKey(name: 'color-hover')
  String colorHover;
  @JsonKey(name: 'color-hover-text')
  String colorHoverText;

  //text
  @JsonKey(name: 'color-font')
  String colorFont;
  @JsonKey(name: 'color-link')
  String colorLink;
  @JsonKey(name: 'color-input')
  String colorInput;

  // descriptiors
  @JsonKey(name: 'color-success')
  String colorSuccess;
  @JsonKey(name: 'color-info')
  String colorInfo;
  @JsonKey(name: 'color-warning')
  String colorWarning;
  @JsonKey(name: 'color-error')
  String colorError;

  //checkbox
  @JsonKey(name: 'color-checkbox-bg')
  String colorCheckboxBg;

  //disabled
  @JsonKey(name: 'color-disabled-color')
  String colorDisabledColor;
  @JsonKey(name: 'color-disabled-background')
  String colorDisabledBackground;

  //menu
  @JsonKey(name: 'menu-width')
  String menuWidth;
  @JsonKey(name: 'menu-bg-color')
  String menuBgColor;
  @JsonKey(name: 'menu-item-text-color')
  String menuItemTextColor;
  @JsonKey(name: 'menu-item-bg-color')
  String menuItemBgColor;
  @JsonKey(name: 'menu-item-hover-text-color')
  String menuItemHoverTextColor;
  @JsonKey(name: 'menu-item-hover-bg-color')
  String menuItemHoverBgColor;

  // title bar
  @JsonKey(name: 'title-bar-bg-color')
  String titleBarBgColor;
  @JsonKey(name: 'title-bar-text-color')
  String titleBarTextColor;

  //collapse bar
  @JsonKey(name: 'collapse-bar-bg-color')
  String collapseBarBgColor;

  //buttons
  @JsonKey(name: 'btn-create-color')
  String btnCreateColor;
  @JsonKey(name: 'btn-update-color')
  String btnUpdateColor;
  @JsonKey(name: 'btn-delete-color')
  String btnDeleteColor;
  @JsonKey(name: 'btn-success-color')
  String btnSuccessColor;
  @JsonKey(name: 'btn-info-color')
  String btnInfoColor;
  @JsonKey(name: 'btn-warning-color')
  String btnWarningColor;
  @JsonKey(name: 'btn-error-color')
  String btnErrorColor;
  @JsonKey(name: 'btn-text-light')
  String btnTextLight;
  @JsonKey(name: 'btn-text-dark')
  String btnTextDark;

  // fonts
  @JsonKey(name: 'font-family')
  String fontFamily;
  @JsonKey(name: 'font-size')
  String fontSize;
  @JsonKey(name: 'font-weight-normal')
  String fontWeightNormal;
  @JsonKey(name: 'font-weight-bold')
  String fontWeightBold;

  // spacing
  @JsonKey(name: 'spacing')
  String spacing;
  @JsonKey(name: 'spacing-half')
  String spacingHalf;
  @JsonKey(name: 'spacing-quarter')
  String spacingQuarter;

  // misc
  @JsonKey(name: 'border-radius')
  String borderRadius;

  MerchantStyles({
    this.colorPrimary,
    this.colorSecondary,
    this.colorTertiary,
    this.colorQuaternary,
    this.colorWhite,
    this.colorLightest,
    this.colorLighter,
    this.colorLight,
    this.colorGrey,
    this.colorDark,
    this.colorDarker,
    this.colorDarkest,
    this.colorBlack,
    this.colorBorder,
    this.colorBackground,
    this.colorContent,
    this.colorHover,
    this.colorHoverText,
    this.colorFont,
    this.colorLink,
    this.colorInput,
    this.colorSuccess,
    this.colorInfo,
    this.colorWarning,
    this.colorError,
    this.colorCheckboxBg,
    this.colorDisabledColor,
    this.colorDisabledBackground,
    this.menuWidth,
    this.menuBgColor,
    this.menuItemTextColor,
    this.menuItemBgColor,
    this.menuItemHoverTextColor,
    this.menuItemHoverBgColor,
    this.titleBarBgColor,
    this.titleBarTextColor,
    this.collapseBarBgColor,
    this.btnCreateColor,
    this.btnUpdateColor,
    this.btnDeleteColor,
    this.btnSuccessColor,
    this.btnInfoColor,
    this.btnWarningColor,
    this.btnErrorColor,
    this.btnTextLight,
    this.btnTextDark,
    this.fontFamily,
    this.fontSize,
    this.fontWeightNormal,
    this.fontWeightBold,
    this.spacing,
    this.spacingHalf,
    this.spacingQuarter,
    this.borderRadius,
  });

  factory MerchantStyles.fromJson(Map<String, dynamic> json) =>
      _$MerchantStylesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantStylesToJson(this);
}