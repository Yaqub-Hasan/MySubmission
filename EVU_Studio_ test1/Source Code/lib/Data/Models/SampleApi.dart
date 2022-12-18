class SampleApi {
  Name? name;
  Images? images;
  String? gender;
  String? species;
  String? homePlanet;
  String? occupation;
  List<String>? sayings;
  int? id;
  String? age;

  SampleApi(
      {this.name,
        this.images,
        this.gender,
        this.species,
        this.homePlanet,
        this.occupation,
        this.sayings,
        this.id,
        this.age});

  SampleApi.fromJson(Map<String, dynamic> json) {
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    images =
    json['images'] != null ? new Images.fromJson(json['images']) : null;
    gender = json['gender'];
    species = json['species'];
    homePlanet = json['homePlanet'];
    occupation = json['occupation'];
    sayings = json['sayings'].cast<String>();
    id = json['id'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    if (this.images != null) {
      data['images'] = this.images!.toJson();
    }
    data['gender'] = this.gender;
    data['species'] = this.species;
    data['homePlanet'] = this.homePlanet;
    data['occupation'] = this.occupation;
    data['sayings'] = this.sayings;
    data['id'] = this.id;
    data['age'] = this.age;
    return data;
  }
}

class Name {
  String? first;
  String? middle;
  String? last;

  Name({this.first, this.middle, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    middle = json['middle'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['middle'] = this.middle;
    data['last'] = this.last;
    return data;
  }
}

class Images {
  String? headShot;
  String? main;

  Images({this.headShot, this.main});

  Images.fromJson(Map<String, dynamic> json) {
    headShot = json['head-shot'];
    main = json['main'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['head-shot'] = this.headShot;
    data['main'] = this.main;
    return data;
  }
}
