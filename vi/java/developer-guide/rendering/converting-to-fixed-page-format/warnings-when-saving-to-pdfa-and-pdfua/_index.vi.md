---
title: Cảnh báo Khi Lưu vào PDF/A và PDF/UA
second_title: Aspose.Words cho Java
articleTitle: Cảnh báo về vấn đề khả năng tiếp cận khi lưu vào PDF/A và PDF/UA
linktitle: Cảnh báo về vấn đề khả năng tiếp cận khi lưu vào PDF/A và PDF/UA
description: "PDF/A và PDF/UA đặt ra các yêu cầu về khả năng tiếp cận liên quan đến nội dung tài liệu. Khi lưu sang PDF/A hoặc PDF/UA trong Java và vấn đề vi phạm quy định, một cảnh báo được đưa ra."
type: docs
weight: 29
url: /vi/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Các định dạng PDF/A và PDF/UA quy định một số yêu cầu về khả năng tiếp cận liên quan đến nội dung tài liệu không thể thực hiện trong quá trình chuyển đổi tự động từ Word sang PDF. Những yêu cầu này được mô tả trong bài viết trước đây "*Làm việc với PDF/A hay PDF/UA"*. Bây giờ cảnh báo đã được đưa ra cho một số vấn đề này.

Cảnh báo được đưa ra khi lưu vào một trong các định dạng PDF/A hoặc PDF/UA và vấn đề vi phạm tuân thủ. Ví dụ, cảnh báo về thiếu tiêu đề tài liệu sẽ được đưa ra khi lưu sang PDF/UA và không được đưa ra khi lưu sang PDF/A.

Tất cả các cảnh báo là của [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.Lỗi định dạng nhỏ** và [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.pdf**. Đây là danh sách các giá trị cảnh báo mô tả mới:

| Mô tả giá trị cảnh báo | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| Tiêu đề tài liệu bị thiếu". Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không tuân thủ đầy đủ." |  | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không tuân thủ hoàn toàn." |  | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ.  | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không tuân thủ hoàn toàn." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không tuân thủ hoàn toàn." |  | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không hoàn toàn tuân thủ." |  | {{< emoticons/tick >}} |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không hoàn toàn tuân thủ." | {{< emoticons/tick >}} |  |
|  Điều này vi phạm các yêu cầu tuân thủ. Tệp đầu ra sẽ không hoàn toàn tương thích." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
