

rotate_extrude(convexity = 10, $fn=100)
translate([3,0,0])
difference(){
square ([12,7],center = false);
translate([2,0,0]) 
  square ([6,1],center = false);
translate([2,6,0]) 
  square ([6,1],center = false);
translate([12,3.5,0]) circle(1.5, $fn=30);
}
