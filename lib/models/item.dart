class Item {
  final int id;
  final String name;
  final String category;
  final int status;
  final String type;
  final DateTime completedDate;
  final bool isCompleted;
  final String imageUrl;

  Item(
    this.id,
    this.name,
    this.category,
    this.status,
    this.type,
    this.completedDate,
    this.isCompleted,
    this.imageUrl,
  );
}
