width=30;
hole=6.4;
in_bevel=2;
out_bevel=4;

iw=width/2-hole/2;

rotate_extrude(convexity = 10, $fn=100)
translate([hole/2,0,0])
difference(){
  square ([iw,6],center = false);
  translate([in_bevel,0,0]) 
    square ([iw-in_bevel-out_bevel,1],center = false);
  translate([in_bevel,5,0]) 
   square ([iw-in_bevel-out_bevel,1],center = false);
  translate([iw-1.5,3]) circle(0.7, $fn=30);
  polygon(points=[[iw-1.7,3.66],[iw-1.7,2.31],[iw,1.5],[iw,4.5]]);
}
