import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/main_view_model.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(mainViewModel.notifier);
    final state = ref.watch(mainViewModel);

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
          viewModel.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
