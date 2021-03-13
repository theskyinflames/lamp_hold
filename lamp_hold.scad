use <screw/threads-library-by-cuiso-v1.scad>
use <text/Write.scad>


$fn=50;

minkowski() // Upper base
{
   cube([150,50,20]);
   cylinder(r=2,h=1);
}

translate([0,0,-40]) // lamp hold
    difference()
    {
        color("blue")
        minkowski()
        {
            cube([35,50,40]);
            cylinder(r=2,h=1);
        }
        translate([17,25,-50])
            cylinder(r=7,h=200);
    }

translate([60,0,20]) // Column
    minkowski()
    {
        cube([20,50,30]);
        cylinder(r=2,h=1);
    }
               
translate([0,0,50]) // Srew hold
    difference()
    {
        minkowski()
        {
            cube([80,50,30]);
            cylinder(r=2,h=1);
        }
        translate([20,26,-10])
            thread_for_screw(diameter=25, length=70);
    }
 


b = 40;
h = 60;
w = 23;

translate([82,23,20]) // Column reinforcement
    rotate(a=[90,-90,180])
        minkowski()
        {
            linear_extrude(height = w, center = true, convexity = 10, twist = 0)
                polygon(points=[[0,0],[h,0],[0,b]], paths=[[0,1,2]]);
            cylinder(r=2,h=1);
        }
        
translate([144,20,3]) // trade
    rotate([180,0,180])
        color("red")
        write("@theskyinflames",h=8,t=5,font="knewave.dxf",space=0.8);

        
