include <lumber.scad>
module plywood(w = 0, d = 0, h = .5) {
  linear_extrude(height = h) {
    polygon(points = [[0, 0], [w, 0], [w, -1 * d], [0, -1 * d]]);
  }
}

module shelf_support(l) {
  rotate([0, 90, 0])
  two_by_four(l);
}

module shelf_at(height = 0) {
  translate([0, 0, height]) {
    plywood(width, depth);
    shelf_support(width);
    translate([0, -1 * depth, 0]) {
      shelf_support(width);
    }
    rotate([0, 0, -90]) {
      shelf_support(depth);
      translate([0, width, 0]) {
        shelf_support(depth);
      }
    }
  }
}

small_shelf_height = 18;
num_small_shelves = 3;
for (i = [1 : num_small_shelves]) {
  shelf_at(small_shelf_height * i);
}
