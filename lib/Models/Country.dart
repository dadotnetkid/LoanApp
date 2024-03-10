class Country {
  final String isoScope;

  Country({required this.isoScope});

  factory Country.fromJson(Map<String,dynamic> json) {


    return Country(isoScope: json['isoScope']);
  }
}
