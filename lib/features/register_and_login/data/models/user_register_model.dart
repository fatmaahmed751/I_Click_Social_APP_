class UserRegisterModel {
  late String name;
  late String email;
  late String password;
  late String uId;
  late String image;
  late String coverImage;
  late String bio;

  UserRegisterModel({
    this.name = '',
      this.email = '',
      this.password = '',
      this.uId = '',
      this.image = 'https://img.freepik.com/premium-photo/photo-concept-art-illustration-potrait-women-hijab-generative-ai-technology_319965-160.jpg?size=626&ext=jpg&uid=R90663384&ga=GA1.1.1511182363.1696914515&semt=sph'
    ,
      this.coverImage ='https://www.freepik.com/free-photo/happy-arab-woman-hijab-portrait-smiling-girl-posing-red-studio-background-young-emotional-woman-human-emotions-facial-expression-concept-front-view_11527721.htm#fromView=search&page=1&position=2&uuid=bab6bc38-97ac-4c7c-9cff-eebd43561c52'
    ,
    this.bio = '',

      });
  factory UserRegisterModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterModel(
      name: json['name'],
      email: json['email'],
      uId: json['uId'],
      image: json['image'],
      coverImage: json['coverImage'],
      bio: json['bio'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'image': image,
      'email': email,
      'uId': uId,
      'coverImage': coverImage,
      'bio': bio
    };
  }

  List<UserRegisterModel> users = [];
}
