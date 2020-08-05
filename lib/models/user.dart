class User {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;

  User(this.id, this.name, this.username, this.email, this.address, this.phone,
      this.website);

  User.fromJson(Map json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    address = Address.fromJson(json['address']);
    phone = json['phone'];
    website = json['website'];
  }

  Map toJson() {
    return {
      'id' : id,
      'name' : name,
      'username' : username,
      'email' : email,
      'address' : address.toJson(),
      'phone' : phone,
      'website' : website
    };
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;

  Address(this.street, this.suite, this.city, this.zipcode);

  Address.fromJson(Map json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
  }

  Map toJson() {
    return {
      'street' : street,
      'suite' : suite,
      'city' : city,
      'zipcode' : zipcode
    };
  }
}