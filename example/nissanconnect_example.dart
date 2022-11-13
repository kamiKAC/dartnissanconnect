import 'dart:io';
import 'package:dartnissanconnect/dartnissanconnect.dart';

main() {
  final Map<String, String> envVars = Platform.environment;

  final String userName = envVars['LEAF_USERNAME'] ?? 'username';
  final String passWord = envVars['LEAF_PASSWORD'] ?? 'password';

  NissanConnectSession session = new NissanConnectSession(debug: true);

  session.login(username: userName, password: passWord).then((vehicle) {
    print(vehicle.nickname);
    print(vehicle.modelName);
    print(vehicle.vin);

    vehicle.requestCockpitStatus().then((info) {
      print(info.totalMileage);
    });

    vehicle.requestDailyStatistics( DateTime( 2022, 11, 13))
    .then((info) {
      print(info.date);
      print(info.tripsNumber);
    }).catchError((err) {
      print("no data");
    });

    // vehicle.requestMonthlyStatistics(month: DateTime.now()).then((info) {
    //   print(info.date);
    //   print(info.tripsNumber);
    // });
  });
}
