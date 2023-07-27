import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme_1/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  String? name;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToSerice(PostModel postModel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postModel);

    if (response.statusCode == HttpStatus.ok) {
      name = 'Bararili';
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading ? const CircularProgressIndicator.adaptive() : const SizedBox.shrink(),
        ],
      ),
      body: Column(children: [
        TextField(
          controller: _titleController,
          decoration: const InputDecoration(labelText: 'Title'),
          textInputAction: TextInputAction.next,
        ),
        TextField(
          controller: _bodyController,
          decoration: const InputDecoration(labelText: 'Body'),
          textInputAction: TextInputAction.next,
        ),
        TextField(
          controller: _userIdController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'UserId'),
          textInputAction: TextInputAction.done,
        ),
        TextButton(
            onPressed: _isLoading
                ? null
                : () {
                    if (_titleController.text.isEmpty &&
                        _bodyController.text.isEmpty &&
                        _userIdController.text.isEmpty) {
                      final model = PostModel(
                          body: _bodyController.text,
                          title: _titleController.text,
                          userId: int.tryParse(_userIdController.text));
                      _addItemToSerice(model);
                    }
                  },
            child: const Text('Send'))
      ]),
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
