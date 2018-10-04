module pyramid(width, height, edge_radius){
    $fn=25;
    edge_width = width - (edge_radius*2); 
    edge_height = height - (edge_radius); 
    difference(){
        minkowski(){
            translate([edge_radius, edge_radius])sphere(edge_radius);
            pyramid_points=[ 
                [edge_width,edge_width,0],
                [edge_width,0,0],
                [0,0,0],
                [0,edge_width,0], // the four points at base
                [edge_width/2,edge_width/2,edge_height]
            ];
            pyramid_faces=[ 
                [0,1,4],
                [1,2,4],
                [2,3,4],
                [3,0,4],
                [1,0,3],
                [2,1,3] 
            ];
            polyhedron(pyramid_points, pyramid_faces);
        }
        translate([0,0,-edge_radius])cube([width, width, edge_radius]);
        
    }
    translate([(edge_width/2)+edge_radius,(edge_width/2)+edge_radius,0]){
        cylinder(r=edge_radius, height);
    }
}




