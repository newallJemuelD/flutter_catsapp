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
  );
}