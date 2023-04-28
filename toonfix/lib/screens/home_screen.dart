
import 'package:flutter/material.dart';
import 'package:toonfix/models/webtoon.dart';
import 'package:toonfix/services/api_service.dart';
import 'package:toonfix/widgets/webtoon_widgets.dart';

import '../scroll/material_scroll.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          "Today's 툰s",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        foregroundColor: Colors.green,
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, future) {
          if (future.hasData) {
            return ScrollConfiguration(
              behavior: CustomScrollBehavior(),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(child: makeList(future))
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<WebtoonModel>> future) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: future.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      itemBuilder: (context, index) {
        var webtoon = future.data![index];
        return Webtoon(title: webtoon.title, thumb: webtoon.thumb, id: webtoon.id,);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 40),
    );
  }
}
