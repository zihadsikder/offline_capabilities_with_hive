import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/confiq/app_colors.dart';
import '../../../core/constants/app_text_style.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBgColor,
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (controller.posts.isEmpty) {
          return const Center(child: Text("No posts available"));
        }

        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      "${post.id ?? ''}. ",
                      style: AppTextStyle.normalTextStyle(),
                    ),
                    Expanded(
                      child: Text(
                        post.title ?? "No Title",
                        style: AppTextStyle.headerStyle(),
                        overflow: TextOverflow.ellipsis, // Truncate long text
                      ),
                    ),
                  ],
                ),
                subtitle: Text(post.body ?? "No Content"),

              ),
            );
          },
        );
      }),
    );
  }
}