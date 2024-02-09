---
title: Cài đặt phông chữ TrueType trên Linux
second_title: Aspose.Words cho Python via .NET
articleTitle: Cài đặt phông chữ TrueType trên Linux
linktitle: Cài đặt phông chữ TrueType trên Linux
description: "Aspose.Words cho Python cho phép hiển thị tài liệu được tạo bằng Microsoft Word trên máy Linux với độ chính xác tốt nhất. Để thực hiện việc này, hãy sao chép các tệp phông chữ từ máy Windows hoặc Cài đặt gói phông chữ `TrueType` vào máy Linux của bạn."
type: docs
weight: 20
url: /vi/python-net/installing-truetype-fonts-on-linux/
---

Thông thường, bạn sẽ sử dụng Aspose.Words để chuyển đổi tài liệu DOC hoặc DOCX sang định dạng PDF. Nếu bạn cần thực hiện việc này trên máy Linux, chủ đề này sẽ giúp bạn tìm hiểu cách đảm bảo Aspose.Words hiển thị tài liệu của bạn với độ chính xác tốt nhất.

Thông thường nhất, các tài liệu DOC và DOCX cần được chuyển đổi đã được tạo bằng Microsoft Word, trên hệ điều hành Windows hoặc Mac OS. Do đó, hầu hết các phông chữ được sử dụng trong tài liệu DOC và DOCX là "phông chữ Windows" hoặc "phông chữ Office", là những phông chữ được cài đặt cùng với Microsoft Windows hoặc Microsoft Office. Những phông chữ này bao gồm Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings và nhiều phông chữ khác.

Vấn đề là các phông chữ `TrueType` được liệt kê ở trên không được cài đặt theo mặc định trên các bản phân phối Linux. Nếu bạn lấy một tài liệu DOCX điển hình được định dạng bằng phông chữ Cambria và cố gắng chuyển đổi nó sang định dạng PDF trên Linux, Aspose.Words sẽ sử dụng phông chữ khác vì Cambria không có sẵn. Kết quả là tài liệu PDF sẽ trông khác so với tài liệu DOCX gốc. Để đảm bảo rằng các tài liệu được Aspose.Words chuyển đổi trông giống với tài liệu gốc nhất có thể, bạn cần cài đặt "phông chữ Windows" trên hệ thống Linux của mình.

Có hai cách chính để tải phông chữ TrueType trên hệ thống Linux:

- Sao chép tệp .TTF và .TTC từ máy Windows sang máy Linux của bạn
- Cài đặt gói phông chữ `TrueType`, chẳng hạn như *msttcorefonts*

## Sao chép phông chữ từ máy Windows

Một cách dễ dàng và nhanh chóng để có được phông chữ TrueType trên hệ thống Linux là sao chép các tệp .TTF và .TTC từ thư mục `C:\Windows\Fonts` trên máy Windows sang một thư mục nào đó trên máy Linux của bạn. Bạn không cần phải cài đặt hoặc đăng ký các phông chữ này trên Linux dưới bất kỳ hình thức nào; bạn chỉ cần xác định vị trí của phông chữ bằng lớp [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) trong Aspose.Words.

{{% alert color="primary" %}}

Xác minh xem có cần cấp phép phông chữ hay không và đọc kỹ EULA trước khi cài đặt MS Fonts trên bất kỳ hệ điều hành Linux nào.

{{% /alert %}}

## Cài đặt gói phông chữ `TrueType`

Có một số gói Linux chứa phông chữ Microsoft TrueType mà bạn có thể tải xuống và cài đặt trên máy Linux của mình. Các bước chính xác có thể khác nhau trên các bản phân phối Linux khác nhau.

- Trên Ubuntu, sử dụng Synaptic Package Manager để tìm và cài đặt gói *ttf-mscorefonts-installer*.
- Trên openSUSE, sử dụng Yast2 → Software Management để tìm và cài đặt gói *fetchmsttfonts*.
- Sử dụng Phông chữ Giải phóng được cấp phép theo OFL, thay thế cho phông chữ Windows tiêu chuẩn: Arial, Times New Roman và Courier New.
- Đối với các gói phông chữ phù hợp với các bản phân phối Linux khác, hãy tìm kiếm tài liệu có sẵn trên internet.

Sau khi cài đặt gói, Aspose.Words sẽ tìm các phông chữ này trong các thư mục trên hệ thống của bạn và sử dụng chúng khi làm việc với tài liệu.

## Xem thêm

- [Phông chữ giải phóng](https://pagure.io/liberation-fonts) thay thế cho phông chữ Windows tiêu chuẩn
