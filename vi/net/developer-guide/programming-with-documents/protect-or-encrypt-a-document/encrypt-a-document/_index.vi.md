---
title: Mã hóa tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Mã hóa một tài liệu
linktitle: Mã hóa một tài liệu
description: "Mã hóa tài liệu của bạn bằng thuật toán mã hóa thích hợp cho các định dạng tài liệu cụ thể trong C#."
type: docs
weight: 20
url: /vi/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Mã hóa là quá trình dịch văn bản có thể đọc được thành các chuỗi byte vô nghĩa để chỉ người có khóa giải mã hoặc mã bí mật mới có thể đọc được. Quá trình này đóng một vai trò quan trọng trong việc bảo mật nội dung của bạn. Nó giúp mã hóa nội dung, xác minh nguồn gốc của tài liệu, chứng minh nội dung không bị sửa đổi sau khi gửi và đảm bảo dữ liệu từ tài liệu được an toàn.

Bài viết này giải thích cách Aspose.Words cho phép bạn mã hóa tài liệu và cách kiểm tra xem tài liệu có được mã hóa hay không.

## Mã hóa bằng mật khẩu

Để mã hóa tài liệu, hãy sử dụng thuộc tính **Password** để cung cấp mật khẩu có chức năng như khóa mã hóa. Điều này sẽ sửa đổi nội dung tài liệu của bạn và làm cho nó không thể đọc được. Tài liệu được mã hóa sẽ yêu cầu phải nhập mật khẩu này trước khi có thể mở được.

{{% alert color="primary" %}}

Bạn có thể tìm thấy thuộc tính **Password** thích hợp cho định dạng được yêu cầu. Mỗi định dạng lưu tài liệu trong [Lưu không gian tên](https://reference.aspose.com/words/net/aspose.words.saving/) có một lớp tương ứng chứa các tùy chọn lưu cho định dạng này. Ví dụ: thuộc tính [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) trong lớp [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) cho DOC hoặc thuộc tính [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) trong lớp [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) cho DOCX, DOCM, DOTX, DOTM và FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Lưu ý rằng chỉ một số định dạng tài liệu nhất định mới hỗ trợ mã hóa. Ví dụ: RTF không hỗ trợ mã hóa.

{{% /alert %}}

Bảng bên dưới liệt kê các định dạng và thuật toán mã hóa được Aspose.Words hỗ trợ:

| Định dạng |  Mã hóa được hỗ trợ trong khi tải |  Mã hóa được hỗ trợ trong khi lưu |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  ĐỐC, DOT |  Mã hóa XOR Mã hóa RC4 40-bitCryptoMã hóa API RC4 |  Mã hóa RC4 (40-bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  Mã hóa tiêu chuẩn ECMA-376 Mã hóa linh hoạt ECMA-376 |  Mã hóa tiêu chuẩn ECMA-376 (AES128 + SHA1) |
|  ODT, OTT |  Mã hóa ODF (Blowfish/AES) |  Mã hóa ODF (AES256 + SHA256) |
|  PDF |  -                                                            |  Mã hóa RC4 (40/128 bit) |

Ví dụ mã sau đây cho thấy cách mã hóa tài liệu bằng mật khẩu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Kiểm tra xem tài liệu có được mã hóa không

Trong một số trường hợp, bạn có thể có một tài liệu không thể đọc được và muốn chắc chắn rằng tài liệu đó được mã hóa và không bị hỏng hoặc bị nén.

Để phát hiện xem tài liệu có được mã hóa hay không và có cần mật khẩu hay không, bạn có thể sử dụng thuộc tính [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) của lớp [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/). Thuộc tính này cũng sẽ cho phép bạn thực hiện một số hành động trước khi tải tài liệu, chẳng hạn như thông báo cho người dùng cung cấp mật khẩu.

Ví dụ mã sau đây cho thấy cách phát hiện mã hóa tài liệu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Mở tài liệu có hoặc không có mật khẩu

Khi chúng tôi đảm bảo rằng tài liệu đã được mã hóa, chúng tôi có thể thử mở tài liệu này mà không cần mật khẩu, điều này sẽ dẫn đến một ngoại lệ.

Ví dụ về mã sau đây cho thấy cách thử mở tài liệu được mã hóa mà không cần mật khẩu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Sau khi chúng tôi thấy rằng không thể mở được tài liệu được mã hóa nếu không có mật khẩu, chúng tôi có thể thử mở nó bằng cách nhập mật khẩu.

Ví dụ về mã sau đây cho thấy cách thử mở tài liệu được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
