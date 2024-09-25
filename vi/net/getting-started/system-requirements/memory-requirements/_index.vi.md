---
title: Yêu cầu bộ nhớ
second_title: Aspose.Words cho .NET
articleTitle: Yêu cầu bộ nhớ
linktitle: Yêu cầu bộ nhớ
description: "Aspose.Words cho .NET cần bao nhiêu bộ nhớ để làm việc với tài liệu? Tìm hiểu chi tiết."
type: docs
weight: 10
url: /vi/net/memory-requirements/
---

Aspose.Words cung cấp nhiều tính năng để làm việc với các tài liệu ở nhiều định dạng khác nhau. Điều quan trọng cần lưu ý là không có giới hạn về kích thước tối đa của tệp tài liệu mà Aspose.Words có thể xử lý hoặc hiển thị. Hạn chế duy nhất là dung lượng RAM (bộ nhớ) có sẵn ở bên bạn.

## Aspose.Words cần bao nhiêu bộ nhớ

Thông thường Aspose.Words cần bộ nhớ nhiều hơn vài lần so với kích thước tài liệu để xây dựng mô hình tài liệu trong bộ nhớ. Ví dụ: nếu kích thước tài liệu của bạn là 1 MB, Aspose.Words cần 10-20 MB RAM để tạo Document Object Model (DOM) trong bộ nhớ. Hệ số nhân phụ thuộc vào định dạng vì một số định dạng nhỏ gọn hơn các định dạng khác. Ví dụ: DOCX nhỏ gọn hơn DOC và RTF và DOC nhỏ gọn hơn RTF.

Không có cách nào chính xác để ước tính lượng bộ nhớ Aspose.Words thực sự tiêu thụ trong quá trình xử lý bất kỳ tệp tài liệu cụ thể nào. Như bạn có thể biết .NET lưu trữ dữ liệu trong các lớp, mỗi phiên bản lớp sử dụng một số bộ nhớ cho mục đích nội bộ CLR. Vì vậy, bất kỳ đoạn văn hoặc văn bản được định dạng nào (thậm chí nó bao gồm một ký tự) đều cần thêm bộ nhớ sau khi tải vào DOM. Hơn nữa, công cụ thu gom rác .NET sử dụng thuật toán phức tạp để xác định thời điểm tốt nhất để thực hiện thu thập bộ nhớ, khiến việc xác định mức tiêu thụ bộ nhớ thực trở nên khó khăn.

## Cách tính dung lượng bộ nhớ

Hãy xem xét hai tài liệu:

1. Tài liệu DOCX "A" – kích thước 0,35 MB (2 nghìn trang), chỉ văn bản
2. Tài liệu DOCX "B" – kích thước 0,35 MB (chỉ 1 trang), có hình ảnh PNG bên trong

Như bạn đã biết, rất nhiều định dạng hiện đại như DOCX, ODT, v.v. là các kho lưu trữ ZIP đơn giản. Vì vậy, chúng ta có được thuật toán tính toán sau:
1. Giải nén. Tài liệu được giải nén "A" có kích thước 20 MB, tài liệu "B" có kích thước 0,4 MB
2. Nạp tài liệu vào mô hình (xây dựng Document Object Model – DOM):
* Tạo DOM của tài liệu đầu tiên "A" yêu cầu kích thước 49 MB
* Tạo DOM của tài liệu thứ hai "B" chỉ cần kích thước 2 MB.
3. Đo lượng bộ nhớ cần thiết để hiển thị các tài liệu này thành PDF. Đối với hoạt động này, Aspose.Words yêu cầu:
  * 294 MB cho tài liệu "A"
  * 7 MB cho tài liệu "B"

Vì vậy, như bạn có thể thấy, không có sự phụ thuộc tuyến tính vào kích thước tài liệu đầu vào. Có nhiều yếu tố có thể ảnh hưởng đến kích thước RAM cần thiết – định dạng tài liệu, độ phức tạp và cấu trúc của nó, số lượng hình ảnh và định dạng của chúng cũng như nhiều yếu tố khác.

## Cách tính hệ số nhân bộ nhớ chính xác nhất

Thử nghiệm với hàng nghìn tài liệu thực cho thấy Aspose.Words thường yêu cầu bộ nhớ nhiều gấp nhiều lần so với kích thước tài liệu trung bình để xây dựng mô hình tài liệu trong bộ nhớ và thực hiện các thao tác đơn giản như chuyển đổi giữa các định dạng luồng, mail merge, phân tích cú pháp, thay thế, v.v. Đôi khi chúng ta đang nói về số nhân là 2 và đôi khi là 20.

Các thao tác phức tạp hơn như kết xuất (chuyển đổi sang định dạng trang cố định), cập nhật trường, chia trang, v.v., đối với một số tài liệu yêu cầu tài nguyên gấp 20 lần so với bộ nhớ được phân bổ bởi tài liệu được tải trong Aspose.Words DOM.

Nếu kết quả lập hồ sơ của bạn cho thấy có thể xảy ra sự cố bộ nhớ trong Aspose.Words, vui lòng liên hệ với [Hỗ trợ kỹ thuật](/words/vi/net/technical-support/) của chúng tôi và bao gồm tất cả thông tin chẩn đoán.

## Xem thêm

* [Đo mức sử dụng bộ nhớ trong Visual Studio (C#, Visual Basic, C++, F#)](https://learn.microsoft.com/en-us/visualstudio/profiling/memory-usage?view=vs-2022)
* [Kết xuất](/words/vi/net/rendering/)
* [Mail Merge và báo cáo](/words/net/mail-merge-and-reporting/)
* [Làm việc với các trường](/words/vi/net/working-with-fields/)