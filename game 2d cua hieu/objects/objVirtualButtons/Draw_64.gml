 // Vẽ hình ảnh minh họa cho các nút
draw_set_alpha(0.3); // Làm mờ nút
draw_set_color(c_white);

// Vẽ nút Trái, Phải, Nhảy
draw_rectangle(10, 120, 60, 170, false); // Nút Trái
draw_rectangle(70, 120, 120, 170, false); // Nút Phải
draw_rectangle(260, 120, 310, 170, false); // Nút Nhảy

draw_set_alpha(1); // Trả lại độ trong suốt bình thường