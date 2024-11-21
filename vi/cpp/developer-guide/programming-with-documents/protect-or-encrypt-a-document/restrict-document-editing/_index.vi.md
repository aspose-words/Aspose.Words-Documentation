---
title: Hạn Chế Chỉnh Sửa Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Hạn Chế Chỉnh Sửa Tài Liệu
linktitle: Hạn Chế Chỉnh Sửa Tài Liệu
description: "Hạn chế chỉnh sửa tài liệu bằng cách đặt loại hạn chế bằng C++. Bạn cũng có thể xóa bảo vệ và tạo các vùng có thể chỉnh sửa không hạn chế."
type: docs
weight: 30
url: /vi/cpp/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể cần hạn chế khả năng chỉnh sửa tài liệu và chỉ cho phép một số hành động nhất định với nó. Điều này có thể hữu ích để ngăn người khác chỉnh sửa thông tin nhạy cảm và bí mật trong tài liệu của bạn.

Aspose.Words cho phép bạn hạn chế chỉnh sửa tài liệu bằng cách đặt loại hạn chế. Ngoài ra, Aspose.Words cũng cho phép bạn chỉ định cài đặt bảo vệ ghi cho tài liệu.

Bài viết này giải thích cách sử dụng Aspose.Words để chọn loại hạn chế, cách thêm hoặc xóa bảo vệ và cách tạo các vùng có thể chỉnh sửa không hạn chế.

## Chọn Loại Hạn Chế Chỉnh Sửa

Aspose.Words cho phép bạn kiểm soát cách bạn hạn chế nội dung bằng cách sử dụng tham số liệt kê [ProtectionType](https://reference.aspose.com/words/cpp/aspose.words/protectiontype/). Điều này sẽ cho phép bạn chọn một loại bảo vệ chính xác như sau:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Tất cả các loại đều được bảo mật bằng mật khẩu và nếu mật khẩu này không được nhập chính xác, người dùng sẽ không thể thay đổi hợp pháp nội dung tài liệu của bạn. Do đó, nếu tài liệu của bạn được trả lại cho bạn mà không có yêu cầu cung cấp mật khẩu cần thiết, đây là dấu hiệu cho thấy có điều gì đó không ổn.

Nếu bạn không đặt mật khẩu khi chọn loại bảo mật, những người dùng khác có thể chỉ cần bỏ qua việc bảo vệ tài liệu của bạn.

{{% alert color="primary" %}}

Lưu ý rằng mật khẩu được đặt chỉ là một thuộc tính trong tài liệu có thể bị xóa nếu các thuộc tính tài liệu được truy cập. Theo đó, mật khẩu như vậy không phải là sự đảm bảo về bảo mật tài liệu. Phương thức [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/) chỉ hiển thị điều đó.

{{% /alert %}}

## Thêm Bảo Vệ Tài Liệu

Thêm bảo vệ vào tài liệu của bạn là một quá trình đơn giản, vì tất cả những gì bạn cần làm là áp dụng một trong các phương pháp bảo vệ được nêu chi tiết trong phần này.

Aspose.Words cho phép bạn bảo vệ tài liệu của mình khỏi các thay đổi bằng phương thức [Protect](https://reference.aspose.com/words/cpp/aspose.words/document/protect/). Phương pháp này không phải là một tính năng bảo mật và không mã hóa tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể hạn chế chỉnh sửa theo cách tương tự bằng cách sử dụng cả hai:

* Hạn Chế Chỉnh Sửa (Tệp → Thông Tin → Bảo Vệ Tài Liệu)
* Tính năng thay thế- "Hạn Chế Chỉnh Sửa" (Xem Lại → Bảo Vệ → Hạn Chế Chỉnh Sửa)

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm bảo vệ mật khẩu vào tài liệu của bạn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.h" >}}

Ví dụ mã sau đây cho thấy cách hạn chế chỉnh sửa trong tài liệu vì vậy chỉ có thể chỉnh sửa trong các trường biểu mẫu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.h" >}}

## Xóa Bảo Vệ Tài Liệu

Aspose.Words cho phép bạn xóa bảo vệ khỏi tài liệu với sửa đổi tài liệu đơn giản và trực tiếp. Bạn có thể xóa bảo vệ tài liệu mà không cần biết mật khẩu thực tế hoặc cung cấp mật khẩu chính xác để mở khóa tài liệu bằng cách sử dụng phương thức [Unprotect](https://reference.aspose.com/words/cpp/aspose.words/document/unprotect/). Cả hai cách loại bỏ không có sự khác biệt.

Ví dụ mã sau đây cho thấy cách xóa bảo vệ khỏi tài liệu của bạn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.h" >}}

## Chỉ Định Các Khu Vực Có Thể Chỉnh Sửa Không Hạn Chế

Bạn có thể hạn chế chỉnh sửa tài liệu của mình và đồng thời cho phép thay đổi các phần đã chọn của tài liệu đó. Vì vậy, bất kỳ ai mở tài liệu của bạn sẽ có thể truy cập các phần không hạn chế này và thực hiện các thay đổi đối với nội dung.

Aspose.Words cho phép bạn đánh dấu các phần có thể thay đổi trong tài liệu của mình bằng các phương thức [StartEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starteditablerange/) và [EndEditableRange](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endeditablerange/).

Ví dụ mã sau đây cho thấy cách đánh dấu toàn bộ tài liệu là chỉ đọc và chỉ định các vùng có thể chỉnh sửa trong đó:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.h" >}}

Bạn cũng có thể chọn các hạn chế chỉnh sửa tài liệu khác nhau cho các phần khác nhau.

Ví dụ mã sau đây cho thấy cách thêm hạn chế cho toàn bộ tài liệu, sau đó xóa hạn chế cho một trong các phần:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.h" >}}
