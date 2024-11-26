---
title: Cảnh báo khi lưu thành PDF/A và PDF/UA
second_title: Aspose.Words cho Python
articleTitle: Cảnh báo vấn đề về khả năng truy cập khi lưu vào PDF/A và PDF/UA
linktitle: Cảnh báo vấn đề về khả năng truy cập khi lưu vào PDF/A và PDF/UA
description: "PDF/A và PDF/UA áp đặt các yêu cầu về khả năng truy cập liên quan đến nội dung tài liệu. Khi lưu vào PDF/A hoặc PDF/UA trong Python và sự cố vi phạm tuân thủ, cảnh báo sẽ được đưa ra."
type: docs
weight: 29
url: /vi/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Các định dạng PDF/A và PDF/UA áp đặt một số yêu cầu về khả năng truy cập liên quan đến nội dung tài liệu mà không thể đáp ứng được trong quá trình chuyển đổi tự động từ Word sang PDF. Những yêu cầu này được mô tả trong bài viết trước *"Làm việc với PDF/A hoặc PDF/UA"*. Bây giờ cảnh báo được đưa ra cho một số vấn đề này.

Cảnh báo được đưa ra khi lưu vào một trong các định dạng PDF/A hoặc PDF/UA và sự cố này vi phạm tuân thủ. Ví dụ: cảnh báo về tiêu đề tài liệu bị thiếu sẽ được đưa ra khi lưu vào PDF/UA và sẽ không được đưa ra khi lưu vào PDF/A.

Tất cả các cảnh báo đều thuộc về [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** và [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.pdf**. Dưới đây là danh sách các giá trị cảnh báo Mô tả mới:

|  Giá trị cảnh báo mô tả |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Tài liệu chứa các tiêu đề có cấp độ không liên tiếp. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không tuân thủ đầy đủ." |                          |   {{< emoticons/tick >}}  |
|  "Có những hình dạng không có văn bản thay thế trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không tuân thủ đầy đủ." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Có những bảng không có văn bản thay thế trong tài liệu. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không tuân thủ đầy đủ." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Tài liệu chứa các ký tự Unicode PUA. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không tuân thủ đầy đủ." |   {{< emoticons/tick >}}  |                          |
|  "Tài liệu chứa .notdef glyph. Điều này vi phạm các yêu cầu tuân thủ. Tài liệu đầu ra sẽ không tuân thủ đầy đủ." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
