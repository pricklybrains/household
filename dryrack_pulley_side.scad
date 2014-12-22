length=97;
width=15;
thickness=3;
hole_size=4.2;


difference() {
 union() {
  hull() {
   cylinder(d=width, h=thickness);
   translate([length-width,0]) cylinder(d=width, h=thickness);
  }
  cylinder(d=width, h=thickness*2);
  translate([length-width,0]) cylinder(d=width, h=thickness*2);
 }
 cylinder(d=hole_size, h=thickness*2, $fs=0.5);
 translate([length-width,0]) cylinder(d=hole_size, h=thickness*2, $fs=0.5);
 translate([(length-width)/2+18,0]) cylinder(d=hole_size, h=thickness, $fs=0.5);
 translate([(length-width)/2-18,0]) cylinder(d=hole_size, h=thickness, $fs=0.5);
}