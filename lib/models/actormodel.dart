class Actor {
  final String firstName;
  final String lastName;
  final String profileImageUrl;
  final int age;
  final List<String> movies;

  Actor(
      {required this.firstName,
      required this.lastName,
      required this.profileImageUrl,
      required this.age,
      required this.movies});
}
