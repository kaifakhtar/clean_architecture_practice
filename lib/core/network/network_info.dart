
//import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo{
  bool get isConnected;
}
class NetworkInfoImpl implements NetworkInfo {
  //final DataConnectionChecker dataConnectionCheker;

  //NetworkInfoImpl(this.dataConnectionCheker);

  @override
  bool get isConnected => true;
}