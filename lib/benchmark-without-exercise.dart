// Modification of the benchmark from https://gist.github.com/letsar/ebc99e00540e60d3ec99636108e52e6a
// which does not perform 100000 iterations of run.

import 'package:benchmark_harness/benchmark_harness.dart';

class GrowableListBenchmark extends BenchmarkBase {
  const GrowableListBenchmark(this.length) : super('growable[$length]');

  final int length;

  @override
  void run() {
    List<int>()..length = length;
  }
}

class FixedLengthListBenchmark extends BenchmarkBase {
  const FixedLengthListBenchmark(this.length) : super('fixed-length[$length]');

  final int length;

  @override
  void run() {
    List(length);
  }
}

void main() {
  const GrowableListBenchmark(32).report();
  const FixedLengthListBenchmark(32).report();
}
