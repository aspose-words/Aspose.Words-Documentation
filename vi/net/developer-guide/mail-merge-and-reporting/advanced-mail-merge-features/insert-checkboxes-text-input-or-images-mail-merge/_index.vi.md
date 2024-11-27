---
title: Chèn Checkbox Es, Nhập Văn bản hoặc Hình ảnh trong Mail Merge
second_title: Aspose.Words cho .NET
articleTitle: Chèn Checkboxes, Nhập Văn bản hoặc Hình ảnh
linktitle: Chèn Checkboxes, Nhập Văn bản hoặc Hình ảnh
description: "Chèn checkbox es hoặc các trường nhập văn bản trong Mail Merge sử dụng C#. Cũng chèn hình ảnh từ Cơ sở dữ liệu trong Mail Merge trong C#."
type: docs
weight: 40
url: /vi/net/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Công cụ hợp nhất lấy một tài liệu làm đầu vào, tìm kiếm các trường `MERGEFIELD` trong đó và thay thế chúng bằng dữ liệu thu được từ nguồn dữ liệu. Thông thường, văn bản thuần túy và HTML được chèn, nhưng Aspose.Words người dùng cũng có thể tạo một tài liệu xử lý các tình huống bất thường hơn cho các trường Mail Merge.

Chức năng Aspose.Words mạnh mẽ cho phép bạn mở rộng quy trình Mail Merge:

- chèn checkbox es và các trường biểu mẫu nhập văn bản vào tài liệu trong mail merge
- chèn hình ảnh từ bất kỳ bộ nhớ tùy chỉnh nào (tệp, trường BLOB, v. v.)

## Chèn Checkbox Es Và Nhập Văn bản trong Mail Merge

Đôi khi cần phải thực hiện thao tác Mail Merge để không phải văn bản được thay thế trong trường hợp nhất, mà là trường nhập checkbox hoặc văn bản. Mặc dù đây không phải là kịch bản phổ biến nhất, nhưng nó rất tiện dụng cho một số nhiệm vụ.

Ảnh chụp màn hình sau của tài liệu Word hiển thị một mẫu với các trường hợp nhất:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Ảnh chụp màn hình này của tài liệu Word bên dưới hiển thị tài liệu đã được tạo:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Lưu ý rằng một số trường đã được thay thế bằng văn bản thuần túy, một số trường đã được thay thế bằng trường biểu mẫu checkbox và trường `Subject` đã được thay thế bằng trường nhập văn bản.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chèn checkbox es và nhập các trường văn bản vào tài liệu trong mail merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-field.cs" >}}

## Chèn Hình ảnh trong Mail Merge

Khi thực hiện thao tác Mail Merge, bạn có thể chèn hình ảnh từ cơ sở dữ liệu vào tài liệu bằng các trường hình ảnh Mail Merge đặc biệt. Trường image Mail Merge là một trường hợp nhất Có Tên Image: MyFieldName.

### Chèn Hình ảnh từ Cơ sở Dữ liệu

Trong một mail merge, khi một trường hình ảnh Mail Merge gặp phải trong một tài liệu, sự kiện [FieldMergingCallback](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/fieldmergingcallback/) được kích hoạt. Bạn có thể trả lời sự kiện này để trả về tên tệp, luồng hoặc đối tượng hình ảnh cho công cụ Mail Merge để nó có thể được chèn vào tài liệu.

Ví dụ mã sau đây cho thấy cách chèn hình ảnh được lưu trữ trong trường BLOB cơ sở dữ liệu vào báo cáo:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-from-blob.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "handle-merge-image-field-from-blob.cs" >}}

### Đặt Thuộc Tính Hình ảnh trong Mail Merge

Trong khi hợp nhất trường hợp nhất hình ảnh, đôi khi bạn có thể cần kiểm soát các thuộc tính hình ảnh khác nhau, chẳng hạn như [WrapType](https://reference.aspose.com/words/net/aspose.words.drawing/wraptype/).

Hiện tại, sử dụng [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/), bạn chỉ có thể đặt thuộc tính chiều rộng hoặc chiều cao hình ảnh tương ứng. Để khắc phục vấn đề này, Aspose.Words cung cấp thuộc tính [Shape](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/shape/), tạo điều kiện để có toàn quyền kiểm soát hình ảnh được chèn hoặc bất kỳ hình dạng nào khác.

Ví dụ mã sau đây cho thấy cách đặt các thuộc tính hình ảnh khác nhau:

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "mail-merge-image-field.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "image-field-merging-handler.cs" >}}

{{< gist "aspose-words-gists" "8a66b5cea0f9f8b862c092c9b93ccb3c" "data-source-root.cs" >}}
