class User {
  final String firstName;
  final String lastName;
  final bool darkMode;
  final String region;
  final List<String> providers;

  User(
      {required this.firstName,
      required this.lastName,
      required this.darkMode,
      required this.region,
      required this.providers});
}
