class Country {
  Country({
    this.id,
    this.name,
  });
  String? id;
  String? name;

  factory Country.fromJson(Map<String, dynamic> json) => 
  Country(
    id: json['id'],
    name: json['name'],
  );
}