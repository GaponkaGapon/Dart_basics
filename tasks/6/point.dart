import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  factory Point.origin() {
    return _origin;
  }

  factory Point.unitVector() {
    return _unitVector;
  }

  factory Point.xVector() {
    return _xVector;
  }

  factory Point.yVector() {
    return _yVector;
  }

  factory Point.zVector() {
    return _zVector;
  }

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }

  static final _origin = Point(0, 0, 0);
  static final _unitVector = Point(1, 1, 1);
  static final _xVector = Point(1, 0, 0);
  static final _yVector = Point(0, 1, 0);
  static final _zVector = Point(0, 0, 1);
}
