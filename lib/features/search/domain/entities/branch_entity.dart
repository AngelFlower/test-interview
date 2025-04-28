class BranchEntity {
  final int id;
  final String city;

  BranchEntity({
    required this.id,
    required this.city,
  });

  factory BranchEntity.fromJson(Map<String, dynamic> json) {
    return BranchEntity(
      id: json['id'] as int,
      city: json['ciudad'] as String,
    );
  }
}
