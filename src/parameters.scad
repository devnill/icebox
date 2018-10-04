$fn=25;
wall_thickness=10;
inner_spacing=2.5;
base_thickness=5;//wall_thickness;
rows=3;
cols=4;
lid_inset_width=wall_thickness/2;
lid_inset_tolerance=0.15;

lid_inset_adjusted = lid_inset_width- lid_inset_tolerance;
pyramid_width=25.7; 
pyramid_height=43.3;
pyramid_edge_radius=1.5;
box_edge_radius=5;

//actual denotes measured amounts; this to to gauge tolerances.
pyramid_width_actual = 25.5;//25.2
pyramid_tolerance = pyramid_width /pyramid_width_actual;
//pyramid_height_diff=1.3;
//pyramid_height_diff+pyramid_height;

//pyramid_tolerance=(pyramid_height_actual)/pyramid_height;
pyramid_width_adjusted = (pyramid_width * pyramid_tolerance);
pyramid_height_adjusted = (pyramid_height * pyramid_tolerance);


echo(pyramid_tolerance);
//derived parameters: 

container_width = (wall_thickness*2) +
(cols * pyramid_width * pyramid_tolerance) +
((cols - 1) * inner_spacing);

container_solid_width = container_width -
(box_edge_radius*2);

container_depth = (wall_thickness*2) +
(rows * pyramid_width * pyramid_tolerance) +
((rows - 1) * inner_spacing);

container_solid_depth = container_depth -
(box_edge_radius*2);

container_height = (pyramid_height * pyramid_tolerance) + 
    base_thickness;

container_solid_height = container_height -
    (box_edge_radius*2);

container_height_total=container_height+base_thickness;

lid_inset_height=container_height;
