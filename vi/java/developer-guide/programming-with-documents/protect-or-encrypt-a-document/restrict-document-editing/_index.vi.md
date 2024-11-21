---
title: Chỉ định chế độ chỉnh sửa tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Giới hạn Chỉnh sửa Tài liệu
linktitle: Giới hạn Chỉnh sửa Tài liệu
description: "Hạn chế chỉnh sửa một tài liệu bằng cách đặt loại hạn chế. Bạn cũng có thể xóa bảo vệ và tạo khu vực không giới hạn để chỉnh sửa bằng cách sử dụng Java."
type: docs
weight: 30
url: /vi/java/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể cần hạn chế khả năng chỉnh sửa một tài liệu và chỉ cho phép thực hiện một số hành động với nó. Điều này có thể hữu ích để ngăn người khác chỉnh sửa thông tin nhạy cảm và bí mật trong tài liệu của bạn.

Aspose.Words cho phép bạn hạn chế chỉnh sửa một tài liệu bằng cách đặt một loại hạn chế. Ngoài ra, Aspose.Words cũng cho phép bạn thiết lập các cài đặt bảo vệ ghi cho một tài liệu.

Bài viết này giải thích cách sử dụng Aspose.Words để chọn một kiểu hạn chế, cách thêm hoặc xóa bảo vệ và cách làm cho những vùng không bị hạn chế có thể chỉnh sửa.

## Chọn loại hạn chế chỉnh sửa

Aspose.Words cho phép bạn kiểm soát cách bạn hạn chế nội dung bằng tham số " [ProtectionType](https://reference.aspose.com/words/java/com.aspose.words/protectiontype/) " của enum. Điều này cho phép bạn chọn một loại bảo vệ chính xác như sau:

*AllowOnlyComments
* AllowOnlyFormFields
* Cho phép Revisions
* Đọc-chỉ
* Không Bảo Vệ

Tất cả loại là bảo mật bằng mật khẩu, và nếu mật khẩu này không được nhập chính xác, một người dùng sẽ không thể thay đổi hợp pháp nội dung của tài liệu của bạn. Vậy nếu tài liệu của bạn được trả lại cho bạn mà không yêu cầu cung cấp mật khẩu cần thiết thì đó là dấu hiệu cho thấy có điều gì đó sai.

Nếu bạn không đặt mật khẩu khi chọn kiểu bảo mật, người dùng khác có thể bỏ qua việc bảo vệ tài liệu của bạn.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu đang được thiết lập chỉ là một thuộc tính trong một tài liệu có thể bị xóa nếu các thuộc tính của tài liệu được truy cập. Theo đó mật khẩu này không đảm bảo an toàn tài liệu. Phương pháp [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect) chỉ hiển thị điều đó.

{{% /alert %}}

## Thêm Bảo vệ Tài liệu

Thêm bảo vệ vào tài liệu của bạn là một quá trình đơn giản, bởi tất cả những gì bạn cần làm đó là áp dụng một trong các phương pháp bảo vệ được nêu chi tiết trong phần này.

Aspose.Words cho phép bạn bảo vệ tài liệu của mình khỏi những thay đổi bằng cách sử dụng phương pháp [Protect](https://reference.aspose.com/words/java/com.aspose.words/document/#protect-int). Phương pháp này không phải là tính năng bảo mật và không mã hóa tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể hạn chế chỉnh sửa theo cách tương tự bằng cách sử dụng cả:

* Hạn chế Chỉnh sửa (Tập tin → Thông tin → Bảo vệ Tài liệu)
* Tính năng thay thế – "Hạn chế Sửa" (Đánh giá → Bảo vệ → Hạn chế Chỉnh sửa)

{{% /alert %}}

Mẫu mã sau cho biết cách thêm bảo vệ mật khẩu cho tài liệu của bạn:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-PasswordProtection.java" >}}

Ví dụ về mã sau cho thấy cách hạn chế chỉnh sửa trong tài liệu để chỉ có thể chỉnh sửa trong trường biểu mẫu là khả thi":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-AllowOnlyFormFieldsProtect.java" >}}

## Loại bỏ Bảo vệ Tài liệu

Aspose.Words cho phép bạn loại bỏ sự bảo vệ từ một tài liệu với việc sửa đổi đơn giản và trực tiếp. Bạn có thể hoặc gỡ bỏ bảo vệ tài liệu mà không biết mật khẩu thực tế hoặc cung cấp mật khẩu chính xác để mở khóa tài liệu bằng phương pháp [Unprotect](https://reference.aspose.com/words/java/com.aspose.words/document/#unprotect). Cả hai cách loại bỏ đều không có khác biệt nào.

Mã ví dụ sau cho thấy cách để loại bỏ bảo vệ từ tài liệu của bạn:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-RemoveDocumentProtection.java" >}}

## Chỉ định Vùng Chỉnh sửa Không Giới hạn

Bạn có thể hạn chế việc chỉnh sửa tài liệu của bạn và đồng thời cho phép thay đổi vào những phần được chọn của nó. Vì vậy, ai mở tài liệu của bạn sẽ có thể truy cập những phần không giới hạn này và thực hiện thay đổi vào nội dung.

Aspose.Words cho phép bạn đánh dấu các phần có thể thay đổi trong tài liệu của bạn bằng phương pháp [StartEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startEditableRange) và [EndEditableRange](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endEditableRange)

Ví dụ mã sau cho thấy cách đánh dấu toàn bộ tài liệu là chỉ đọc và chỉ định các vùng có thể chỉnh sửa trong nó:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedEditableRegions.java" >}}

Bạn cũng có thể chọn những giới hạn chỉnh sửa tài liệu khác nhau cho các phần khác nhau.

Mẫu mã sau cho thấy cách thêm một hạn chế cho toàn bộ tài liệu và sau đó loại bỏ hạn chế cho một trong các phần:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ProtectDocument-UnrestrictedSection.java" >}}
