import 'package:dio/dio.dart';

class Request {
  Dio _dio;
  Dio _createDio() {
    _dio = Dio(BaseOptions(
      baseUrl: "http://0.0.0.0:9002/"+ this.server,
      connectTimeout: 5000,
      receiveTimeout: 100000,
    ))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        // todo 请求的统一token在这里添加 , 也可以处理一些弹窗
        // options.headers["token"] = "request token";
        return options;
      },
      onResponse: (Response response) async {
        /**
         * todo 在这里处理统一的错误提示
         */
        if (response.data["code"] == 0) {
          return response.data["data"];
        }
        return Exception("错误");
      },
    ));
    return _dio;
  }

  Request({
    this.server,
  });
  final String server;
  Future get(String path) {
    return _createDio().get(path);
  }
}
