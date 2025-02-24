use <MCAD/regular_shapes.scad>
$fs = 0.01;

module penholder(height=45) {
  difference() {
    difference() {
      union() {
        cylinder(h=height, r=12/2); // lange omtrek
        translate([0,0,12+7]) {
          cylinder(h=1.8, r=16.5/2); //bredere stuk
        }
      }
      cylinder(h=height - 2, r=10/2 - 0.1);
    }
    cylinder(h=height, r=3/2); // ronde, kleine uitsnede
  }
}
penholder();
