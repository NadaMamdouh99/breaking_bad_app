
class HomeModel {
  String name;
  String image;
  String birthday;
  List occupation=[];
  String status;
  String nickName;
  List appearance=[];
  String portrayed;


  HomeModel(this.name, this.image, this.birthday, this.occupation, this.status,
      this.nickName, this.appearance, this.portrayed);

  HomeModel.fromJson(Map<String, dynamic> json){
    this.image=json['img'];
    this.name=json['name'];
    this.birthday=json['birthday'];
    this.occupation=json['occupation'];
    this.status=json['status'];
    this.nickName=json['nickname'];
    this.appearance=json['appearance'];
    this.portrayed=json['portrayed'];

  }

}