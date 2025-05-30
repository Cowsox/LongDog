// Set up system variables
system = new VISystem(0.01, .1);

// Create Players
var head = instance_create_layer(x + 100, y, "Instances", obHead);
var butt = instance_create_layer(x, y, "Instances", obButt);

// Create Rope
var rope = new VIRopeColored(0,0, 10, 15, $000000, 30, 1, -1);
system.AddObject(rope);

var first = rope.GetPointByKeyword(VI_POINT_INDEX.FIRST);
var last = rope.GetPointByKeyword(VI_POINT_INDEX.LAST);

//// Create Colliders
//var coll_1 = new VIColliderBox(0,0, sprite_get_width(spBlock)/10, sprite_get_height(spBlock)/10);
//system.AddObject(coll_1);
//var coll_2 = new VIColliderBox(0,0, sprite_get_width(spBlock)/10, sprite_get_height(spBlock)/10);
//system.AddObject(coll_2);

// Connect Rope to Players
var chead = new VIConnector(0,0);
chead.SetParent(VI_PC_TYPE.INSTANCE,head);
chead.AddChild(VI_PC_TYPE.POINT, first, false);
system.AddObject(chead);
var cbutt = new VIConnector(0,0);
cbutt.SetParent(VI_PC_TYPE.INSTANCE,butt);
cbutt.AddChild(VI_PC_TYPE.POINT, last, false);
system.AddObject(cbutt);

//// Connect Colliders to Players
//var collhead = new VIConnector(0,0);
//collhead.SetParent(VI_PC_TYPE.INSTANCE,head);
//collhead.AddChild(VI_PC_TYPE.COLLIDER, coll_1, false);
//system.AddObject(collhead);
//var collbutt = new VIConnector(0,0);
//collbutt.SetParent(VI_PC_TYPE.INSTANCE,butt);
//collbutt.AddChild(VI_PC_TYPE.COLLIDER, coll_2, false);
//system.AddObject(collbutt);


// Create boxes
var box1 = new VIBoxTextured(100, 1000, sprite_get_width(spBlock)/10, sprite_get_height(spBlock)/10, spBlock, 1);
system.AddObject(box1);
var collider = new VIColliderBox(100,1500, sprite_get_width(spBlock)/10, sprite_get_height(spBlock)/10);
system.AddObject(collider);

// Room Bounds
var roomBounds = new VIColliderBox(0, 0, room_width, room_height-100);
roomBounds.SetVisible(true);
roomBounds.SetInverted(true);
system.AddObject(roomBounds);


first.position.current.x = head.x;
first.position.current.y = head.y;
first.mass = 0;
last.position.current.x = butt.x;
last.position.current.y = butt.y;
last.mass = 0;
