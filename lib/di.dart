import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_guide/main_state.dart';
import 'package:riverpod_guide/main_view_model.dart';

final mainViewModel = StateNotifierProvider<MainViewModel, MainState>(
    (ref) => MainViewModel(MainState()));
