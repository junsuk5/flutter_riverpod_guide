import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/main_state.dart';

class MainViewModel extends StateNotifier<MainState> {
  MainViewModel(super.state);

  void increment() async {
    state = state.copyWith(isLoading: true);

    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(
      count: state.count + 1,
      isLoading: false,
    );
  }
}
