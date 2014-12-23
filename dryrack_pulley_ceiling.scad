

width=20;
gap=26;
rope_hole=3;
mount_hole=4;
wheel_spacing=9;


r= mount_hole/2+3;
module top_bracket_side() {
 linear_extrude(height=3){
  difference(){
    union(){
      circle(r);
      translate([0,-r]) square(r*2);
    }
    circle(mount_hole/2);
  }
 }
}

top_bracket_side();
translate([0,0,width+3]) top_bracket_side();
l=gap+6;
translate([2*r,-r,-(gap-width)/2])
 cube([3,r*2,gap+6]);