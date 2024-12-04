import 'package:bd_calling/app/data/models/post_models.dart';
import 'package:get/get.dart';

import '../../../data/models/network_response.dart';
import '../../../domain/repositories/post_repository.dart';

class HomeController extends GetxController {
  final isLoading = false.obs;
  final posts  = <PostModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    getPosts();
  }

  Future<void> getPosts() async {
    isLoading.value = true;
    final NetworkResponse response = await PostRepository.getPosts();
    if (response.isSuccess) {
      posts.value = postModelFromJson(response.jsonResponse!);

    }
    isLoading.value = false;
  }

}
