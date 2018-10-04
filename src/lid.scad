include <parameters.scad>;
include <box.scad>;
$fn=25;

difference(){
box(container_width, container_depth, container_height_total, box_edge_radius);

linear_extrude(container_height){      
translate([box_edge_radius, box_edge_radius, 0]){
hull(){
        translate([lid_inset_adjusted, lid_inset_adjusted])circle(box_edge_radius);
        translate([container_solid_width-lid_inset_adjusted,lid_inset_adjusted])circle(box_edge_radius);
        translate([lid_inset_adjusted,container_solid_depth-lid_inset_adjusted])circle(box_edge_radius);
        translate([container_solid_width-lid_inset_adjusted,container_solid_depth-lid_inset_adjusted])circle(box_edge_radius);
    }

}
}
             }  
        /*
difference(){
    
    union(){
    
    linear_extrude(lid_inset_height){
    hull(){translate([lid_inset, lid_inset]){
                    circle(box_edge_radius);
                    translate([container_solid_width,0])circle(box_edge_radius);
                    translate([0,container_solid_depth])circle(box_edge_radius);
                    translate([container_solid_width,container_solid_depth])circle(box_edge_radius);
                }
            }
        }
        
//rounded top part
translate([0,0,base_thickness-box_edge_radius]){
hull(){
    translate([lid_inset, lid_inset]){
    
        sphere(box_edge_radius);
                    translate([container_solid_width,0])sphere(box_edge_radius);
                    translate([0,container_solid_depth])sphere(box_edge_radius);
                    translate([container_solid_width,container_solid_depth])sphere(box_edge_radius);
                }
            }
        }
    
        
    }
    
    
    linear_extrude(lid_inset_height){
    hull(){
                translate([box_edge_radius,box_edge_radius]){
                    translate([lid_inset-lid_tolerance,lid_inset-lid_tolerance])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset+lid_tolerance,lid_inset-lid_tolerance])circle(box_edge_radius);
                    translate([lid_inset-lid_tolerance,container_solid_depth-lid_inset+lid_tolerance])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset+lid_tolerance,container_solid_depth-lid_inset+lid_tolerance])circle(box_edge_radius);
                }
            }
        }
}
*/


