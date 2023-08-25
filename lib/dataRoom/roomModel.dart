// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

class Room {
  int? roomId;
  String? name;
  int homeId;

  Room({
    this.roomId,
    this.name,
    required this.homeId,
  });

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        roomId: json['roomId'],
        name: json['name'],
        homeId: json['homeId'],
      );

  Map<String, dynamic> toJson() => {
        'roomId': roomId,
        'name': name,
        'homeId': homeId,
      };
}
