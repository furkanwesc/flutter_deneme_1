import 'package:flutter/material.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.99);
  int _currentPageIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _DurationUtility._durationLow, curve: Curves.fastOutSlowIn);
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(padEnds: false, controller: _pageController, onPageChanged: _updatePageIndex, children: [
        Container(color: Colors.red),
        Container(color: Colors.blue),
        Container(color: Colors.green),
      ]),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
