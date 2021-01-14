import 'package:benchmark_harness/benchmark_harness.dart';

const N = 32;

@benchmark
void allocateFixedArray() {
  List.filled(N, null, growable: false);
}

@benchmark
void allocateGrowableArray() {
  List.filled(N, null, growable: true);
}
