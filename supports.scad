include <lumber.scad>

module twobyfour() {
  two_by_four(height);
}

module flattwobyfour() {
  rotate(-90)
  two_by_four(height);
}

numtwobyfours = 4;
gaps = numtwobyfours - 1;
gapbetween = (width - (numtwobyfours * FOUR_BY)) / (gaps);

function twobyfourstartpos(num = 0) = (gapbetween * num) + (FOUR_BY * num);

twobyfour();

translate([twobyfourstartpos(1),0,0])
twobyfour();

translate([twobyfourstartpos(2),0,0])
twobyfour();


translate([twobyfourstartpos(3),0,0])
twobyfour();

translate([0, -1 * depth + FOUR_BY, 0])
flattwobyfour();

translate([width - 1.5, -1 * depth + FOUR_BY, 0])
flattwobyfour();
