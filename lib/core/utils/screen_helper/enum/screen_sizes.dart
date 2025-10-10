enum ScreenSize {
  mobile,
  tablet,
  desktop;

  static ScreenSize fromWidth(double width) {
    switch (width) {
      case < 600:
        return mobile;
      case >= 600 && < 1024:
        return tablet;
      case >= 1024:
        return desktop;
      default:
        throw Exception("Width not in range");
    }
  }
}
