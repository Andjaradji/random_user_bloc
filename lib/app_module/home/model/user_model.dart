class Coordinates {
  final String latitude,longitude;

  Coordinates(this.latitude, this.longitude);

  Coordinates.fromJson(Map<String, dynamic> json)
      : latitude = json['latitude'],
        longitude = json['longitude'];
}

class Street {
  final int number;
  final String name;

  Street(this.name,this.number);

  Street.fromJson(Map<String, dynamic> json)
    : number = json['number'],
      name = json['name'];
}

class Name {
  final String title, first, last;

  Name(this.first, this.title, this.last);

  Name.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        first = json['first'],
        last = json['last'];
}

class Location {
  final String city, state;
  final dynamic postcode;
  final Street street;
  final Coordinates coordinates;

  Location(this.street, this.city, this.state, this.postcode, this.coordinates);

  Location.fromJson(Map<String, dynamic> json)
      : street = Street.fromJson(json['street']),
        city = json['city'],
        state = json['state'],
        postcode = json['postcode'],
        coordinates = Coordinates.fromJson(json['coordinates']);
}

class Picture {
  final String large, medium, thumbnail;

  Picture(this.large, this.medium, this.thumbnail);

  Picture.fromJson(Map<String, dynamic> json)
      : large = json["large"],
        medium = json["medium"],
        thumbnail = json["thumbnail"];
}

class UserModel {
  final String gender, email;
  final Name name;
  final Location location;
  final Picture picture;

  UserModel(this.gender, this.email, this.name, this.location, this.picture);

  UserModel.fromJson(Map<String, dynamic> json)
      : gender = json['gender'],
        name = Name.fromJson(json['name']),
        location = Location.fromJson(json["location"]),
        email = json['email'],
        picture = Picture.fromJson(json['picture']);
}