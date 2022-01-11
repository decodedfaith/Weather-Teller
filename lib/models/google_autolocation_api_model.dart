class GoogleLocationApiModel {
  final List<LocationDescription>? predictions;
  final String? status;

  GoogleLocationApiModel({
    this.predictions,
    this.status,
  });

  factory GoogleLocationApiModel.fromJson(Map<String, dynamic> json) {
    return GoogleLocationApiModel(
      predictions: List.from(json['predictions']).map((e) => LocationDescription.fromJson(e)).toList(),
      status: json['status'],
    );
  }
}

class LocationDescription {
  final String? state;
  final String? country;
  final String? placeId;
  final String? reference;

  LocationDescription({
    this.state,
    this.country,
    this.placeId,
    this.reference,
  });

  factory LocationDescription.fromJson(Map<String, dynamic> json) {
    return LocationDescription(
      state: json['structured_formatting']['main_text'],
      country: json['structured_formatting']['secondary_text'],
      placeId: json['place_id'],
      reference: json['reference'],
    );
  }
}
