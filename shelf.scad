module plywood(w = 0, d = 0, h = .5) {
  linear_extrude(height = h) {
    polygon(points = [[0, 0], [w, 0], [w, -1 * d], [0, -1 * d]]);
  }
}

module shelf_at(height = 0) {
  translate([0, 0, height]) {
    plywood(width, depth);
  }
}

small_shelf_height = 18;
num_small_shelves = 3;
for (i = [1 : num_small_shelves]) {
  shelf_at(small_shelf_height * i);
}
