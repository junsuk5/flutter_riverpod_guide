import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/di.dart';
import 'package:riverpod_guide/main_state.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch<MainState>(mainViewModel);
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.isLoading) const CircularProgressIndicator(),
            Text(
              '${state.count}',
              style: const TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(mainViewModel.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
