---
title: Làm việc với SmartArt Cold Rendering
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với SmartArt Cold Rendering
linktitle: Làm việc với SmartArt Cold Rendering
type: docs
description: "Aspose.Words dành cho Python via .NET thực hiện Kết xuất nguội SmartArt, nghĩa là nó sắp xếp và hiển thị các đối tượng SmartArt nếu bản vẽ SmartArt được kết xuất trước bị thiếu hoặc không chính xác."
weight: 330
url: /vi/python-net/working-with-smartart-cold-rendering/
---

Đồ họa SmartArt được sử dụng để tạo ra sự trình bày thông tin trực quan một cách nhanh chóng và dễ dàng. Bạn chỉ cần chọn từ một số lượng lớn các bố cục phù hợp nhất với tình huống của bạn. Tính dễ sử dụng này khiến đồ họa SmartArt khá phổ biến cho một số mục đích.

Microsoft Word tạo và lưu bản vẽ được kết xuất trước cùng với đối tượng `SmartArt`. Trong hầu hết các trường hợp, bản vẽ được kết xuất trước được hiển thị tốt bằng Aspose.Words và không cần thực hiện thêm hành động nào. Tuy nhiên, nếu tài liệu được lưu bởi các ứng dụng khác, bản vẽ SmartArt được kết xuất trước có thể bị thiếu hoặc không chính xác. Trong trường hợp này, đối tượng `SmartArt` phải được trình bày và hiển thị bằng Aspose.Words. Chúng tôi gọi quá trình này là Kết xuất nguội `SmartArt`.

## Sử dụng kết xuất lạnh SmartArt

Aspose.Words cho phép bạn sử dụng bản vẽ được kết xuất sẵn hoặc thực hiện kết xuất lạnh:

* Nếu có bản vẽ được kết xuất trước, Aspose.Words sẽ sử dụng bản vẽ đó để hiển thị đối tượng `SmartArt`.
* Nếu bản vẽ được kết xuất trước bị thiếu, Aspose.Words sẽ ngầm thực hiện kết xuất lạnh để hiển thị đối tượng `SmartArt`.
* Nếu có bản vẽ được kết xuất trước nhưng không chính xác, thì cần phải thực hiện kết xuất nguội SmartArt một cách rõ ràng bằng cách gọi phương thức [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

Ví dụ mã sau đây cho thấy cách cập nhật bản vẽ cho tất cả các sơ đồ trong tài liệu:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Hỗ trợ bố cục SmartArt tiêu chuẩn

Hiện tại, chỉ hỗ trợ một số bố cục Microsoft Word SmartArt tiêu chuẩn có giới hạn. Ngoài ra, một số bố cục này được hỗ trợ một phần, nghĩa là các nút và hình dạng quan trọng của sơ đồ được hiển thị, nhưng có thể có sự khác biệt giữa bố cục sơ đồ Microsoft Word và Aspose.Words.

Bảng bên dưới liệt kê các bố cục được hỗ trợ đầy đủ và một phần:

|  Bố cục SmartArt Group |  Bố cục được hỗ trợ đầy đủ |  Bố cục được hỗ trợ một phần |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Danh sách khối cơ bản</li><li>Lục giác xen kẽ</li><li>Danh sách dấu đầu dòng dọc</li><li>Danh sách hộp dọc</li><li>Danh sách chiều rộng thay đổi</li><li>Danh sách dấu đầu dòng ngang</li><li>Danh sách Group</li><li>Danh sách khối dọc</li><li>Danh sách Chevron dọc</li><li>Danh sách mũi tên dọc</li><li>Danh sách hình thang</li><li>Danh sách bảng</li><li>Danh sách kim tự tháp</li><li>Danh sách mục tiêu</li></ul> |  <ul><li>Danh sách xếp hàng</li><li>Danh sách khung dọc</li><li>Danh sách tab</li><li>Danh sách xếp chồng</li><li>Danh sách dấu dọc</li><li>Danh sách vòng tròn dọc</li></ul> |
|  `Process`  |  <ul><li>Quy trình cơ bản</li><li>Quá trình nhấn giọng</li><li>Quá trình chặn liên tục</li><li>Tăng quá trình mũi tên</li><li>hội tụ văn bản</li><li>Dòng thời gian cơ bản</li><li>Quy trình cơ bản của Chevron</li><li>Quy trình giọng Chevron</li><li>Quy trình Chevron đã đóng</li><li>Danh sách Chevron</li><li>Quy trình dọc</li><li>Quá trình so le</li><li>Danh sách quy trình</li><li>Quy trình uốn cơ bản</li><li>Quá trình uốn lặp đi lặp lại</li><li>Quy trình chi tiết</li><li>Mũi tên hướng lên</li><li>Quá trình giảm dần</li><li>Quá trình uốn tròn</li></ul> |  <ul><li>Tăng cường quá trình</li><li>Quá trình bước xuống</li><li>Dòng chảy luân phiên</li><li>Quá trình tăng vòng tròn</li><li>Quy trình làm bánh</li><li>Quá trình khối kết nối với nhau</li><li>Mũi tên quy trình</li><li>Dòng thời gian có dấu tròn</li><li>Quy trình vòng tròn</li><li>Quy trình bước phụ</li><li>Quá trình theo giai đoạn</li><li>Quá trình ngẫu nhiên đến kết quả</li><li>Quy trình mũi tên vòng tròn</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Chu kỳ phân đoạn</li><li>Hình lục giác xuyên tâm</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Phân cấp bảng</li><li>Bố cục kiến trúc</li></ul> |
|  `Relationship`  |  <ul><li>Sự cân bằng</li><li>Ống khói</li><li>Bánh răng</li><li>Cộng và Trư</li><li>Ruy băng mũi tên</li><li>Mũi tên đối trọng</li><li>Mũi tên đối lập</li><li>Mục tiêu lồng nhau</li><li>Mục tiêu cơ bản</li><li>Bánh cơ bản</li><li>Ven cơ bản</li><li>Venn xếp chồng lên nhau</li><li>Vòng kết nối</li></ul> |  <ul><li>Mối quan hệ vòng tròn</li><li>Ý tưởng đối lập</li><li>phương trình</li><li>Phương trình dọc</li><li>Tuyến tính Venn</li></ul> |
|  `Matrix`  |  <ul><li>Ma trận cơ bản</li><li>Ma trận có tiêu đề</li><li>Ma trận lưới</li><li>Ma trận chu kỳ</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Kim tự tháp phân đoạn</li></ul> |

## So sánh kết xuất SmartArt trong Aspose.Words và Microsoft

Bảng bên dưới hiển thị hình ảnh ví dụ về Kết xuất lạnh Aspose.Words của một số bố cục tiêu chuẩn so với đầu ra Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="vòng_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="vòng_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="lặp lại_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="lặp lại_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="hình thang_list_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="hình thang_list_word"/> |
