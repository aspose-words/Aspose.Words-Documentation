---
title: Thao Tác Và Thay Thế Phông Chữ TrueType trong C++
second_title: Aspose.Words cho C++
articleTitle: Thao Tác Và Thay Thế Phông Chữ TrueType
linktitle: Thao Tác Và Thay Thế Phông Chữ TrueType
description: "Aspose.Words cho C++ có thể nhúng phông chữ TrueType chính xác vào tài liệu kết quả để đảm bảo rằng nó hiển thị chính xác. Nếu một phông chữ hoặc một ký tự cụ thể không có sẵn, Aspose.Words tìm kiếm một sự thay thế phông chữ phù hợp hoặc sử dụng cơ chế dự phòng Phông chữ."
type: docs
weight: 10
url: /vi/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words yêu cầu phông chữ TrueType cho nhiều tác vụ khác nhau, bao gồm kết xuất tài liệu sang định dạng trang cố định, ví dụ: PDF hoặc XPS. Khi Aspose.Words kết xuất một tài liệu, nó cần thực hiện nhúng và nhúng tập hợp con các phông chữ TrueType vào tài liệu kết quả, đây là một thực tế bình thường trong quá trình tạo tài liệu, bao gồm các định dạng PDF hoặc XPS phổ biến. Điều này đảm bảo rằng tài liệu sẽ xuất hiện giống nhau cho bất kỳ người xem nào. Hơn nữa, đặc tả XPS yêu cầu phông chữ phải luôn được nhúng trong tài liệu.

Để đảm bảo Aspose.Words đo chính xác các ký tự và nhúng thành công các phông chữ có liên quan, các điều kiện sau phải được đáp ứng:

1. Aspose.Words sẽ có thể tìm và truy cập các tệp phông chữ TrueType trên hệ thống.
1. Phải có đủ phông chữ TrueType có sẵn cho Aspose.Words, tốt nhất là có cùng tên họ phông chữ với những phông chữ được sử dụng trong tài liệu.

Lưu ý rằng phông chữ trong tài liệu đại diện cho một thực thể, chẳng hạn như họ, kiểu, kích thước, màu sắc, khác với thực thể `TrueType` phông chữ (phông chữ vật lý). Aspose.Words phân giải phông chữ trong tài liệu thành phông chữ vật lý ở một số giai đoạn xử lý. Điều này cho phép một số tác vụ nhất định, phổ biến nhất là nhiệm vụ tính toán kích thước văn bản trong quá trình xây dựng bố cục và nhúng/đặt lại thành các định dạng trang cố định. Một số tác vụ khác ít phổ biến hơn, chẳng hạn như giải quyết phông chữ và thay thế trong khi tải HTML hoặc nhúng/đặt con vào một số định dạng luồng, cũng được bật.

## Trong đó Aspose.Words Tìm Kiếm Phông chữ

Aspose.Words cố gắng tự động tìm phông chữ TrueType trên hệ thống tệp. Thông thường, bạn có thể dựa vào hành vi mặc định của Aspose.Words để tìm phông chữ `TrueType`, nhưng đôi khi bạn cần chỉ định các thư mục của riêng mình có chứa phông chữ TrueType. Các [Chỉ Định Vị Trí Phông Chữ TrueType ](/words/cpp/specify-truetype-fonts-location/) chủ đề mô tả cách thức và vị trí Aspose.Words tìm kiếm phông chữ, cũng như cách chỉ định vị trí phông chữ của riêng bạn.

## Sự Khác biệt Trong Xử lý Các Định dạng Phông chữ trong Aspose.Words và Microsoft Word

Có một số khác biệt trong việc xử lý các định dạng phông chữ trong Aspose.Words và Microsoft Word như trong bảng dưới đây:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType phông chữ và OpenType phông chữ với TrueType phác thảo | Hỗ trợ. | Hỗ trợ. |
| OpenType phông chữ với PostScript phác thảo | Hỗ trợ cho hầu hết các kịch bản. Nhúng vào các định dạng trang cố định như PDF và XPS không được hỗ trợ. Văn bản được thay thế bằng hình ảnh bitmap. | Được hỗ trợ cho hầu hết các tình huống, bao gồm nhúng vào các định dạng trang cố định. |
| OpenType Các Biến Thể Phông Chữ | Chỉ các trường hợp được đặt tên được hỗ trợ. Biến thể liên tục không được hỗ trợ. | Được hỗ trợ cho phiên bản mặc định duy nhất. Các phiên bản được đặt tên và các biến thể liên tục không được hỗ trợ. |
| Type1 phông chữ | Được hỗ trợ trên các phiên bản Windows trước năm 2013 và trên Các phiên bản MacOS. Hỗ trợ được giảm trên các phiên bản Windows bắt đầu từ năm 2013. | Không được hỗ trợ. |


