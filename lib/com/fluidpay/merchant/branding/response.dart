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
  String? id;
  String? accountType;
  String? accountTypeId;
  MerchantStyles? styles;

  BrandingResponseData();

  factory BrandingResponseData.fromJson(Map<String, dynamic> json) =>
      _$BrandingResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BrandingResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.kebab)
class MerchantStyles extends Decodable {
// colors
  String? colorPrimary;
  String? colorSecondary;
  String? colorTertiary;
  String? colorQuaternary;
  String? colorWhite;
  String? colorLightest;
  String? colorLighter;
  String? colorLight;
  String? colorGrey;
  String? colorDark;
  String? colorDarker;
  String? colorDarkest;
  String? colorBlack;

//content
  String? colorBorder;
  String? colorBackground;
  String? colorContent;

  // hover
  String? colorHover;
  String? colorHoverText;

  //text
  String? colorFont;
  String? colorLink;
  String? colorInput;

  // descriptiors
  String? colorSuccess;
  String? colorInfo;
  String? colorWarning;
  String? colorError;

  //checkbox
  String? colorCheckboxBg;

  //disabled
  String? colorDisabledColor;
  String? colorDisabledBackground;

  //menu
  String? menuWidth;
  String? menuBgColor;
  String? menuItemTextColor;
  String? menuItemBgColor;
  String? menuItemHoverTextColor;
  String? menuItemHoverBgColor;

  // title bar
  String? titleBarBgColor;
  String? titleBarTextColor;

  //collapse bar
  String? collapseBarBgColor;

  //buttons
  String? btnCreateColor;
  String? btnUpdateColor;
  String? btnDeleteColor;
  String? btnSuccessColor;
  String? btnInfoColor;
  String? btnWarningColor;
  String? btnErrorColor;
  String? btnTextLight;
  String? btnTextDark;

  // fonts
  String? fontFamily;
  String? fontSize;
  String? fontWeightNormal;
  String? fontWeightBold;

  // spacing
  String? spacing;
  String? spacingHalf;
  String? spacingQuarter;

  // misc
  String? borderRadius;

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