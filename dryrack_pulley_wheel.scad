

rotate_extrude(convexity = 10, $fn=100)
translate([3,0,0])
difference(){
  square ([12,6],center = false);
  translate([2,0,0]) 
    square ([6,1],center = false);
  translate([2,5,0]) 
   square ([6,1],center = false);
  translate([9.5,3,0]) circle(0.5, $fn=30);
  polygon(points=[[9.3,3.46],[9.3,2.54],[12,1.5],[12,4.5]]);
}
