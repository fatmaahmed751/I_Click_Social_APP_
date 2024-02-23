class UserRegisterModel{
  late String name;
  late String email;
  late String password;



  late String uId;

  UserRegisterModel({

    this.name ='',
    this.email='',
    this.password='',

    this.uId=''
  });
  factory UserRegisterModel.fromJson(Map<String,dynamic>json){

    return UserRegisterModel(
      name:json['name'],
      email:json['email'],
      uId:json['uId'],
      // confirmPassword:json['confirmPassword'],
      // password:json['password'],

    );

  }
  Map<String,dynamic> toMap(){
    return{
      'name' :name,

      'email' :email,
      'uId' :uId,

    };
  }

}