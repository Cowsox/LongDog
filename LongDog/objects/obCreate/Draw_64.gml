draw_healthbar_ext(10, 10, 200, 50, hp, true, false, c_blue)

if (hp <= 0) {
	dir = "up"
}
if (hp >= 1) {
	dir = "down"
}
switch dir {
	case "up": hp += 0.01; break;
	case "down": hp -= 0.01; break;
}

draw_text(15,15,hp);