---
title: Cài đặt phông chữ TrueType trên Linux trong Java
second_title: Aspose.Words cho Java
articleTitle: Cài đặt phông chữ TrueType trên Linux
linktitle: Cài đặt phông chữ TrueType trên Linux
description: "Aspose.Words cho máy Java sẽ giúp hiển thị tài liệu được tạo ra bằng Microsoft Word trên một máy Linux với độ chính xác cao nhất."
type: docs
weight: 20
url: /vi/java/install-truetype-fonts-on-linux/
---

Hầu hết các lần bạn sẽ dùng Aspose.Words để chuyển đổi các tài liệu DOC hay DOCX sang định dạng PDF. Nếu bạn cần thực hiện điều này trên một Linux máy, chủ đề này sẽ giúp bạn học cách đảm bảo Aspose.Words in các tài liệu của bạn với độ chính xác tốt nhất.

Hầu hết các tài liệu cần chuyển đổi được tạo ra từ Microsoft Word, trên hệ điều hành Windows hoặc Mac OS. Vì vậy, hầu hết các phông chữ được sử dụng trong các tài liệu DOC và DOCX là "Windows phông chữ" hoặc "Phông chữ văn phòng", đó là phông chữ cài đặt cùng với Microsoft Windows hoặc Microsoft văn phòng. Những phông chữ này bao gồm Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings và nhiều những khác.

Vấn đề là các phông chữ `TrueType` được liệt kê ở trên không được cài đặt mặc định trong Linux bản phân phối. Nếu bạn lấy một tài liệu DOCX điển hình được định dạng bằng phông chữ Cambria và cố gắng chuyển đổi nó sang định dạng PDF trên Linux, Aspose.Words sẽ sử dụng một phông chữ khác vì Cambria không có sẵn. Kết quả là, tài liệu PDF sẽ có vẻ khác so với tài liệu gốc DOCX ban đầu. Để đảm bảo rằng các tài liệu được chuyển đổi bởi Aspose.Words xuất hiện gần như giống hệt với bản gốc nhất có thể, bạn cần cài đặt "phông chữ Windows" trên hệ thống Linux của bạn.

Có hai cách chính để có được phông chữ TrueType trên một Linux hệ thống:

"- Sao chép các tập tin .TTF và .TTC từ máy Windows vào máy Linux của bạn"
- Cài đặt một gói `TrueType` phông chữ, chẳng hạn như *msttcorefonts*

## Sao chép phông chữ từ một Windows máy

Một cách dễ dàng và nhanh chóng để có được các phông chữ TrueType trên một Linux hệ thống là sao chép các tập tin .TTF và .TTC từ thư mục `C:\Windows\Fonts` của một máy Windows vào một số thư mục trên máy Linux của bạn. Bạn không cần cài đặt hoặc đăng ký các phông chữ này trên Linux theo bất kỳ cách nào; bạn chỉ cần chỉ rõ vị trí của các phông chữ bằng lớp [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) trong Aspose.Words.

{{% alert color="primary" %}}

Kiểm tra xem việc cấp phép phông chữ có bắt buộc và đọc kỹ EULA trước khi cài đặt các phông chữ MS trên hệ điều hành nào đó Linux.

{{% /alert %}}

## Cài đặt gói phần mềm `TrueType` Fonts

Có một số gói phần mềm Linux, chứa Microsoft phông chữ TrueType, mà bạn có thể tải xuống và cài đặt vào máy Linux. Các bước chính xác có thể khác nhau trên các Linux phân phối khác nhau.

- Vào ngày Ubuntu hãy dùng Trình quản lý gói Synaptic để tìm kiếm và cài đặt gói *ttf-mscorefonts-installer*.
- Trên openSUSE, dùng Yast2 → Quản lý Phần mềm để tìm và cài đặt gói phần mềm *fetchmsttfonts*.
"- Sử dụng các phông chữ do Liberation được cấp phép theo OFL như một lựa chọn thay thế cho các phông chữ thông thường Windows: Arial, Times New Roman và Courier New."
"- Đối với các gói phông chữ phù hợp với các bản phân phối khác Linux, hãy tìm kiếm tài liệu có sẵn trên internet."

Sau khi cài đặt gói phần mềm này, Aspose.Words sẽ tìm thấy các phông chữ trong thư mục trên hệ thống và sử dụng chúng khi làm việc với tài liệu.

## Xem thêm

- [Liberation Fonts](https://github.com/liberationfonts) như một lựa chọn thay thế cho các phông chữ thông thường Windows
