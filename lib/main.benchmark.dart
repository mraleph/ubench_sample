// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// BenchmarkGenerator
// **************************************************************************

import 'package:benchmark_harness/benchmark_runner.dart' as benchmark_runner;

import 'package:ubench/main.dart' as lib;

void _$measuredLoop$allocateFixedArray(int numIterations) {
  while (numIterations-- > 0) {
    lib.allocateFixedArray();
  }
}

void _$measuredLoop$allocateGrowableArray(int numIterations) {
  while (numIterations-- > 0) {
    lib.allocateGrowableArray();
  }
}

// BENCHMARKS: allocateFixedArray,allocateGrowableArray
const _targetBenchmark =
    String.fromEnvironment('targetBenchmark', defaultValue: 'all');
const _shouldMeasureAll = _targetBenchmark == 'all';

const _shouldMeasure$allocateFixedArray =
    _shouldMeasureAll || _targetBenchmark == 'allocateFixedArray';

const _shouldMeasure$allocateGrowableArray =
    _shouldMeasureAll || _targetBenchmark == 'allocateGrowableArray';

void main() {
  benchmark_runner.runBenchmarks(const {
    if (_shouldMeasure$allocateFixedArray)
      'allocateFixedArray': _$measuredLoop$allocateFixedArray,
    if (_shouldMeasure$allocateGrowableArray)
      'allocateGrowableArray': _$measuredLoop$allocateGrowableArray,
  });
}
