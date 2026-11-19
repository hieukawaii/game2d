// Định nghĩa vùng chạm và phím tương ứng
// virtual_key_add(x, y, width, height, keycode)

// Giả sử màn hình của bạn là 320x180 (theo thông số trong ảnh bạn gửi)
// Tạo nút Sang Trái
btn_left = virtual_key_add(10, 120, 50, 50, vk_left);

// Tạo nút Sang Phải
btn_right = virtual_key_add(70, 120, 50, 50, vk_right);

// Tạo nút Nhảy
btn_up = virtual_key_add(260, 120, 50, 50, vk_up);