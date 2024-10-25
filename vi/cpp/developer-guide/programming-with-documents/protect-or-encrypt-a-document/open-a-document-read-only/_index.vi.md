---
title: Mở Tài liệu Chỉ Đọc trong C++
second_title: Aspose.Words cho C++
articleTitle: Mở Tài Liệu Chỉ Đọc
linktitle: Mở Tài Liệu Chỉ Đọc
description: "Làm cho tài liệu của bạn chỉ đọc để nội dung có thể được sao chép hoặc đọc, nhưng không được sửa đổi."
type: docs
weight: 10
url: /vi/cpp/open-a-document-read-only/
---

Đôi khi, bạn có thể có một tài liệu cần đánh giá, nhưng bạn không muốn người đánh giá sửa đổi ngẫu nhiên nội dung của bạn. Aspose.Words cho phép bạn thực hiện quyền chỉ đọc tài liệu của mình để nội dung có thể được sao chép hoặc đọc, nhưng không được sửa đổi. Điều này sẽ ngăn nội dung bị xóa hoặc thêm vào tài liệu của bạn.

{{% alert color="primary" %}}

Áp dụng tùy chọn chỉ đọc vào tài liệu của bạn không ngăn ai đó tạo một bản sao mới của nó và lưu nó bằng một tên khác.

{{% /alert %}}

Bài viết này giải thích cách làm cho một tài liệu chỉ đọc.

## Tạo Một Tài Liệu Chỉ Đọc

Aspose.Words có lớp công khai [WriteProtection](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/) chỉ định cài đặt bảo vệ ghi cho tài liệu. Bạn không tạo các phiên bản của lớp này trực tiếp.

Bảo vệ ghi cho biết tác giả đã khuyến nghị mở tài liệu dưới dạng chỉ đọc và/hoặc yêu cầu mật khẩu để sửa đổi tài liệu.

Aspose.Words cho phép bạn tạo một tài liệu chỉ đọc để hạn chế chỉnh sửa bằng cách sử dụng thuộc tính [ReadOnlyRecommended](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_readonlyrecommended/) và phương thức [SetPassword](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/setpassword/).

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể tạo một tài Liệu Chỉ Đọc theo cách tương tự bằng cách sử dụng cả hai:

* "Luôn Mở Chỉ Đọc" (Tệp → Thông Tin → Bảo Vệ Tài Liệu)
* "Mật khẩu để sửa đổi" (Lưu Dưới Dạng → Công Cụ → Tùy Chọn Chung → Mật Khẩu)

{{% /alert %}}

{{% alert color="primary" %}}

Người dùng cũng có thể hạn chế chỉnh sửa tài liệu bằng cách chọn [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/) là **ReadOnly**, nhưng đây là một tính năng khác cung cấp khả năng bảo vệ nâng cao hơn. Có một hàm như vậy trong Microsoft Word, tương ứng, nó được thực hiện trong Aspose.Words.

**ProtectionType**

{{% /alert %}}

Thuộc tính **ReadOnlyRecommended** được bảo mật bằng mật khẩu, vì vậy nếu bạn không đặt mật khẩu trước khi áp dụng thuộc tính **ReadOnlyRecommended**, thì những người dùng khác có thể chỉ cần mở tài liệu như thể nó không được bảo vệ. Bạn truy cập cài đặt bảo vệ tài liệu và đặt mật khẩu bảo vệ ghi thông qua phương thức **SetPassword**.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu được đặt chỉ là một thuộc tính trong tài liệu có thể bị xóa nếu các thuộc tính tài liệu được truy cập. Theo đó, mật khẩu như vậy không phải là sự đảm bảo về bảo mật tài liệu.

{{% /alert %}}

Nếu bạn cần kiểm tra xem tài liệu có mật khẩu bảo vệ ghi hạn chế chỉnh sửa hay không, bạn có thể sử dụng thuộc tính [IsWriteProtected](https://reference.aspose.com/words/cpp/aspose.words.settings/writeprotection/get_iswriteprotected/).

Ví dụ mã sau đây cho thấy cách tạo tài liệu chỉ đọc:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.h" >}}

## Xóa Hạn Chế Chỉ Đọc

Nếu bạn không muốn người dùng mở tài liệu của mình dưới dạng chỉ đọc, bạn chỉ cần đặt thuộc tính **ReadOnlyRecommened** thành *false* hoặc chọn **ProtectionType** là **NoProtection**.

Ví dụ mã sau đây cho thấy cách xóa quyền truy cập chỉ đọc cho tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.h" >}}
