---
title: Làm việc với SmartArt Kết Xuất Lạnh trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với SmartArt Kết Xuất Lạnh
linktitle: Làm việc với SmartArt Kết Xuất Lạnh
type: docs
description: "Aspose.Words cho C++ thực hiện SmartArt Kết Xuất Lạnh, có nghĩa là nó nằm ngoài và kết xuất các đối tượng SmartArt nếu bản vẽ SmartArt được kết xuất trước bị thiếu hoặc không chính xác."
weight: 330
url: /vi/cpp/working-with-smartart-cold-rendering/
---

SmartArt đồ họa được sử dụng để nhanh chóng và dễ dàng tạo ra một đại diện trực quan của thông tin. Bạn chỉ cần chọn từ một số lượng lớn các bố cục phù hợp nhất với tình huống của bạn. Tính dễ sử dụng này làm cho đồ họa SmartArt khá phổ biến cho một số mục đích.

Microsoft Word tạo và lưu bản vẽ được kết xuất trước cùng với đối tượng `SmartArt`. Trong hầu hết các trường hợp, bản vẽ được hiển thị trước được hiển thị tốt bởi Aspose.Words và không cần thêm hành động nào. Tuy nhiên, nếu tài liệu được lưu bởi các ứng dụng khác, bản vẽ SmartArt được hiển thị trước có thể bị thiếu hoặc không chính xác. Trong trường hợp này, đối tượng `SmartArt` phải được đặt ra và hiển thị bằng Aspose.Words. Chúng tôi gọi quá trình này là `SmartArt` Kết Xuất Lạnh.

## Sử Dụng SmartArt Kết Xuất Lạnh

Aspose.Words cho phép bạn sử dụng bản vẽ được kết xuất trước hoặc thực hiện kết xuất lạnh:

* Nếu bản vẽ được hiển thị trước có sẵn, Aspose.Words sử dụng nó để hiển thị đối tượng `SmartArt`.
* Nếu bản vẽ được hiển thị trước bị thiếu, Aspose.Words ngầm thực hiện kết xuất lạnh để hiển thị đối tượng `SmartArt`.
* Nếu bản vẽ được hiển thị trước nhưng không chính xác, cần phải thực hiện SmartArt kết xuất lạnh một cách rõ ràng bằng cách gọi phương thức [UpdateSmartArtDrawing](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/updatesmartartdrawing/).

Ví dụ mã sau đây cho thấy cách cập nhật bản vẽ cho tất cả các sơ đồ trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cpp" >}}

## Hỗ Trợ Bố Cục SmartArt Tiêu Chuẩn

Hiện tại, chỉ có một số lượng giới hạn các bố cục Microsoft Word SmartArt tiêu chuẩn được hỗ trợ. Ngoài ra, một số bố cục này được hỗ trợ một phần, có nghĩa là các nút và hình dạng quan trọng của sơ đồ được hiển thị, nhưng có thể có sự khác biệt giữa bố cục sơ đồ Microsoft Word và Aspose.Words.

Bảng dưới đây liệt kê các bố cục được hỗ trợ đầy đủ và một phần:

| SmartArt Bố Cục Nhóm | Bố cục được hỗ trợ đầy đủ | Bố cục được hỗ trợ một phần |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Danh Sách Khối Cơ Bản</li><li>Hình Lục Giác Xen Kẽ</li><li>Danh Sách Đạn Dọc</li><li>Danh Sách Hộp Dọc</li><li>Danh Sách Chiều Rộng Khác Nhau</li><li>Danh Sách Đạn Ngang</li><li>Danh Sách Nhóm</li><li>Danh Sách Khối Dọc</li><li>Danh Sách Chevron Dọc</li><li>Danh Sách Mũi Tên Dọc</li><li>Danh Sách Hình Thang</li><li>Danh Sách Bảng</li><li>Danh Sách Kim Tự Tháp</li><li>Danh Sách Mục Tiêu</li></ul> | <ul><li>Danh Sách Xếp Hàng</li><li>Danh Sách Khung Dọc</li><li>Danh Sách Tab</li><li>Danh Sách Xếp Chồng Lên Nhau</li><li>Danh Sách Giọng Dọc</li><li>Danh Sách Vòng Tròn Dọc</li></ul> |
| `Process` | <ul><li>Quy Trình Cơ Bản</li><li>Quá Trình Nhấn</li><li>Quá Trình Khối Liên Tục</li><li>Tăng Quá Trình Mũi Tên</li><li>Hội Tụ Văn Bản</li><li>Dòng Thời Gian Cơ Bản</li><li>Quy Trình Chevron Cơ Bản</li><li>Quá Trình Giọng Chevron</li><li>Quy Trình Chevron Kín</li><li>Danh Sách Chevron</li><li>Quy Trình Dọc</li><li>Quá Trình So Le</li><li>Danh Sách Quy Trình</li><li>Quy Trình Uốn Cơ Bản</li><li>Lặp Lại Quá Trình Uốn</li><li>Quy Trình Chi Tiết</li><li>Mũi Tên Hướng Lên</li><li>Quá Trình Giảm Dần</li><li>Quy Trình Uốn Tròn</li></ul> | <ul><li>Bước Lên Quá Trình</li><li>Bước Xuống Quá Trình</li><li>Dòng Chảy Xen Kẽ</li><li>Tăng Quy Trình Vòng Tròn</li><li>Pie Quy trình</li><li>Quy Trình Khối Được Kết Nối Với Nhau</li><li>Quá Trình Mũi Tên</li><li>Dòng Thời Gian Nhấn Vòng Tròn</li><li>Quy Trình Vòng Tròn</li><li>Quy Trình Bước Phụ</li><li>Quy Trình Theo Giai Đoạn</li><li>Ngẫu nhiên Để Kết Quả Quá Trình</li><li>Quá Trình Mũi Tên Vòng Tròn</li></ul> |
| `Cycle` |  | <ul><li>Chu Kỳ Phân Đoạn</li><li>Hình Lục Giác Xuyên Tâm</li></ul> |
| `Hierarchy` |  | <ul><li>Bảng Phân Cấp</li><li>Bố Cục Kiến Trúc</li></ul> |
| `Relationship` | <ul><li>Cân bằng</li><li>Kênh</li><li>Bánh răng</li><li>Cộng Và Trừ</li><li>Mũi Tên Ribbon</li><li>Mũi Tên Đối Trọng</li><li>Mũi Tên Đối Lập</li><li>Mục Tiêu Lồng Nhau</li><li>Mục Tiêu Cơ Bản</li><li>Cơ bản Pie</li><li>Venn Cơ Bản</li><li>Venn Xếp Chồng Lên Nhau</li><li>Vòng Kết Nối</li></ul> | <ul><li>Mối Quan Hệ Vòng Tròn</li><li>Ý Tưởng Đối Lập</li><li>Phương trình</li><li>Phương Trình Dọc</li><li>Venn Tuyến Tính</li></ul> |
| `Matrix` | <ul><li>Ma Trận Cơ Bản</li><li>Có Tiêu Đề Ma Trận</li><li>Ma Trận Lưới</li><li>Ma Trận Chu Kỳ</li></ul> |  |
| `Pyramid` |  | <ul><li>Kim Tự Tháp Phân Đoạn</li></ul> |

## So sánh SmartArt Kết xuất trong Aspose.Words và Microsoft

Bảng dưới đây hiển thị hình ảnh ví dụ về Aspose.Words Kết Xuất Lạnh của một số bố cục tiêu chuẩn so với đầu ra Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
