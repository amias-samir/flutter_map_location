import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';

import 'location_layer.dart';
import 'location_options.dart';

class LocationPlugin implements FlutterMapPlugin {
  @override
  Widget createLayer({
    required LayerOptions options,
    required MapState mapState,
    required Stream<void> stream,
  }) {
    if (options is LocationOptions) {
      return LocationLayer(options, mapState, stream);
    }
    throw ArgumentError('options is not of type LocationOptions');
  }

  @override
  bool supportsLayer(LayerOptions options) {
    return options is LocationOptions;
  }
}
