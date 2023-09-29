import 'package:dio/dio.dart';

abstract class Failuer {
  final String errorMessage;

  const Failuer(this.errorMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errorMessage);

  factory ServerFailuer.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection Timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Send Timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive Timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Request to ApiServer was canceled');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailuer('No Internet Connection');
        }
        return ServerFailuer('Unexpected Error, Please try again');
      default:
        return ServerFailuer('Opps,There was an error, Please try again');
    }
  }
  factory ServerFailuer.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your request not fonud , Please try later !');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal server error, Please try later !');
    } else {
      return ServerFailuer('Opps,There was an error, Please try again');
    }
  }
}
