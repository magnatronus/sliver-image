import 'package:flutter/material.dart';

///
/// Creates an Image Widget with a shrinking/growing effect in a CustomScrollView
/// 
/// The [image] and [maxHeight] arguments must not be null
/// 
/// [maxHeight] will be the height of the image when initially displayed
/// [minHeight] is the smallest the image will collapse to when scrolling -  defaults to 0.0
/// 
class SliverImage extends SliverPersistentHeader {

  final Image image;
  final maxHeight;
  final minHeight;

  SliverImage({@required this.image, @required this.maxHeight, this.minHeight = 0.0}): super(delegate: _SliverImageDelegate( image, maxHeight, minHeight));

}

class _SliverImageDelegate extends SliverPersistentHeaderDelegate {

  final Image _image;
  final _maxHeight;
  final _minHeight;

  @override
  double get maxExtent => _maxHeight;

  @override
  double get minExtent => _minHeight;

  _SliverImageDelegate(this._image, this._maxHeight, this._minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent){
    return _image;
  }

  @override
  bool shouldRebuild(_SliverImageDelegate oldDelegate){
    return false;
  }

}