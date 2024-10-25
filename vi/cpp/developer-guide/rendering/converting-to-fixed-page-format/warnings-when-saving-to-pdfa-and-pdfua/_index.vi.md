---
title: Cảnh Báo Khi Lưu vào PDF/A và PDF/UA
second_title: Aspose.Words cho C++
articleTitle: Cảnh Báo Vấn đề về khả Năng Truy Cập Khi Lưu vào PDF/A và PDF/UA
linktitle: Cảnh Báo Vấn đề về khả Năng Truy Cập Khi Lưu vào PDF/A và PDF/UA
description: "PDF/A và PDF/UA áp đặt các yêu cầu về khả năng truy cập liên quan đến nội dung tài liệu. Khi lưu vào PDF/A hoặc PDF/UA trong C++ và vấn đề vi phạm tuân thủ, một cảnh báo được đưa ra."
type: docs
weight: 39
url: /vi/cpp/warnings-when-saving-to-pdfa-and-pdfua/
---

Các định dạng PDF/A và PDF/UA áp đặt một số yêu cầu về khả năng truy cập liên quan đến nội dung tài liệu không thể hoàn thành trong quá trình chuyển đổi tự động từ Word sang PDF. Những yêu cầu này được mô tả trong bài viết trước *"Working with PDF/A or PDF/UA"*. Bây giờ cảnh báo được ban hành cho một số vấn đề này.

Cảnh báo được đưa ra khi lưu vào một trong các định dạng PDF/A hoặc PDF/UA và vấn đề vi phạm tuân thủ. Ví dụ: cảnh báo về tiêu đề tài liệu bị thiếu sẽ được ban hành khi lưu vào PDF/UA và sẽ không được ban hành khi lưu vào PDF/A.

Tất cả các cảnh báo là **WarningType.MinorFormattingLoss** và **WarningSource.Pdf**. Dưới đây là danh sách Các Giá trị Cảnh Báo Mô tả Mới:

| Mô tả giá trị cảnh báo | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Tiêu đề tài liệu bị thiếu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." |  | {{< emoticons/tick >}} |
| "Tài liệu chứa các tiêu đề mà các cấp độ không liên tiếp. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." |  | {{< emoticons/tick >}} |
| "Có những hình dạng không có văn bản thay thế trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Có các bảng không có văn bản thay thế trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Có các siêu liên kết không có văn bản thay thế trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." |  | {{< emoticons/tick >}} |
| "Có các bảng không có hàng/cột tiêu đề trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." |  | {{< emoticons/tick >}} |
| "Tài liệu chứa Các Ký tự Unicode PUA. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." | {{< emoticons/tick >}} |  |
| "Tài liệu chứa .notdef glyphs. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không hoàn toàn tuân thủ." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |