class Character {
  final String name;
  final String imageId;
  final int id;

  Character({
    required this.name,
    this.imageId = 'no-image',
    required this.id
  });
}