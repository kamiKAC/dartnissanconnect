class NissanConnectCockpitStatus {
  var totalMileage;

  NissanConnectCockpitStatus(Map map) {
    this.totalMileage = map['data']['attributes']['totalMileage'];
  }
}
