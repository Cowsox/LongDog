// Temp fixture
var mainFix, o_id;
mainFix = physics_fixture_create();
// Set fixture properties
physics_fixture_set_box_shape(mainFix, sprite_get_width(sprite_index) / 2, sprite_get_height(sprite_index) / 2);

physics_fixture_set_density(mainFix, 1);
physics_fixture_set_restitution(mainFix, 0);
physics_fixture_set_collision_group(mainFix, 1);
physics_fixture_set_linear_damping(mainFix, 1);
physics_fixture_set_angular_damping(mainFix, 0.1);
physics_fixture_set_friction(mainFix, 0.2);

frontFix = physics_fixture_bind(mainFix, id);
// Create Butt
o_id = instance_create_layer(x + 300, y, "Instances", obPlayer_1);
with(o_id) {
	physics_fixture_set_box_shape(mainFix, sprite_get_width(sprite_index) / 2, sprite_get_height(sprite_index) / 2);
}
physics_fixture_bind(mainFix, o_id);

// Create rope joint
physics_joint_rope_create(id, o_id, x, y, o_id.x, o_id.y, 300, 0);
physics_fixture_delete(mainFix);

x_force = 50000;
y_force = 30000;
max_x_speed = 10;

jump_buffer = 10;
jump_buffer_count = 0;

phy_fixed_rotation = true;

