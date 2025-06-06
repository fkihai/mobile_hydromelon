class PredictModel {
  int? id;
  String? imageUrl;
  String? prediction;
  String? score;
  String? datetime;

  PredictModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image'];
    prediction = json['prediction'];
    score = json['score'];
    datetime = json['predict_at'];
  }
}
