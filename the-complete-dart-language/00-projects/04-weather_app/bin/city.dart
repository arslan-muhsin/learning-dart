class City {
  final String title;
  final String locationType;
  final int id;
  final String lattLong;

  const City(
      {required this.title,
      required this.locationType,
      required this.id,
      required this.lattLong});

  factory City.fromJson(List<dynamic> jsonArray) {
    String? title;
    String? locationType;
    int? id;
    String? lattLong;

    Map<String, Object?> json = jsonArray.first;

    if (json["title"] is String) {
      title = json["title"] as String;
    }

    if (json["location_type"] is String) {
      locationType = json["location_type"] as String;
    }

    if (json["woeid"] is int) {
      id = json["woeid"] as int;
    }

    if (json["latt_long"] is String) {
      lattLong = json["latt_long"] as String;
    }

    if (title!.isNotEmpty &&
        locationType!.isNotEmpty &&
        id != null &&
        lattLong!.isNotEmpty) {
      return City(
          title: title, locationType: locationType, id: id, lattLong: lattLong);
    }

    return City(
        title: "Unknown", locationType: "Unknown", id: 0, lattLong: "Unknown");
  }

  @override
  String toString() =>
      "Title:$title\nLocation Type:$locationType\nId:$id\nLatt&Long:$lattLong";
}
