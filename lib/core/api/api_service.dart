import 'package:dairy_sms/model/center_model/center_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://werw.com/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('centers')
  Future<HttpResponse<CenterModel>> getCenters();
}
