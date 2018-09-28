include <parameters.scad>;
$fn=25;

        
difference(){union(){
    
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
                    translate([lid_inset,lid_inset])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset,lid_inset])circle(box_edge_radius);
                    translate([lid_inset,container_solid_depth-lid_inset])circle(box_edge_radius);
                    translate([container_solid_width-lid_inset,container_solid_depth-lid_inset])circle(box_edge_radius);
                }
            }
        }
}


