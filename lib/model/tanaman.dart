class Tanaman {
  int? lampu;
  int? manual;
  int? moisture;
  double? suhu;

  Tanaman({
    this.lampu,
    this.manual,
    this.moisture,
    this.suhu,
  });

  factory Tanaman.fromJson(Map<String, dynamic> json) => Tanaman(
        lampu: json["Lampu"],
        manual: json["Manual"],
        moisture: json["Moisture"],
        suhu: json["Suhu"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Lampu": lampu,
        "Manual": manual,
        "Moisture": moisture,
        "Suhu": suhu,
      };
}
