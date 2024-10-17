import 'package:flutter/material.dart';

class AnimatedListStateDemo extends StatefulWidget {
  const AnimatedListStateDemo({super.key});

  @override
  State<AnimatedListStateDemo> createState() => _AnimatedListStateDemoState();
}

class _AnimatedListStateDemoState extends State<AnimatedListStateDemo> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  final List<String> _data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _data.insert(0, "Hello World ${_data.length + 1}");
            _listKey.currentState?.insertItem(0);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: 0,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                color: Colors.blueAccent,
                child: ListTile(
                  title: Text(
                    _data[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      String removedItem = _data.removeAt(index);
                      _listKey.currentState?.removeItem(
                        index,
                        (context, animation) {
                          return Container(
                            color: Colors.red,
                            child: ListTile(
                              title: Text(removedItem),
                            ),
                          );
                        },
                      );

                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
