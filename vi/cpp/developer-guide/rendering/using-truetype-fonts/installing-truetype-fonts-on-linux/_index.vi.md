---
title: Cài Đặt TrueType phông chữ trên Linux trong C++
second_title: Aspose.Words cho C++
articleTitle: Cài Đặt TrueType phông chữ trên Linux
linktitle: Cài Đặt TrueType phông chữ trên Linux
description: "Aspose.Words cho C++ cho phép hiển thị tài liệu được tạo bằng Microsoft Word trên máy Linux với độ chính xác tốt nhất. Để thực hiện việc này, hãy sao chép các tệp phông chữ từ máy Windows hoặc Cài đặt gói phông chữ `TrueType` vào máy Linux của bạn."
type: docs
weight: 20
url: /vi/cpp/install-truetype-fonts-on-linux/
---

Thông thường, bạn sẽ sử dụng Aspose.Words để chuyển đổi DOC hoặc DOCX tài liệu sang định dạng PDF. Nếu bạn cần làm điều này trên máy Linux, chủ đề này sẽ giúp bạn tìm hiểu cách đảm bảo Aspose.Words hiển thị tài liệu của bạn với độ chính xác tốt nhất.

Thông thường, các tài liệu DOC và DOCX, cần được chuyển đổi được tạo bằng cách sử dụng Microsoft Word, trên hệ điều hành Windows Hoặc Mac OS. Do đó, hầu hết các phông chữ được sử dụng trong tài liệu DOC và DOCX là "phông chữWindows" hoặc "Phông Chữ Office", là các phông chữ được cài Đặt Với Microsoft Windows hoặc Microsoft Office. Những phông chữ này bao gồm Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings và nhiều phông chữ khác.

Vấn đề là các phông chữ `TrueType` được liệt kê ở trên không được cài đặt theo mặc định trên các bản phân phối Linux. Nếu bạn lấy một tài liệu DOCX điển hình được định dạng bằng Phông Chữ Cambria và cố gắng chuyển đổi nó thành định dạng PDF trên Linux, Aspose.Words sẽ sử dụng một phông chữ khác vì Cambria không khả dụng. Do đó, tài liệu PDF sẽ trông khác, so với tài liệu DOCX ban đầu. Để đảm bảo rằng các tài liệu được chuyển đổi bởi Aspose.Words xuất hiện càng gần với bản gốc càng tốt, bạn cần cài đặt "Windows phông chữ" trên hệ thống Linux của mình.

Có hai cách chính để lấy phông chữ TrueType trên hệ thống Linux:

- Sao chép .TTF và .TTC tệp từ máy Windows vào máy Linux của bạn
- Cài đặt gói phông chữ `TrueType`, chẳng hạn như *msttcorefonts*

## Sao chép Phông chữ từ Máy Windows

Một cách dễ dàng và nhanh chóng để có được phông chữ TrueType trên hệ thống Linux là sao chép .TTF và .TTC các tệp Từ thư mục C:\Windows\Fonts trên máy Windows đến một số thư mục trên máy Linux của bạn. Bạn không cần phải cài đặt hoặc đăng ký các phông chữ này trên Linux theo bất kỳ cách nào; bạn chỉ cần chỉ định vị trí của các phông chữ bằng cách sử dụng lớp [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) trong Aspose.Words.

{{% alert color="primary" %}}

Xác minh xem có cần cấp phép phông chữ hay không và đọc kỹ EULA trước khi cài Đặt MS Phông chữ trên bất kỳ hệ điều hành Linux nào.

{{% /alert %}}

## Cài Đặt gói phông chữ `TrueType`

Có một số gói Linux, chứa phông chữ Microsoft TrueType mà bạn có thể tải xuống và cài đặt vào máy Linux của mình. Các bước chính xác có thể khác nhau trên các bản phân phối Linux khác nhau.

- Trên Ubuntu, sử dụng Trình Quản lý Gói Synaptic để tìm và cài đặt gói *ttf-mscorefonts-installer*.
- Trên openSUSE, sử dụng Yast2 → Quản lý Phần mềm để tìm và cài đặt gói *fetchmsttfonts*.
- Sử dụng Phông Chữ Giải phóng được cấp phép theo OFL, thay thế cho phông chữ Windows tiêu chuẩn: Arial, Times New Roman và Courier New.
- Đối với các gói phông chữ phù hợp với các bản phân phối Linux khác, hãy tìm kiếm tài liệu có sẵn trên internet.

Sau khi cài đặt gói, Aspose.Words sẽ tìm thấy các phông chữ này trong các thư mục trên hệ thống của bạn và sử dụng chúng khi làm việc với các tài liệu.

## Xem Thêm

- [Phông Chữ Giải Phóng](https://github.com/liberationfonts) thay thế cho phông chữ Windows tiêu chuẩn
