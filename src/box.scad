module box(w,d,h,r){
    $fn=25;
    translate([r,r,r]){
        minkowski(){
            sphere(r);
            cube([w-(2*r),d-(2*r),h-(2*r)]);
        }
    }
}

//box(container_solid_width, container_solid_depth, container_solid_height, box_edge_radius);