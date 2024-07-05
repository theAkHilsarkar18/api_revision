import 'dart:convert';

import 'package:api_revision/api_services.dart';
import 'package:api_revision/cart_model.dart';
import 'package:api_revision/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
ApiServices apiServices = ApiServices();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    NewsProvider newsProvider = Provider.of<NewsProvider>(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('New24'),
      ),
      body: FutureBuilder(
        future: apiServices.apiCalling(),
        builder: (context, snapshot) {
          if(snapshot.hasData)
            {
              newsProvider.newsModel = NewsModel(snapshot.data!);
              return Center(
                child: Image.network(newsProvider.newsModel.articles[0].urlToImage),
              );
            }
          else
            {
              return const Center(child: CircularProgressIndicator(),);
            }

        },
      ),
    );
  }
}
