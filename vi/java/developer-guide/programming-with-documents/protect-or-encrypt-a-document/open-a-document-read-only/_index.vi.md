---
title: Mở Tài liệu Đọc duy nhất trong Java
second_title: Aspose.Words cho Java
articleTitle: Mở Tài liệu Đọc Một Mình
linktitle: Mở Tài liệu Đọc Một Mình
description: "Làm cho tài liệu của bạn chỉ đọc để nội dung có thể được sao chép hoặc đọc nhưng không được sửa đổi bằng Java."
type: docs
weight: 10
url: /vi/java/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể có một tài liệu cần được xem lại nhưng bạn không muốn người xem sửa đổi nội dung của bạn ngẫu nhiên. Aspose.Words cho phép bạn đặt quyền đọc tài liệu của bạn chỉ để nội dung có thể sao chép hoặc đọc, nhưng không thể thay đổi. Điều này sẽ ngăn nội dung bị xóa hoặc thêm vào tài liệu của bạn.

{{% alert color="primary" %}}

Áp dụng tùy chọn đọc - chỉ vào tài liệu của bạn không ngăn cản ai đó tạo một bản sao mới của nó và lưu với một cái tên khác.

{{% /alert %}}

Bài viết giải thích cách để một tài liệu chỉ đọc.

## Đặt Tài liệu Là Chỉ Đọc

Aspose.Words có lớp công cộng [WriteProtection](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/) chỉ định các cài đặt bảo vệ ghi cho một tài liệu. Bạn không tạo các instance của lớp này trực tiếp.

Bảo vệ ghi có thể hiển thị xem tác giả đã khuyến nghị mở tài liệu như chỉ đọc và/hoặc yêu cầu mật khẩu để sửa đổi tài liệu.

Aspose.Words cho phép bạn làm cho một tài liệu chỉ đọc để hạn chế chỉnh sửa bằng cách sử dụng thuộc tính [ReadOnlyRecommended](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#getReadOnlyRecommended) và phương pháp [SetPassword](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#setPassword-java.lang.String).

{{% alert color="primary" %}}

Trong Microsoft Word bạn có thể tạo một tài liệu chỉ đọc theo cách tương tự bằng cách sử dụng cả hai:

* "Luôn mở đọc-chỉ" (Tệp → Thông tin → Bảo vệ tài liệu)
* Mật khẩu để sửa đổi " (Lưu dưới dạng → Công cụ → Tùy chọn chung → Mật khẩu)

{{% /alert %}}

{{% alert color="primary" %}}

Người dùng cũng có thể hạn chế chỉnh sửa tài liệu bằng cách chọn [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) như **ReadOnly**, nhưng đây là một tính năng cung cấp các khả năng bảo vệ nâng cao hơn nữa. Có một hàm như vậy trong Microsoft Word, tương ứng nó được thực hiện ở Aspose.Words.

**ProtectionType** sẽ được mô tả chi tiết trong một trong những bài sau đây – "Hạn chế Chỉnh sửa Tài liệu"".

{{% /alert %}}

Tính **ReadOnlyRecommended** thuộc tính được bảo mật bằng mật khẩu, vì vậy nếu bạn không đặt mật khẩu trước khi áp dụng thuộc tính **ReadOnlyRecommended**, sau đó người dùng khác có thể mở đơn giản tài liệu như nó là không được bảo vệ. Bạn truy cập vào cài đặt bảo vệ tài liệu và đặt mật khẩu bảo vệ ghi qua phương thức **SetPassword**.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu đang được đặt chỉ là một thuộc tính trong tài liệu có thể xóa nếu các thuộc tính của tài liệu được truy cập. Theo đó mật khẩu như vậy không phải là một sự đảm bảo về an ninh tài liệu.

{{% /alert %}}

Nếu bạn cần kiểm tra xem một tài liệu có mật khẩu bảo vệ ghi hay không, giới hạn nó từ chỉnh sửa, bạn có thể sử dụng [IsWriteProtected](https://reference.aspose.com/words/java/com.aspose.words/writeprotection/#isWriteProtected) thuộc tính.

Ví dụ sau cho thấy cách để làm cho một tài liệu không thể chỉnh sửa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-ReadOnlyProtection.java" >}}

## Loại bỏ hạn chế chỉ đọc

Nếu bạn không muốn người dùng mở tài liệu của bạn ở chế độ chỉ đọc, bạn có thể đơn giản đặt thuộc tính **ReadOnlyRecommened** thành *false* hoặc chọn **ProtectionType** làm **NoProtection**.

Mã sau cho thấy cách loại bỏ quyền truy cập đọc-chỉ cho một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveReadOnlyRestriction.java" >}}
