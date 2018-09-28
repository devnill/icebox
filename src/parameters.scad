lid_inset_height=10;
wall_thickness=10;
inner_spacing=5;
base_thickness=5;//wall_thickness;
rows=3;
cols=4;
lid_depth=10;
pyramid_width=25.7; 
pyramid_height=43.3;
pyramid_edge_radius=1.5;
box_edge_radius=5;



//derived parameters: 

container_width = (wall_thickness*2) +
(cols * pyramid_width) +
((cols - 1) * inner_spacing);

container_solid_width = container_width -
(box_edge_radius*2);

container_depth = (wall_thickness*2) +
(rows * pyramid_width) +
((rows - 1) * inner_spacing);

container_solid_depth = container_depth -
(box_edge_radius*2);

container_height = pyramid_height + 
    base_thickness;

container_solid_height = container_height -
    (box_edge_radius*2);

lid_inset=wall_thickness/2;

