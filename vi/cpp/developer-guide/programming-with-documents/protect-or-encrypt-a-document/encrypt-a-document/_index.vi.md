---
title: Mã Hóa Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Mã hóa Tài liệu
linktitle: Mã hóa Tài liệu
description: "Mã hóa tài liệu của bạn bằng các thuật toán mã hóa thích hợp cho các định dạng tài liệu cụ thể."
type: docs
weight: 20
url: /vi/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Mã hóa là quá trình dịch văn bản có thể đọc được thành các chuỗi byte vô nghĩa để người có khóa giải mã hoặc mã bí mật chỉ có thể đọc được. Quá trình này đóng một vai trò quan trọng trong việc bảo mật nội dung của bạn. Nó giúp mã hóa nội dung, xác minh nguồn gốc của tài liệu, chứng minh rằng nội dung chưa được sửa đổi sau khi được gửi và đảm bảo rằng dữ liệu từ tài liệu được an toàn.

Bài viết này giải thích cách Aspose.Words cho phép bạn mã hóa tài liệu và cách kiểm tra xem tài liệu có mã hóa hay không.

## Mã hóa Bằng Mật Khẩu

Để mã hóa tài liệu, hãy sử dụng thuộc tính **Password** để cung cấp mật khẩu có chức năng như một khóa mã hóa. Điều này sẽ sửa đổi nội dung tài liệu của bạn và làm cho nó không thể đọc được. Tài liệu được mã hóa sẽ yêu cầu nhập mật khẩu này trước khi có thể mở.

{{% alert color="primary" %}}

Bạn có thể tìm thuộc tính **Password** thích hợp cho định dạng bắt buộc. Mỗi định dạng lưu tài liệu trong [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) có một lớp tương ứng chứa các tùy chọn lưu cho định dạng này. Ví dụ: thuộc tính [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) trong lớp [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) cho DOC hoặc thuộc tính [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) trong lớp [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) cho DOCX, DOCM, DOTX, DOTM, và FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Lưu ý rằng chỉ một số định dạng tài liệu nhất định mới hỗ trợ mã hóa. Ví dụ: RTF không hỗ trợ mã hóa.

{{% /alert %}}

Bảng dưới đây liệt kê các định dạng và thuật toán mã hóa được hỗ trợ bởi Aspose.Words:

| Định dạng | Mã hóa được hỗ trợ trong khi Tải | Mã hóa được hỗ trợ trong Khi Lưu |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR mã hóa40-bit RC4 EncryptionCryptoAPI RC4 Mã Hóa | RC4 Mã hóa (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA -376 Mã Hóa Tiêu Chuẩn ECMA -376 Mã Hóa Nhanh | ECMA -376 Mã Hóa Tiêu Chuẩn (AES128 + SHA1) |
| ODT, OTT | ODF Mã Hóa (Blowfish/AES) | ODF Mã hóa (AES256 + SHA256) |
| PDF | RC4 Mã hóa (40/128 bit) |

Ví dụ mã sau đây cho thấy cách mã hóa tài liệu bằng mật khẩu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Kiểm Tra Xem Tài liệu Có Được Mã Hóa Hay không

Trong một số trường hợp, bạn có thể có một tài liệu không thể đọc được và muốn chắc chắn rằng tài liệu được mã hóa và không bị hỏng hoặc nén.

Để phát hiện xem tài liệu có được mã hóa hay không và nếu cần mật khẩu, bạn có thể sử dụng thuộc tính [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) của lớp [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo). Thuộc tính này cũng sẽ cho phép bạn thực hiện một số hành động trước khi tải tài liệu, ví dụ: thông báo cho người dùng cung cấp mật khẩu.

Ví dụ mã sau đây cho thấy cách phát hiện mã hóa tài liệu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Mở Tài liệu có Hoặc Không Có Mật Khẩu

Khi chúng tôi đã đảm bảo rằng một tài liệu được mã hóa, chúng tôi có thể thử mở tài liệu này mà không cần mật khẩu, điều này sẽ dẫn đến một ngoại lệ.

Ví dụ mã sau đây cho thấy cách thử mở tài liệu được mã hóa mà không cần mật khẩu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Sau khi chúng tôi thấy rằng một tài liệu được mã hóa không thể được mở mà không có mật khẩu, chúng tôi có thể thử mở nó bằng cách nhập mật khẩu.

Ví dụ mã sau đây cho thấy cách thử mở tài liệu được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
