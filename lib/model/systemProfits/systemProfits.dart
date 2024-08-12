class SystemProfitModel {
  int? statusCode;
  String? message;
  Data? data;

  SystemProfitModel({this.statusCode, this.message, this.data});

  SystemProfitModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? total;
  int? accomodation;
  int? activity;
  int? trip;
  int? product;

  Data({this.total, this.accomodation, this.activity, this.trip, this.product});

  Data.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    accomodation = json['accomodation'];
    activity = json['activity'];
    trip = json['trip'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['accomodation'] = this.accomodation;
    data['activity'] = this.activity;
    data['trip'] = this.trip;
    data['product'] = this.product;
    return data;
  }
}
