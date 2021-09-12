import 'dart:convert';

class Usr {
  static List<Users>? person;
}

class Users {
  final int id;
  final String name;
  final String email;
  final int contact;
  final int ifsc;
  final int accountno;
  final int balance;

  Users(this.id, this.name, this.email, this.contact, this.ifsc, this.accountno,
      this.balance);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'contact': contact,
      'ifsc': ifsc,
      'accountno': accountno,
      'balance': balance,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      map['id'],
      map['name'],
      map['email'],
      map['contact'],
      map['ifsc'],
      map['accountno'],
      map['balance'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Users.fromJson(String source) => Users.fromMap(json.decode(source));
}
