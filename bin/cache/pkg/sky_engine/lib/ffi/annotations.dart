// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of dart.ffi;

class DartRepresentationOf {
  /// Represents the Dart type corresponding to a [NativeType].
  ///
  /// [Int8]                               -> [int]
  /// [Int16]                              -> [int]
  /// [Int32]                              -> [int]
  /// [Int64]                              -> [int]
  /// [Uint8]                              -> [int]
  /// [Uint16]                             -> [int]
  /// [Uint32]                             -> [int]
  /// [Uint64]                             -> [int]
  /// [IntPtr]                             -> [int]
  /// [Double]                             -> [double]
  /// [Float]                              -> [double]
  /// [Pointer]<T>                         -> [Pointer]<T>
  /// [NativeFunction]<T1 Function(T2, T3) -> S1 Function(S2, S3)
  ///    where DartRepresentationOf(Tn) -> Sn
  /// T extends Struct                  -> T
  const DartRepresentationOf(String nativeType);
}

class Unsized {
  const Unsized();
}

/// This [NativeType] does not have predefined size.
///
/// Unsized NativeTypes do not support [sizeOf] because their size is unknown.
/// Consequently, [allocate], [Pointer.load], [Pointer.store], and
/// [Pointer.elementAt] are not available.
const unsized = const Unsized();
