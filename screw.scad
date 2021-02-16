use <threads-library-by-cuiso-v1.scad>


    union(){
        thread_for_screw(diameter=25, length=80); 
        cylinder(d=80, h=20, $fn=6);
    }