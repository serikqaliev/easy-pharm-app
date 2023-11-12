class Category implements Comparable<Category> {
  final int id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) => Category(id: json['id'] as int, name: json['name'] as String);

  Map<String, dynamic> toJson() => {'id': id, 'name': name};

  @override
  int get hashCode => id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Category && id == other.id;

  @override
  int compareTo(Category other) => name.compareTo(other.name);
}
