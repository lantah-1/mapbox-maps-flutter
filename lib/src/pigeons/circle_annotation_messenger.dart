// Autogenerated from Pigeon (v18.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

part of mapbox_maps_flutter;

/// Orientation of circle when map is pitched.
enum CirclePitchAlignment {
  /// The circle is aligned to the plane of the map.
  MAP,

  /// The circle is aligned to the plane of the viewport.
  VIEWPORT,
}

/// Controls the scaling behavior of the circle when the map is pitched.
enum CirclePitchScale {
  /// Circles are scaled according to their apparent distance to the camera.
  MAP,

  /// Circles are not scaled.
  VIEWPORT,
}

/// Controls the frame of reference for `circle-translate`.
enum CircleTranslateAnchor {
  /// The circle is translated relative to the map.
  MAP,

  /// The circle is translated relative to the viewport.
  VIEWPORT,
}

class CircleAnnotation {
  CircleAnnotation({
    required this.id,
    this.geometry,
    this.circleSortKey,
    this.circleBlur,
    this.circleColor,
    this.circleOpacity,
    this.circleRadius,
    this.circleStrokeColor,
    this.circleStrokeOpacity,
    this.circleStrokeWidth,
  });

  /// The id for annotation
  String id;

  /// The geometry that determines the location/shape of this annotation
  Map<String?, Object?>? geometry;

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  double? circleSortKey;

  /// Amount to blur the circle. 1 blurs the circle such that only the centerpoint is full opacity.
  double? circleBlur;

  /// The fill color of the circle.
  int? circleColor;

  /// The opacity at which the circle will be drawn.
  double? circleOpacity;

  /// Circle radius.
  double? circleRadius;

  /// The stroke color of the circle.
  int? circleStrokeColor;

  /// The opacity of the circle's stroke.
  double? circleStrokeOpacity;

  /// The width of the circle's stroke. Strokes are placed outside of the `circle-radius`.
  double? circleStrokeWidth;

  Object encode() {
    return <Object?>[
      id,
      geometry,
      circleSortKey,
      circleBlur,
      circleColor,
      circleOpacity,
      circleRadius,
      circleStrokeColor,
      circleStrokeOpacity,
      circleStrokeWidth,
    ];
  }

  static CircleAnnotation decode(Object result) {
    result as List<Object?>;
    return CircleAnnotation(
      id: result[0]! as String,
      geometry: (result[1] as Map<Object?, Object?>?)?.cast<String?, Object?>(),
      circleSortKey: result[2] as double?,
      circleBlur: result[3] as double?,
      circleColor: result[4] as int?,
      circleOpacity: result[5] as double?,
      circleRadius: result[6] as double?,
      circleStrokeColor: result[7] as int?,
      circleStrokeOpacity: result[8] as double?,
      circleStrokeWidth: result[9] as double?,
    );
  }
}

class CircleAnnotationOptions {
  CircleAnnotationOptions({
    this.geometry,
    this.circleSortKey,
    this.circleBlur,
    this.circleColor,
    this.circleOpacity,
    this.circleRadius,
    this.circleStrokeColor,
    this.circleStrokeOpacity,
    this.circleStrokeWidth,
  });

  /// The geometry that determines the location/shape of this annotation
  Map<String?, Object?>? geometry;

  /// Sorts features in ascending order based on this value. Features with a higher sort key will appear above features with a lower sort key.
  double? circleSortKey;

  /// Amount to blur the circle. 1 blurs the circle such that only the centerpoint is full opacity.
  double? circleBlur;

  /// The fill color of the circle.
  int? circleColor;

  /// The opacity at which the circle will be drawn.
  double? circleOpacity;

  /// Circle radius.
  double? circleRadius;

  /// The stroke color of the circle.
  int? circleStrokeColor;

  /// The opacity of the circle's stroke.
  double? circleStrokeOpacity;

  /// The width of the circle's stroke. Strokes are placed outside of the `circle-radius`.
  double? circleStrokeWidth;

  Object encode() {
    return <Object?>[
      geometry,
      circleSortKey,
      circleBlur,
      circleColor,
      circleOpacity,
      circleRadius,
      circleStrokeColor,
      circleStrokeOpacity,
      circleStrokeWidth,
    ];
  }

  static CircleAnnotationOptions decode(Object result) {
    result as List<Object?>;
    return CircleAnnotationOptions(
      geometry: (result[0] as Map<Object?, Object?>?)?.cast<String?, Object?>(),
      circleSortKey: result[1] as double?,
      circleBlur: result[2] as double?,
      circleColor: result[3] as int?,
      circleOpacity: result[4] as double?,
      circleRadius: result[5] as double?,
      circleStrokeColor: result[6] as int?,
      circleStrokeOpacity: result[7] as double?,
      circleStrokeWidth: result[8] as double?,
    );
  }
}

