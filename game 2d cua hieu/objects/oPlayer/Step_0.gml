   // 1. Trọng lực (Nhẹ nhàng hơn để rơi tự nhiên)
ysp += 0.25; 

// 2. Tốc độ di chuyển ngang (Giảm xuống 2 để dễ né gai hơn)
xsp = 0; 
if (keyboard_check(vk_left))  { xsp = -2; } 
if (keyboard_check(vk_right)) { xsp = 2; } 

// 3. Xử lý nhảy (Điều chỉnh độ cao vừa phải)
if (place_meeting(x, y + 1, oSolid)) {
    ysp = 0; 
    // Chỉ nhảy khi bấm phím lên
    if (keyboard_check_pressed(vk_up)) {
        ysp = -4.5; // Lực nhảy vừa đủ để vượt khối gạch
        audio_play_sound(snd_jump, 1, false);
    }
}

// 4. Di chuyển và xử lý va chạm (Giữ nguyên)
move_and_collide(xsp, ysp, oSolid);

// 5. Logic thắng/thua
if (place_meeting(x, y, oSpike)) {
    room_restart();
}
if (place_meeting(x, y, oFlags)) {
    room_goto_next();
}