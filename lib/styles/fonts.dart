part of styles;


class AppFont {
  static TextStyle getAppFont({FontWeight fontWeight, double fontSize, Color color}){
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }
}

class HeaderFonts {
  static TextStyle primaryText = AppFont.getAppFont(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: TextColor.primaryColor,
  );
  static TextStyle secondaryText = AppFont.getAppFont(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: TextColor.primaryColor,
  );
  static TextStyle tertiaryText = AppFont.getAppFont(
    fontWeight: FontWeight.normal,
    fontSize: 17,
    color: TextColor.secondaryColor,
  );
}


class TextFonts {
  static TextStyle primaryText = AppFont.getAppFont(
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: TextColor.primaryColor,
  );
}