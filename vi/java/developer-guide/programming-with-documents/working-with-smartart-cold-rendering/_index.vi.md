---
title: Làm việc với `SmartArt Cold Rendering trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với SmartArt Cold Rendering
linktitle: Làm việc với SmartArt Cold Rendering
type: docs
description: "Aspose.Words cho Java thực hiện SmartArt Cold Rendering, có nghĩa là nó sắp xếp và hiển thị đồ họa SmartArt nếu hình vẽ SmartArt đã được xử lý trước bị thiếu hoặc sai."
weight: 330
url: /vi/java/working-with-smartart-cold-rendering/
---

Hình ảnh SmartArt được dùng để tạo ra một cách nhanh chóng và dễ dàng đại diện trực quan của thông tin. Bạn đơn giản chọn từ một số lượng lớn các bố cục phù hợp nhất với hoàn cảnh của bạn. Tính dễ dùng này làm cho đồ họa SmartArt rất phổ biến trong một số mục đích.

Microsoft Word tạo và lưu hình vẽ đã được tiền xử lý cùng với đối tượng `SmartArt`. Trong hầu hết các trường hợp, hình vẽ đã được xử lý trước sẽ hiển thị tốt bởi Aspose.Words và không cần hành động bổ sung. Tuy nhiên nếu tài liệu được lưu bằng các ứng dụng khác thì hình ảnh Smartart có thể bị thiếu hoặc không chính xác. Trong trường hợp này, đối tượng `SmartArt` nên được bố cục và hiển thị bằng cách sử dụng Aspose.Words. Chúng tôi gọi quá trình này là `SmartArt` Chuyển mã lạnh.

## Sử dụng Cold Rendering của SmartArt

Aspose.Words cho phép bạn sử dụng hình vẽ đã được lập trình trước hoặc thực hiện lập trình lạnh:

* Nếu có sẵn một bản vẽ đã được xử lý trước, Aspose.Words sử dụng nó để hiển thị đối tượng `SmartArt`.
* Nếu hình vẽ được tạo trước bị thiếu, Aspose.Words thực hiện xử lý lạnh để hiển thị đối tượng `SmartArt`.
"* Nếu có hình vẽ đã được xử lý trước nhưng không chính xác, cần phải thực hiện xử lý lạnh của SmartArt một cách rõ ràng bằng việc gọi phương thức [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing)."

Mã đoạn ví dụ cho thấy cách cập nhật vẽ cho tất cả các sơ đồ trong tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Hỗ trợ cho các bố cục tiêu chuẩn SmartArt

Hiện tại chỉ có một số lượng giới hạn các bố cục chuẩn Microsoft Word SmartArt được hỗ trợ. Ngoài ra một số bố cục này được hỗ trợ một phần có nghĩa là các nút và hình dạng quan trọng của sơ đồ được xử lý nhưng có thể có sự khác biệt giữa sơ đồ Microsoft Word và Aspose.Words bố cục.

Biểu mẫu dưới đây liệt kê các bố cục được hỗ trợ đầy đủ và một phần:

| Bố cục SmartArt Group | bố cục được hỗ trợ đầy đủ | Màn hình được hỗ trợ một phần |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Danh sách khối cơ bản</li><li>Hàng chữ lục giác thay đổi</li><li>Danh sách dấu đầu dòng dọc</li><li>Danh sách hộp dọc</li><li>Danh sách chiều rộng thay đổi</li><li>Danh sách dấu đầu dòng ngang</li><li>Grouped List</li><li>Danh sách khối dọc</li><li>Danh sách mũi tên dọc</li><li>Danh sách mũi tên dọc</li><li>Danh sách hình nón</li><li>Danh sách bảng</li><li>Danh sách kim tự tháp</li><li>Danh sách mục tiêu</li></ul> | <ul><li>Danh sách hàng</li> <li>Danh sách thanh dọc</li> <li>Danh sách dấu tab</li> <li>Danh sách chồng lên nhau</li> <li>Danh sách dấu ngoặc thẳng đứng</li> <li>Danh sách vòng tròn thẳng đứng</li></ul> |
| `Process` | <ul><li>Quy trình cơ bản</li><li>Quy trình nhấn mạnh</li><li>Quy trình khối liên tục</li><li>Quy trình mũi tên tăng dần</li><li>Quy trình văn bản hội tụ</li><li>Quy trình đường thời gian cơ bản</li><li>Quy trình cheveron cơ bản</li><li>Quy trình cheveron nhấn mạnh</li><li>Quy trình cheveron đóng</li><li>Quy trình danh sách cheveron</li><li>Quy trình thẳng đứng</li><li>Quy trình sắp xếp xen kẽ</li><li>Quy trình danh sách</li><li>Quy trình uốn cong cơ bản</li><li>Quy trình uốn cong lặp lại</li><li>Quy trình chi tiết</li><li>Mũi tên lên</li><li>Quy trình xuống</li><li>Quy trình uốn cong tròn</li></ul> | <ul><li>Quy trình bước lên</li><li>Quy trình bước xuống</li><li>Dòng thay đổi</li><li>Quy trình vòng tròn tăng dần</li><li>Quy trình bánh pie</li><li>Quy trình khối liên kết</li><li>mũi tên quy trình</li><li>Mũi tên thời gian nhấn mạnh hình tròn</li><li>Quy trình hình tròn</li><li>Quy trình bước phụ</li><li>Quy trình giai đoạn</li><li>Quy trình ngẫu nhiên đến kết quả</li><li>Quy trình mũi tên hình tròn</li></ul> |
| `Cycle` |–| <ul><li>Chu kỳ phân đoạn</li> <li>Chu kỳ lục giác</li></ul> |
| `Hierarchy` |–| <ul><li>Phân cấp bảng</li> <li>Kế hoạch Kiến trúc</li></ul> |
| `Relationship` | <ul><li>Đoàn kết</li><li>Thùng lọc</li><li>Lưỡi lê</li><li>Plus và Minus</li><li>Dây mũi tên</li><li>Mũi tên cân bằng</li><li>Mũi tên đối lập</li><li>Mục tiêu lồng nhau</li><li>Mục tiêu cơ bản</li><li>Pie cơ bản</li><li>Venn cơ bản</li><li>Venn chồng chéo</li><li>Dây nhẫn liên kết</li></ul> | <ul><li>Mối quan hệ tròn</li> <li>Ý tưởng đối lập</li> <li>Phương trình</li> <li>Phương trình thẳng đứng</li> <li>Venn tuyến tính</li></ul> |
| `Matrix` | <ul><li>Ma trận cơ bản</li><li>Ma trận tiêu đề</li><li>Ma trận lưới</li><li>Ma trận chu kỳ</li></ul> |–|
| `Pyramid` |–| <ul><li>Piramid phân đoạn</li></ul> |

## So sánh của SmartArt Rendering trong Aspose.Words và Microsoft

Bảng dưới đây cho thấy hình ảnh ví dụ của Aspose.Words Render lạnh của một số bố cục tiêu chuẩn so với Microsoft Word đầu ra:

|| **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="trapezoid-list-word.png" alt="trapezoid_list_word"/> |
