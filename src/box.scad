include <parameters.scad>;
include <pyramid.scad>;



difference(){
//box
    translate([box_edge_radius,box_edge_radius,box_edge_radius])minkowski(){
        sphere(box_edge_radius, $fn=25);
        cube([container_solid_width, container_solid_depth, container_solid_height]);
    }

    // lid inset cutout
    translate([0,0,pyramid_height-base_thickness])linear_extrude(lid_inset_height){
        difference(){
            square([container_width,container_depth]);
            hull(){
                translate([box_edge_radius,box_edge_radius]){
                    translate([lid_inset,lid_inset])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset,lid_inset])circle(box_edge_radius);
                    translate([lid_inset,container_solid_depth-lid_inset])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset,container_solid_depth-lid_inset])circle(box_edge_radius);
                }
            }
        }
    }

//pyramids
    translate([wall_thickness,wall_thickness,pyramid_height+base_thickness])scale([1,1,-1])
for (row=[0:rows-1]){
    for (col=[0:cols-1]){
    translate([col*(pyramid_width+inner_spacing),row*(pyramid_width+inner_spacing)])pyramid(pyramid_width, pyramid_height, pyramid_edge_radius);
    }
}
}
    
