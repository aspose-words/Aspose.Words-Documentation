---
title: Mở tài liệu chỉ đọc trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Mở một tài liệu chỉ đọc
linktitle: Mở một tài liệu chỉ đọc
description: "Đặt tài liệu của bạn ở chế độ chỉ đọc để có thể sao chép hoặc đọc nội dung nhưng không thể sửa đổi bằng Python."
type: docs
weight: 10
url: /vi/python-net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Đôi khi, bạn có thể có một tài liệu cần được xem xét lại nhưng bạn không muốn người đánh giá sửa đổi nội dung của bạn một cách ngẫu nhiên. Aspose.Words cho phép bạn đặt quyền cho tài liệu của mình ở chế độ chỉ đọc để có thể sao chép hoặc đọc nội dung nhưng không được sửa đổi. Điều này sẽ ngăn nội dung bị xóa hoặc thêm vào tài liệu của bạn.

{{% alert color="primary" %}}

Việc áp dụng tùy chọn chỉ đọc cho tài liệu của bạn không ngăn cản người khác tạo bản sao mới của tài liệu đó và lưu nó bằng một tên khác.

{{% /alert %}}

Bài viết này giải thích cách tạo một tài liệu ở chế độ chỉ đọc.

## Tạo một tài liệu chỉ đọc

Aspose.Words có lớp công khai [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) chỉ định cài đặt bảo vệ ghi cho tài liệu. Bạn không trực tiếp tạo các thể hiện của lớp này.

Tính năng chống ghi cho biết liệu tác giả có khuyến nghị mở tài liệu ở dạng chỉ đọc và/hoặc yêu cầu mật khẩu để sửa đổi tài liệu hay không.

Aspose.Words cho phép bạn tạo tài liệu ở chế độ chỉ đọc để hạn chế chỉnh sửa bằng cách sử dụng thuộc tính [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) và phương thức [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể tạo tài liệu Chỉ đọc theo cách tương tự bằng cách sử dụng cả hai:

* "Luôn mở chỉ đọc" (Tệp → Thông tin → Bảo vệ tài liệu)
* "Mật khẩu cần sửa đổi" (Lưu dưới dạng → Công cụ → Tùy chọn chung → Mật khẩu)

{{% /alert %}}

{{% alert color="primary" %}}

Người dùng cũng có thể hạn chế chỉnh sửa tài liệu bằng cách chọn [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) làm [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only), nhưng đây là một tính năng khác cung cấp khả năng bảo vệ nâng cao hơn. Có một chức năng như vậy trong Microsoft Word, tương ứng, nó được triển khai trong Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) sẽ được mô tả chi tiết ở một trong các bài viết sau – "Hạn chế chỉnh sửa tài liệu".

{{% /alert %}}

Thuộc tính [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) được bảo mật bằng mật khẩu, vì vậy nếu bạn không đặt mật khẩu trước khi áp dụng thuộc tính [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) thì những người dùng khác có thể chỉ cần mở tài liệu như thể nó không được bảo vệ. Bạn truy cập cài đặt bảo vệ tài liệu và đặt mật khẩu bảo vệ ghi thông qua phương thức [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/).

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu đang được đặt chỉ là một thuộc tính trong tài liệu có thể bị xóa nếu thuộc tính tài liệu được truy cập. Theo đó, mật khẩu như vậy không phải là sự đảm bảo cho tính bảo mật của tài liệu.

{{% /alert %}}

Nếu bạn cần kiểm tra xem tài liệu có mật khẩu bảo vệ ghi hạn chế chỉnh sửa tài liệu hay không, bạn có thể sử dụng thuộc tính [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/).

Ví dụ mã sau đây cho thấy cách tạo tài liệu ở chế độ chỉ đọc:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Xóa hạn chế chỉ đọc

Nếu bạn không muốn người dùng mở tài liệu của mình ở dạng chỉ đọc, bạn chỉ cần đặt thuộc tính [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) thành `False` hoặc chọn [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) làm [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection).

Ví dụ về mã sau đây cho biết cách loại bỏ quyền truy cập chỉ đọc đối với tài liệu:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
