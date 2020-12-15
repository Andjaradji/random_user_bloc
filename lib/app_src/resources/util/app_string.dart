class AppString {
  static String baseUrl = 'https://randomuser.me';// Dev

//  static const String regexPhone = r'([\[\(])?(?:(\+62)|62|0)\1? ?-? ?8(?!0|4|6)\d(?!0)\d\1? ?-? ?\d{3,4} ?-? ?\d{3,5}(?: ?-? ?\d{3})?\b';
  static const String regexPhone = r'^(62|0)\d{8,16}$';
}