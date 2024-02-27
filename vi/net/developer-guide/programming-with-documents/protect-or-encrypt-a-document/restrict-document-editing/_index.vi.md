---
title: Hạn chế chỉnh sửa tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Hạn chế chỉnh sửa tài liệu
linktitle: Hạn chế chỉnh sửa tài liệu
description: "Hạn chế chỉnh sửa tài liệu bằng cách đặt loại hạn chế bằng C#. Bạn cũng có thể loại bỏ bảo vệ và tạo các vùng có thể chỉnh sửa không hạn chế."
type: docs
weight: 30
url: /vi/net/restrict-document-editing/
---

Đôi khi bạn có thể cần giới hạn khả năng chỉnh sửa tài liệu và chỉ cho phép một số hành động nhất định với tài liệu đó. Điều này có thể hữu ích để ngăn người khác chỉnh sửa thông tin nhạy cảm và bí mật trong tài liệu của bạn.

Aspose.Words cho phép bạn hạn chế chỉnh sửa tài liệu bằng cách đặt loại hạn chế. Ngoài ra, Aspose.Words cũng cho phép bạn chỉ định cài đặt bảo vệ ghi cho tài liệu.

Bài viết này giải thích cách sử dụng Aspose.Words để chọn loại hạn chế, cách thêm hoặc xóa bảo vệ và cách tạo các vùng có thể chỉnh sửa không bị hạn chế.

## Chọn loại hạn chế chỉnh sửa

Aspose.Words cho phép bạn kiểm soát cách bạn hạn chế nội dung bằng tham số liệt kê [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/). Điều này sẽ cho phép bạn chọn một loại bảo vệ chính xác như sau:

* Chỉ cho phép nhận xét
* AllowOnlyFormFields
* AllowOnlyRevisions
* Chỉ đọc
* Không có bảo vệ

Tất cả các loại đều được bảo mật bằng mật khẩu và nếu mật khẩu này không được nhập chính xác, người dùng sẽ không thể thay đổi nội dung tài liệu của bạn một cách hợp pháp. Do đó, nếu tài liệu của bạn được trả lại cho bạn mà không yêu cầu cung cấp mật khẩu cần thiết thì đây là dấu hiệu cho thấy có gì đó không ổn.

Nếu bạn không đặt mật khẩu khi chọn loại bảo mật, những người dùng khác có thể đơn giản bỏ qua việc bảo vệ tài liệu của bạn.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu đang được đặt chỉ là một thuộc tính trong tài liệu có thể bị xóa nếu thuộc tính tài liệu được truy cập. Theo đó, mật khẩu như vậy không phải là sự đảm bảo cho tính bảo mật của tài liệu. Phương pháp [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) chỉ cho thấy điều đó.

{{% /alert %}}

## Thêm bảo vệ tài liệu

Việc thêm tính năng bảo vệ vào tài liệu của bạn là một quy trình đơn giản vì tất cả những gì bạn cần làm là áp dụng một trong các phương pháp bảo vệ được nêu chi tiết trong phần này.

Aspose.Words cho phép bạn bảo vệ tài liệu của mình khỏi những thay đổi bằng phương pháp [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/). Phương pháp này không phải là tính năng bảo mật và không mã hóa tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể hạn chế chỉnh sửa theo cách tương tự bằng cách sử dụng cả hai:

* Hạn chế chỉnh sửa (Tệp → Thông tin → Bảo vệ tài liệu)
* Tính năng thay thế – "Hạn chế chỉnh sửa" (Xem lại → Bảo vệ → Hạn chế chỉnh sửa)

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách thêm bảo vệ bằng mật khẩu vào tài liệu của bạn:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Ví dụ về mã sau đây cho thấy cách hạn chế chỉnh sửa trong tài liệu để chỉ có thể chỉnh sửa trong các trường biểu mẫu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Xóa bảo vệ tài liệu

Aspose.Words cho phép bạn loại bỏ tính năng bảo vệ khỏi tài liệu bằng cách sửa đổi tài liệu đơn giản và trực tiếp. Bạn có thể xóa tính năng bảo vệ tài liệu mà không cần biết mật khẩu thực tế hoặc cung cấp mật khẩu chính xác để mở khóa tài liệu bằng phương pháp [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/). Cả hai cách loại bỏ đều không có sự khác biệt.

Ví dụ về mã sau đây cho biết cách loại bỏ tính năng bảo vệ khỏi tài liệu của bạn:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Chỉ định các khu vực có thể chỉnh sửa không hạn chế

Bạn có thể hạn chế chỉnh sửa tài liệu của mình và đồng thời cho phép thay đổi các phần đã chọn của tài liệu. Vì vậy, bất kỳ ai mở tài liệu của bạn đều có thể truy cập những phần không bị hạn chế này và thực hiện các thay đổi đối với nội dung.

Aspose.Words cho phép bạn đánh dấu các phần có thể thay đổi trong tài liệu của mình bằng phương pháp [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) và [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/).

Ví dụ về mã sau đây cho thấy cách đánh dấu toàn bộ tài liệu là chỉ đọc và chỉ định các vùng có thể chỉnh sửa trong đó:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Bạn cũng có thể chọn các hạn chế chỉnh sửa tài liệu khác nhau cho các phần khác nhau.

Ví dụ về mã sau đây cho biết cách thêm hạn chế cho toàn bộ tài liệu và sau đó xóa hạn chế cho một trong các phần:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
