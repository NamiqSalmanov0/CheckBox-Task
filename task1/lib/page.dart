import 'package:flutter/material.dart';

import 'check_boxes.dart';

class PageList extends StatefulWidget {
  const PageList({super.key});

  @override
  State<PageList> createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  List<bool> ischecks = List.generate(7, (index) => false);

  @override
  Widget build(BuildContext context) {
    final List<String> myCheckText = [
      'I like Codepen',
      'I\'m a   designer',
      'I shouldn\'t be looking at this right now',
      'Pasta is my favourite food',
      'This Pen sucks!',
      'I already knwe how to create custom checkboxes',
      'I thought it was harder'
    ];
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'A Pen by Andre Cortellini',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
          ),
          for (var i = 0; i < myCheckText.length; i++)
            CheckBoxes(
                ischeck: ischecks[i],
                OnState: (bool? value) {
                  setState(() {
                    ischecks[i] = value!;
                  });
                },
                data: myCheckText[i])
        ],
      ),
    );
  }
}
