// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegistrationModel {
  String? name;
  String? email;
  String? password;
  bool? isActive;
  String? userId;
  RegistrationModel({
    this.name,
    this.email,
    this.password,
    this.isActive,
    this.userId,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'name': name,
  //     'email': email,
  //     'password': password,
  //     'isActive': isActive,
  //     'userId': userId,
  //   };
  // }

  // factory RegistrationModel.fromMap(Map<String, dynamic> map) {
  //   return RegistrationModel(
  //     name: map['name'] != null ? map['name'] as String : null,
  //     email: map['email'] != null ? map['email'] as String : null,
  //     password: map['password'] != null ? map['password'] as String : null,
  //     isActive: map['isActive'] != null ? map['isActive'] as bool : null,
  //     userId: map['userId'] != null ? map['userId'] as String : null,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory RegistrationModel.fromJson(String source) =>
  //     RegistrationModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
