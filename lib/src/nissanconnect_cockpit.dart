class NissanConnectCockpit {
//  var totalKm;
  var totalMilage;

  NissanConnectCockpit(Map map) {
//    this.totalKm = map['totalKm'];
    this.totalMilage = map['data']['attributes']['totalMileage'];
  }
}
