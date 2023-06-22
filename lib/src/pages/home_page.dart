import 'package:flutter/material.dart';
import 'package:portifolio/src/widgets/menu.dart';
import 'package:portifolio/src/widgets/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final sessionKey1 = GlobalKey();
  final sessionKey2 = GlobalKey();
  final sessionKey3 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Menu(onMenuClick: _onMenuClick),
        Expanded(
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                Section(
                    key: sessionKey1, color: Colors.purpleAccent, height: 1000),
                Section(
                    key: sessionKey2, color: Colors.yellowAccent, height: 2000),
                Section(
                    key: sessionKey3,
                    color: Colors.deepOrangeAccent,
                    height: 200),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  void _onMenuClick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = sessionKey1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = sessionKey2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = sessionKey3.currentContext!.findRenderObject() as RenderBox;
        break;

      default:
        throw Exception();
    }
    final offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(
      offset.dy + scrollController.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
