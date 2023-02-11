/// name : "mountai"
/// rating : 3.5
/// image : ""

class PlaceData {
  PlaceData({
      String? name, 
      num? rating, 
      String? image,}){
    _name = name;
    _rating = rating;
    _image = image;
}

  PlaceData.fromJson(dynamic json) {
    _name = json['name'];
    _rating = json['rating'];
    _image = json['image'];
  }
  String? _name;
  num? _rating;
  String? _image;
PlaceData copyWith({  String? name,
  num? rating,
  String? image,
}) => PlaceData(  name: name ?? _name,
  rating: rating ?? _rating,
  image: image ?? _image,
);
  String? get name => _name;
  num? get rating => _rating;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['rating'] = _rating;
    map['image'] = _image;
    return map;
  }

}