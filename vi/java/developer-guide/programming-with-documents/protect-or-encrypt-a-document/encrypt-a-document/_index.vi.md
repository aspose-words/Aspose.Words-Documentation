---
title: Mã hóa một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Đóng mã một tài liệu
linktitle: Đóng mã một tài liệu
description: "Mã hóa tài liệu của bạn bằng các thuật toán mã hóa thích hợp cho các định dạng tài liệu cụ thể trong Java."
type: docs
weight: 20
url: /vi/java/encrypt-a-document/
---

Mã hóa là quá trình dịch văn bản có thể đọc được thành chuỗi các byte vô nghĩa để nó chỉ có thể được đọc bởi người có chìa khóa giải mã hay mã bí mật. Quy trình này đóng một vai trò quan trọng trong việc bảo mật nội dung của bạn. Nó giúp mã hóa nội dung, xác minh nguồn gốc của một tài liệu, chứng minh rằng nội dung đã không bị thay đổi sau khi gửi đi, và đảm bảo dữ liệu từ tài liệu là an toàn.

Bài viết giải thích làm thế nào Aspose.Words cho phép bạn mã hóa một tài liệu và cách để kiểm tra nếu một tài liệu đã được mã hóa hay chưa.

## Mã hóa với mật khẩu

Để mã hóa một tài liệu, sử dụng thuộc tính **Password** để cung cấp mật khẩu mà hoạt động như khóa mã hóa. Điều này sẽ thay đổi nội dung của tài liệu của bạn và khiến nó không thể đọc được. Tài liệu đã mã hóa sẽ yêu cầu nhập mật khẩu này trước khi nó có thể được mở.

{{% alert color="primary" %}}

Bạn có thể tìm thấy thuộc tính phù hợp **Password** cho định dạng cần thiết. Mỗi định dạng tài liệu lưu có lớp tương ứng chứa các tùy chọn lưu cho định dạng này. Ví dụ như thuộc tính [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) trong lớp [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) cho DOC, hay thuộc tính [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) trong lớp [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) cho DOCX, DOCM, DOTX, DOTM và FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Hãy chú ý rằng chỉ có một số định dạng tài liệu mới hỗ trợ mã hóa. Ví dụ, RTF không hỗ trợ mã hóa.

{{% /alert %}}

Bảng dưới đây liệt kê các định dạng và thuật toán mã hóa được hỗ trợ bởi Aspose.Words:

| Định dạng | Hỗ trợ mã hóa khi tải | Hỗ trợ Mã hóa khi Lưu |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | Xor mã hóa40 bit mã hóa RC4 Crypto API RC4 Mã hóa | RC4 Mã hóa (40 bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | Mã hóa ECMA-376ECMA-376 Mã hóa nhanh | Mã hóa tiêu chuẩn ECMA-376 (AES128 + SHA1) |
| ODT, OTT | Mã hóa ODF (Blowfish/AES) | Mã hóa ODF (AES256 + SHA256) |
| PDF |-| Độ mã hóa RC4 (40/128 bit) |

Mã ví dụ sau cho thấy cách mã hóa tài liệu bằng mật khẩu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Kiểm tra nếu một tài liệu được mã hóa

Trong một số trường hợp bạn có thể có một tài liệu không thể đọc được và muốn chắc chắn rằng tài liệu đó được mã hóa và không bị hỏng hoặc nén.

Để phát hiện nếu một tài liệu được mã hóa và nếu mật khẩu là cần thiết, bạn có thể sử dụng thuộc tính [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) của lớp [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/). Tính chất này cũng cho phép bạn thực hiện một số hành động trước khi tải một tài liệu, ví dụ thông báo người dùng cung cấp mật khẩu.

Mã ví dụ sau cho thấy cách phát hiện mã hóa tài liệu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Mở Tài liệu Có hoặc Không Có Mật Khẩu

Khi chúng tôi đảm bảo rằng một tài liệu đã được mã hóa, chúng ta có thể thử mở tài liệu này mà không cần mật khẩu, điều này nên dẫn đến ngoại lệ.

Mã ví dụ sau cho thấy cách thử mở tài liệu đã mã hóa mà không có mật khẩu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Sau khi chúng ta đã thấy rằng một tài liệu mã hóa không thể mở mà không có mật khẩu, chúng ta có thể thử mở nó bằng cách nhập mật khẩu.

Ví dụ mã dưới cho thấy cách thử mở một tài liệu đã được mã hóa với mật khẩu:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
