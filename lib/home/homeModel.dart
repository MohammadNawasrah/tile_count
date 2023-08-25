// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names
class Home {
  int? homeId;
  String? nameHome;
  double? priceAll;

  Home({this.homeId, this.nameHome, this.priceAll});
  factory Home.fromMap(Map<String, dynamic> map) {
    return Home(
      homeId: map['homeId'],
      nameHome: map['nameHome'],
      priceAll: map['priceAll'],
    );
  }
}
