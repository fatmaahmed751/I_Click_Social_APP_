class UserRegisterModel {
  late String name;
  late String email;
  late String password;
  late String uId;
  late String image;
  late String coverImage;

  UserRegisterModel({
    this.name = '',
      this.email = '',
      this.password = '',
      this.uId = '',
      this.image = '',
      this.coverImage = ''

      });
  factory UserRegisterModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterModel(
      name: json['name'],
      email: json['email'],
      uId: json['uId'],
      image: json['image'],
      coverImage: json['coverImage'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'email': email,
      'uId': uId,
      'coverImage': coverImage
    };
  }

  List<UserRegisterModel> users=[];
}
