include <parameters.scad>;
include <pyramid.scad>;
include <box.scad>;

//echo(lid_inset_width);
module lid_inset(){
    // lid inset cutout
    translate([0,0,container_height-lid_inset_height]){
        linear_extrude(lid_inset_height){
            difference(){
                square([container_width+.001,container_depth]);
                lid_cutout();
            }
        }
    }
    module lid_cutout(){
        translate([box_edge_radius,box_edge_radius]){hull(){
                translate([lid_inset_width,lid_inset_width])circle(box_edge_radius);
                translate([container_solid_width-lid_inset_width,lid_inset_width])circle(box_edge_radius);
                translate([lid_inset_width,container_solid_depth-lid_inset_width])circle(box_edge_radius);
                translate([container_solid_width-lid_inset_width,container_solid_depth-lid_inset_width])circle(box_edge_radius);
            }}
    }
        
}

module interior(){
    //pyramids
    translate([wall_thickness, wall_thickness, pyramid_height_adjusted + base_thickness])scale([1,1,-1])
for (row=[0:rows-1]){
        for (col=[0:cols-1]){
            translate([col*(pyramid_width_adjusted+inner_spacing), row*(pyramid_width_adjusted+inner_spacing)]){
                pyramid(pyramid_width_adjusted, pyramid_height_adjusted, pyramid_edge_radius);
            }
        }
    }
}

difference(){
box(container_width, container_depth, container_height, box_edge_radius);
lid_inset();
interior();
    
}
    
