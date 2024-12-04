import '../../data/models/network_response.dart';
import '../../services/api_clients.dart';
import '../../services/api_endpoints.dart';

class PostRepository {
  static Future<NetworkResponse> getPosts() async {
    final NetworkResponse response =
    await ApiClient().getRequest(ApiEndPoints.postApi,);
    return response;
  }
}