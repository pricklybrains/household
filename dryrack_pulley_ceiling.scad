

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

//top_bracket_side();
//translate([0,0,width+3]) top_bracket_side();
translate([2*r,-r])
 cube([3,r*2,width+6]);

module pulley_wheel_side() {
  //cube([
}

pulley_wheel_side();