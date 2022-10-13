import 'dart:math';

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);

  Point.origin()
      : x = 0,
        y = 0,
        z = 0;

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    var dz = z - other.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }
}
