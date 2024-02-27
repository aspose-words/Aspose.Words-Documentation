---
title: Mở tài liệu chỉ đọc trong C#
second_title: Aspose.Words cho .NET
articleTitle: Mở một tài liệu chỉ đọc
linktitle: Mở một tài liệu chỉ đọc
description: "Đặt tài liệu của bạn ở chế độ chỉ đọc để có thể sao chép hoặc đọc nội dung nhưng không thể sửa đổi bằng C#."
type: docs
weight: 10
url: /vi/net/open-a-document-read-only/
---

Đôi khi, bạn có thể có một tài liệu cần được xem xét lại nhưng bạn không muốn người đánh giá sửa đổi nội dung của bạn một cách ngẫu nhiên. Aspose.Words cho phép bạn đặt quyền cho tài liệu của mình ở chế độ chỉ đọc để có thể sao chép hoặc đọc nội dung nhưng không được sửa đổi. Điều này sẽ ngăn nội dung bị xóa hoặc thêm vào tài liệu của bạn.

{{% alert color="primary" %}}

Việc áp dụng tùy chọn chỉ đọc cho tài liệu của bạn không ngăn cản người khác tạo bản sao mới của tài liệu đó và lưu nó bằng một tên khác.

{{% /alert %}}

Bài viết này giải thích cách tạo một tài liệu ở chế độ chỉ đọc.

## Tạo một tài liệu chỉ đọc

Aspose.Words có lớp công khai [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) chỉ định cài đặt bảo vệ ghi cho tài liệu. Bạn không trực tiếp tạo các thể hiện của lớp này.

Tính năng chống ghi cho biết liệu tác giả có khuyến nghị mở tài liệu ở dạng chỉ đọc và/hoặc yêu cầu mật khẩu để sửa đổi tài liệu hay không.

Aspose.Words cho phép bạn tạo tài liệu ở chế độ chỉ đọc để hạn chế chỉnh sửa bằng cách sử dụng thuộc tính [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) và phương thức [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể tạo tài liệu Chỉ đọc theo cách tương tự bằng cách sử dụng cả hai:

* "Luôn mở chế độ chỉ đọc" (Tệp → Thông tin → Bảo vệ tài liệu)
* "Mật khẩu cần sửa đổi" (Lưu dưới dạng → Công cụ → Tùy chọn chung → Mật khẩu)

{{% /alert %}}

{{% alert color="primary" %}}

Người dùng cũng có thể hạn chế chỉnh sửa tài liệu bằng cách chọn [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) làm **ReadOnly**, nhưng đây là một tính năng khác cung cấp khả năng bảo vệ nâng cao hơn. Có một chức năng như vậy trong Microsoft Word, tương ứng, nó được triển khai trong Aspose.Words.

**ProtectionType** sẽ được mô tả chi tiết ở một trong các bài viết sau – "Hạn chế chỉnh sửa tài liệu".

{{% /alert %}}

Thuộc tính **ReadOnlyRecommended** được bảo mật bằng mật khẩu, vì vậy nếu bạn không đặt mật khẩu trước khi áp dụng thuộc tính **ReadOnlyRecommended** thì những người dùng khác có thể chỉ cần mở tài liệu như thể nó không được bảo vệ. Bạn truy cập cài đặt bảo vệ tài liệu và đặt mật khẩu bảo vệ ghi thông qua phương thức **SetPassword**.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu đang được đặt chỉ là một thuộc tính trong tài liệu có thể bị xóa nếu thuộc tính tài liệu được truy cập. Theo đó, mật khẩu như vậy không phải là sự đảm bảo cho tính bảo mật của tài liệu.

{{% /alert %}}

Nếu bạn cần kiểm tra xem tài liệu có mật khẩu bảo vệ ghi hạn chế chỉnh sửa tài liệu hay không, bạn có thể sử dụng thuộc tính [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/).

Ví dụ mã sau đây cho thấy cách tạo tài liệu ở chế độ chỉ đọc:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Xóa hạn chế chỉ đọc

Nếu bạn không muốn người dùng mở tài liệu của mình ở dạng chỉ đọc, bạn chỉ cần đặt thuộc tính **ReadOnlyRecommened** thành *false* hoặc chọn **ProtectionType** làm **NoProtection**.

Ví dụ về mã sau đây cho biết cách loại bỏ quyền truy cập chỉ đọc đối với tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
