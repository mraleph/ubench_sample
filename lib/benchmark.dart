// Original benchmark from https://gist.github.com/letsar/ebc99e00540e60d3ec99636108e52e6a

import 'package:benchmark_harness/benchmark_harness.dart';

abstract class Benchmark extends BenchmarkBase {
  const Benchmark(String name) : super(name);

  @override
  void exercise() {
    for (int i = 0; i < 100000; i++) {
      run();
    }
  }
}

class GrowableListBenchmark extends Benchmark {
  const GrowableListBenchmark(this.length) : super('growable[$length]');

  final int length;

  @override
  void run() {
    List<int>()..length = length;
  }
}

class FixedLengthListBenchmark extends Benchmark {
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
