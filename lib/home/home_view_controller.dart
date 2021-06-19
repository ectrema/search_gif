import 'package:get/get.dart';
import 'package:tenor/tenor.dart';

class HomeViewController extends GetxController {
  String keyWord = '';
  RxList<String> gifList = <String>[].obs;

  Future<void> getGif() async {
    gifList.clear();
    Tenor api = Tenor(apiKey: '0500FK5BVL33', language: 'fr');
    var temp  = await api.searchGIF('$keyWord');
    print(temp);
    temp!.results.forEach((e) {
     gifList.add(e.media!.gif!.previewUrl!); 
    });
  }
}
