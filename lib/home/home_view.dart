import 'package:search_gif/home/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: TextFormField(
              initialValue: controller.keyWord,
              decoration: InputDecoration(
                hintText: 'Veuillez entrer votre mot clé',
                suffixIcon: InkWell(
                  onTap: () async {
                    await controller.getGif();
                  },
                  child: Icon(
                    Icons.search,
                  ),
                ),
              ),
              onChanged: (value) {
                controller.keyWord = value;
              },
            ),
          ),
          Obx(
            () => controller.gifList.length > 0
                ? Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          children: List.generate(
                            controller.gifList.length,
                            (index) => Image.network(
                              controller.gifList[index],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : Expanded(
                    child: Center(
                      child: Text('Aucun résultat'),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
