import 'package:benchmark_harness/benchmark_harness.dart';

const N = 32;

@benchmark
Object allocateFixedArray() {
  return List.filled(N, null, growable: false);
}

@benchmark
Object allocateGrowableArray() {
  return List.filled(N, null, growable: true);
}
