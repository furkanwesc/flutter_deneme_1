import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/202/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();

    final response = await _dio.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        _items = datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();

    final response = await _dio.get('/posts');
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        _items = datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('asda'),
        actions: [
          _isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
          itemCount: _items?.length ?? 0,
          itemBuilder: (context, index) {
            return _PostCard(model: _items?[index]);
          }),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
