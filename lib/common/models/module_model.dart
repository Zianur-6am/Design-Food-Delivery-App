
class ModuleModel {
  int? id;
  String? moduleName;
  String? moduleType;
  String? thumbnailFullUrl;
  String? iconFullUrl;
  int? themeId;
  String? description;
  int? storesCount;
  String? createdAt;
  String? updatedAt;
  List<ModuleZoneData>? zones;
  double? minimumChargeAmount;
  double? maximumChargeAmount;
  double? serviceCharge;

  ModuleModel({
    this.id,
    this.moduleName,
    this.moduleType,
    this.thumbnailFullUrl,
    this.storesCount,
    this.iconFullUrl,
    this.themeId,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.zones,
    this.minimumChargeAmount,
    this.maximumChargeAmount,
    this.serviceCharge
  });

  ModuleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    moduleName = json['module_name'];
    moduleType = json['module_type'];
    thumbnailFullUrl = json['thumbnail_full_url'];
    iconFullUrl = json['icon_full_url'];
    themeId = json['theme_id'];
    description = json['description'];
    storesCount = json['stores_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['zones'] != null) {
      zones = <ModuleZoneData>[];
      json['zones'].forEach((v) => zones!.add(ModuleZoneData.fromJson(v)));
    }
    if(json['minimum_charge_amount'] != null){
      minimumChargeAmount = double.tryParse(json['minimum_charge_amount'].toString());
    }
    if(json['maximum_charge_amount'] != null){
      maximumChargeAmount = double.tryParse(json['maximum_charge_amount'].toString());
    }
    if(json['service_charge'] != null){
      serviceCharge = double.tryParse(json['service_charge'].toString());
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['module_name'] = moduleName;
    data['module_type'] = moduleType;
    data['thumbnail_full_url'] = thumbnailFullUrl;
    data['icon_full_url'] = iconFullUrl;
    data['theme_id'] = themeId;
    data['description'] = description;
    data['stores_count'] = storesCount;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (zones != null) {
      data['zones'] = zones!.map((v) => v.toJson()).toList();
    }
    data['minimum_charge_amount'] = minimumChargeAmount;
    data['maximum_charge_amount'] = maximumChargeAmount;
    data['service_charge'] = serviceCharge;

    return data;
  }
}

class ModuleZoneData {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;
  bool? cashOnDelivery;
  bool? digitalPayment;

  ModuleZoneData({
    this.id,
    this.name,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.cashOnDelivery,
    this.digitalPayment,
  });

  ModuleZoneData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cashOnDelivery = json['cash_on_delivery'];
    digitalPayment = json['digital_payment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['cash_on_delivery'] = cashOnDelivery;
    data['digital_payment'] = digitalPayment;
    return data;
  }
}
