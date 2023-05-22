import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/main_state.dart';

final mainViewModel =
    StateNotifierProvider.autoDispose<MainViewModel, MainState>(
        (ref) => MainViewModel(ref));

class MainViewModel extends StateNotifier<MainState> {
  final Ref _ref;

  MainViewModel(this._ref) : super(MainState()) {
    // _ref.listen(provider, (previous, next) {
    //
    // });
  }

  void increment() async {
    state = state.copyWith(isLoading: true);

    await Future.delayed(const Duration(seconds: 2));
    state = state.copyWith(
      count: state.count + 1,
      isLoading: false,
    );
  }
}
