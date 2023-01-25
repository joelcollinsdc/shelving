TWO_BY = 1.5;
SIX_BY = 5.5;
FOUR_BY = 3.5;

module rounded_box(points, radius, height){
    hull(){
        for (p = points){
            translate(p) cylinder(r=radius, h=height);
        }
    }
}

module board(x = 0, y = 0, z = 0) {
  radius = 0.25;
  points = [
    [0 + radius, 0 + radius, 0],
    [x - radius, 0 + radius, 0],
    [0 + radius, y - radius, 0],
    [x - radius, y - radius, 0]
  ];
  rounded_box(points, radius, z);
}

module two_by_four(length = 0) {
  board(FOUR_BY, TWO_BY, length);
}

module two_by_six(length = 0) {
  board(SIX_BY, TWO_BY, length);
}

module four_by_four(length = 0) {
  board(FOUR_BY, FOUR_BY, length);
}
