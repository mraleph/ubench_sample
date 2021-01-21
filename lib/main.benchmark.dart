// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// BenchmarkGenerator
// **************************************************************************

import 'package:benchmark_harness/benchmark_runner.dart' as $b;

import 'package:ubench/main.dart' as lib;

@pragma('vm:never-inline')
@pragma('vm:no-interrupts')
void _$measuredLoop$allocateFixedArray(int numIterations) {
  // Work-around a limitation in the AOT compiler which prevents
  // us from unboxing numIterations even if we insert an explicit
  // `null` check.
  var n = numIterations - 0;
  while (n-- > 0) {
    $b.reachabilityFence(lib.allocateFixedArray());
  }
}

@pragma('vm:never-inline')
@pragma('vm:no-interrupts')
void _$measuredLoop$allocateGrowableArray(int numIterations) {
  // Work-around a limitation in the AOT compiler which prevents
  // us from unboxing numIterations even if we insert an explicit
  // `null` check.
  var n = numIterations - 0;
  while (n-- > 0) {
    $b.reachabilityFence(lib.allocateGrowableArray());
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

void main() async {
  await $b.runBenchmarks(const {
    if (_shouldMeasure$allocateFixedArray)
      'allocateFixedArray': _$measuredLoop$allocateFixedArray,
    if (_shouldMeasure$allocateGrowableArray)
      'allocateGrowableArray': _$measuredLoop$allocateGrowableArray,
  });
}
