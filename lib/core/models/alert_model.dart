class Alert {
  String? room;
  bool? position;
  int? time;
  bool? siteBookMark;
  bool? zoneBookMark;
  String? level;
  bool? location;

  Alert({
    required this.room,
    required this.position,
    required this.time,
    required this.siteBookMark,
    required this.zoneBookMark,
    required this.level,
    required this.location,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['room'] = room;
    data['position'] = position;
    data['time'] = time;
    data['siteBookMark'] = siteBookMark;
    data['zoneBookMark'] = zoneBookMark;
    data['level'] = level;
    data['location'] = location;
    return data;
  }
}
