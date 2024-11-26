---
title: Yêu cầu bộ nhớ
second_title: Aspose.Words cho Java
articleTitle: Yêu cầu bộ nhớ
linktitle: Yêu cầu bộ nhớ
description: "Bộ nhớ Aspose.Words cần bao nhiêu để làm việc với các tài liệu cho Java? Học những chi tiết."
type: docs
weight: 10
url: /vi/java/memory-requirements/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words cung cấp một loạt các tính năng để làm việc với các tài liệu ở nhiều định dạng khác nhau. Quan trọng là phải ghi nhận rằng không có giới hạn kích thước tối đa của tệp tài liệu mà Aspose.Words có thể xử lý hoặc hiển thị. Giới hạn duy nhất là số lượng RAM (độ nhớ) có sẵn ở phía bạn.

## Cần bao nhiêu bộ nhớ Aspose.Words cần?

Thông thường Aspose.Words cần vài lần bộ nhớ lớn hơn kích thước tài liệu để tạo ra một mô hình của tài liệu trong bộ nhớ. Ví dụ như nếu kích thước tài liệu của bạn là 1MB thì Aspose.Words cần 10-20MB RAM để xây dựng các Document Object Model ( DOM ) trong bộ nhớ. Hệ số phụ thuộc vào định dạng vì một số định dạng có thể thu gọn hơn các định dạng khác. Ví dụ, DOCX gọn gàng hơn DOC và RTF, còn DOC lại gọn gàng hơn RTF.

Không có cách nào chính xác để ước tính lượng bộ nhớ Aspose.Words thực sự tiêu thụ trong khi xử lý bất kỳ tập tin tài liệu cụ thể nào. Bạn biết Java lưu trữ dữ liệu trong các lớp, mỗi trường hợp lớp sử dụng một số bộ nhớ cho mục đích nội bộ của JVM (Java máy ảo). Vì vậy, bất kỳ một đoạn văn bản hoặc văn bản định dạng (cũng bao gồm các ký tự đơn lẻ) sẽ chiếm thêm bộ nhớ sau khi tải vào trong DOM. Ngoài ra, bộ thu dọn rác Java sử dụng một thuật toán phức tạp để xác định thời điểm tốt nhất để thực hiện việc thu hồi bộ nhớ, khiến việc xác định mức tiêu thụ bộ nhớ thực tế trở nên khó khăn.

## Làm sao để tính toán lượng bộ nhớ

Hãy xem xét hai tài liệu

1. DOCX A tài liệu – 0.35MB kích thước (2 ngàn trang), chỉ văn bản
2 DOCX "B" tài liệu – 0,35 MB kích thước (chỉ 1 trang), với hình ảnh PNG bên trong

Bạn biết đấy, rất nhiều định dạng hiện đại như DOCX, ODT,... là các tập tin lưu trữ đơn giản theo kiểu ZIP. Vậy chúng ta có được thuật toán tính toán sau đây là:
1. Giải nén. Tài liệu đã mở rộng A" có kích thước 20 MB, tài liệu "B" có kích thước 0.4 MB
2. Đang tải tài liệu vào mô hình (đang xây dựng Document Object Model – DOM):
* Tạo DOM của tài liệu đầu tiên "A" yêu cầu 49 MB kích thước
* Tạo DOM của tài liệu thứ hai "B" chỉ yêu cầu kích thước 2MB.
3. Đo lường lượng bộ nhớ cần thiết để tạo ra các tài liệu này dưới dạng PDF. Đối với thao tác này, "Aspose.Words" yêu cầu:
  * 294 MB cho tài liệu "A"
  * 7MB cho tài liệu "B"

Vậy như bạn thấy, không có sự phụ thuộc tuyến tính vào kích thước tài liệu đầu vào. Có rất nhiều yếu tố có thể ảnh hưởng đến kích thước bộ nhớ cần thiết - định dạng tài liệu, độ phức tạp và cấu trúc của nó, số lượng hình ảnh và định dạng của chúng, và nhiều yếu tố khác.

## Cách Tính Đa Nhân Cải Bộ Nhớ Chính Xác Nhất

Thí nghiệm với hàng ngàn tài liệu thực cho thấy thông thường Aspose.Words yêu cầu nhiều lần bộ nhớ trung bình kích thước tài liệu để xây dựng một mô hình tài liệu trong bộ nhớ và thực hiện các hoạt động đơn giản như chuyển đổi giữa định dạng dòng chảy, mail merge, phân tích, thay thế và nhiều hơn nữa. Đôi khi chúng tôi đang nói về một hệ số nhân là 2 và đôi khi 20.

Các hoạt động phức tạp hơn như hiển thị (chuyển đổi sang định dạng trang cố định), cập nhật các trường, chia trang và những thứ khác đối với một số tài liệu yêu cầu 20 lần nhiều nguồn lực hơn bộ nhớ được cấp cho tài liệu được tải trong Aspose.Words DOM.

Nếu kết quả phân tích của bạn cho thấy có thể có vấn đề bộ nhớ trong Aspose.Words, vui lòng liên hệ với [Đội ngũ hỗ trợ] (/words/java/technical-support/) và bao gồm tất cả thông tin chẩn đoán.

## Xem thêm

* [Render](/words/java/rendering/)
* [Mail Merge và Báo cáo](/words/java/mail-merge-and-reporting/)
* [Làm việc với trường](/words/java/working-with-fields/)