class _OnCircleAnnotationClickListenerCodec extends StandardMessageCodec {
  const _OnCircleAnnotationClickListenerCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CircleAnnotation) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return CircleAnnotation.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class OnCircleAnnotationClickListener {
  static const MessageCodec<Object?> pigeonChannelCodec =
      _OnCircleAnnotationClickListenerCodec();

  void onCircleAnnotationClick(CircleAnnotation annotation);

  static void setUp(
    OnCircleAnnotationClickListener? api, {
    BinaryMessenger? binaryMessenger,
    String messageChannelSuffix = '',
  }) {
    messageChannelSuffix =
        messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.mapbox_maps_flutter.OnCircleAnnotationClickListener.onCircleAnnotationClick$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.mapbox_maps_flutter.OnCircleAnnotationClickListener.onCircleAnnotationClick was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final CircleAnnotation? arg_annotation =
              (args[0] as CircleAnnotation?);
          assert(arg_annotation != null,
              'Argument for dev.flutter.pigeon.mapbox_maps_flutter.OnCircleAnnotationClickListener.onCircleAnnotationClick was null, expected non-null CircleAnnotation.');
          try {
            api.onCircleAnnotationClick(arg_annotation!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}

class __CircleAnnotationMessengerCodec extends StandardMessageCodec {
  const __CircleAnnotationMessengerCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CircleAnnotation) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is CircleAnnotation) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is CircleAnnotationOptions) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is CircleAnnotationOptions) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return CircleAnnotation.decode(readValue(buffer)!);
      case 129:
        return CircleAnnotation.decode(readValue(buffer)!);
      case 130:
        return CircleAnnotationOptions.decode(readValue(buffer)!);
      case 131:
        return CircleAnnotationOptions.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class _CircleAnnotationMessenger {
  /// Constructor for [_CircleAnnotationMessenger].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  _CircleAnnotationMessenger(
      {BinaryMessenger? binaryMessenger, String messageChannelSuffix = ''})
      : __pigeon_binaryMessenger = binaryMessenger,
        __pigeon_messageChannelSuffix =
            messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec =
      __CircleAnnotationMessengerCodec();

  final String __pigeon_messageChannelSuffix;

  Future<CircleAnnotation> create(
      String managerId, CircleAnnotationOptions annotationOption) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.create$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotationOption]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else if (__pigeon_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (__pigeon_replyList[0] as CircleAnnotation?)!;
    }
  }

  Future<List<CircleAnnotation?>> createMulti(String managerId,
      List<CircleAnnotationOptions?> annotationOptions) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.createMulti$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotationOptions]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else if (__pigeon_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (__pigeon_replyList[0] as List<Object?>?)!
          .cast<CircleAnnotation?>();
    }
  }

  Future<void> update(String managerId, CircleAnnotation annotation) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.update$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotation]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> delete(String managerId, CircleAnnotation annotation) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.delete$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, annotation]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> deleteAll(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.deleteAll$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<void> setCircleEmissiveStrength(
      String managerId, double circleEmissiveStrength) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.setCircleEmissiveStrength$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, circleEmissiveStrength]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<double?> getCircleEmissiveStrength(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.getCircleEmissiveStrength$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as double?);
    }
  }

  Future<void> setCirclePitchAlignment(
      String managerId, CirclePitchAlignment circlePitchAlignment) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.setCirclePitchAlignment$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
            .send(<Object?>[managerId, circlePitchAlignment.index])
        as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<CirclePitchAlignment?> getCirclePitchAlignment(
      String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.getCirclePitchAlignment$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as int?) == null
          ? null
          : CirclePitchAlignment.values[__pigeon_replyList[0]! as int];
    }
  }

  Future<void> setCirclePitchScale(
      String managerId, CirclePitchScale circlePitchScale) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.setCirclePitchScale$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, circlePitchScale.index]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<CirclePitchScale?> getCirclePitchScale(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.getCirclePitchScale$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as int?) == null
          ? null
          : CirclePitchScale.values[__pigeon_replyList[0]! as int];
    }
  }

  Future<void> setCircleTranslate(
      String managerId, List<double?> circleTranslate) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.setCircleTranslate$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
        .send(<Object?>[managerId, circleTranslate]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<List<double?>?> getCircleTranslate(String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.getCircleTranslate$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as List<Object?>?)?.cast<double?>();
    }
  }

  Future<void> setCircleTranslateAnchor(
      String managerId, CircleTranslateAnchor circleTranslateAnchor) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.setCircleTranslateAnchor$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
            .send(<Object?>[managerId, circleTranslateAnchor.index])
        as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }

  Future<CircleTranslateAnchor?> getCircleTranslateAnchor(
      String managerId) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.mapbox_maps_flutter._CircleAnnotationMessenger.getCircleTranslateAnchor$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[managerId]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return (__pigeon_replyList[0] as int?) == null
          ? null
          : CircleTranslateAnchor.values[__pigeon_replyList[0]! as int];
    }
  }
}
