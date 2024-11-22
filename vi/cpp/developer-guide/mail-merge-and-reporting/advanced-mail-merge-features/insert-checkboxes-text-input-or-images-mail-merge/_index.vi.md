---
title: Chèn CheckboxEs, Nhập Văn bản Hoặc Hình ảnh trong Mail Merge
second_title: Aspose.Words cho C++
articleTitle: Chèn CheckboxEs, Nhập Văn bản hoặc Hình ảnh
linktitle: Chèn CheckboxEs, Nhập Văn bản hoặc Hình ảnh
description: "Chèn hộp kiểm hoặc trường nhập văn bản trong Mail Merge sử dụng C++. Cũng chèn hình ảnh từ Cơ sở dữ liệu trong Mail Merge trong C++."
type: docs
weight: 40
url: /vi/cpp/insert-checkboxes-text-input-or-images-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Công cụ hợp nhất lấy một tài liệu làm đầu vào, tìm kiếm `MERGEFIELD` các trường trong đó và thay thế chúng bằng dữ liệu thu được từ nguồn dữ liệu. Thông thường, văn bản thuần túy và HTML được chèn vào, nhưng Aspose.Words người dùng cũng có thể tạo một tài liệu xử lý các tình huống bất thường hơn cho Mail Merge lĩnh vực.

Mạnh mẽ Aspose.Words chức năng cho phép bạn mở rộng Mail Merge quy trình:

- chèn các hộp kiểm và các trường biểu mẫu nhập văn bản vào tài liệu trong một mail merge
- chèn hình ảnh từ bất kỳ bộ nhớ tùy chỉnh nào (tệp, BLOB lĩnh vực, vv)

## Chèn CheckboxEs Và Nhập Văn bản trong Mail Merge

Đôi khi cần phải thực hiện một Mail Merge hoạt động để không văn bản được thay thế trong trường hợp nhất, nhưng một hộp kiểm hoặc trường nhập văn bản. Mặc dù đây không phải là kịch bản phổ biến nhất, nhưng nó rất tiện dụng cho một số nhiệm vụ.

Ảnh chụp màn hình Sau của Tài liệu Word hiển thị một mẫu với các trường hợp nhất:

<img src="insert-checkboxes-html-or-images-during-mail-merge-1.jpeg" alt="insert-checkboxes-or-images-mail-merge-aspose-words" style="width:600px"/>

Ảnh chụp màn Hình Của Tài Liệu Word bên dưới hiển thị tài liệu đã được tạo:

<img src="insert-checkboxes-html-or-images-during-mail-merge-2.png" alt="insert-checkboxes-html-or-images-mail-merge-aspose-words" style="width:600px"/>

{{% alert color="primary" %}}

Lưu ý rằng một số trường đã được thay thế bằng văn bản thuần túy, một số trường đã được thay thế bằng các trường biểu mẫu hộp kiểm và `Subject` trường đã được thay thế bằng trường nhập văn bản.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chèn các hộp kiểm và các trường văn bản đầu vào vào tài liệu trong một mail merge:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-HandleMergeField.cpp" >}}

## Chèn Hình ảnh trong Mail Merge

Khi thực hiện một Mail Merge hoạt động, bạn có thể chèn hình ảnh từ cơ sở dữ liệu vào tài liệu bằng hình ảnh đặc biệt Mail Merge lĩnh vực. Hình ảnh Mail Merge trường là một trường hợp nhất Có Tên Hình Ảnh:MyFieldName.

### Chèn Hình ảnh từ Cơ sở Dữ liệu

Trong một mail merge, khi một hình ảnh Mail Merge trường gặp phải trong một tài liệu, [FieldMergingCallback](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_fieldmergingcallback/) sự kiện bị sa thải. Bạn có thể trả lời sự kiện này để trả về tên tệp, luồng hoặc đối tượng hình ảnh cho Mail Merge động cơ để nó có thể được chèn vào tài liệu.

Ví dụ mã sau đây cho thấy cách chèn hình ảnh được lưu trữ trong cơ sở dữ liệu BLOB trường vào một báo cáo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageInsert.cpp" >}}

### Đặt Thuộc tính Hình ảnh trong Mail Merge

Trong khi hợp nhất trường hợp nhất hình ảnh, đôi khi bạn có thể cần kiểm soát các thuộc tính hình ảnh khác nhau, chẳng hạn như [WrapType](https://reference.aspose.com/words/cpp/aspose.words.drawing/wraptype/).

Hiện tại, sử dụng [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/class/aspose.words.mail_merging.image_field_merging_args) bạn chỉ có thể đặt thuộc tính chiều rộng hoặc chiều cao hình ảnh, tương ứng. Để khắc phục vấn đề này, Aspose.Words cung cấp [Shape](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/get_shape/) tài sản, tạo điều kiện để có toàn quyền kiểm soát hình ảnh được chèn hoặc bất kỳ hình dạng nào khác.

Ví dụ mã sau đây cho thấy cách đặt các thuộc tính hình ảnh khác nhau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-MailMergeImageField.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-ImageFieldMergingHandler.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeImageField-DataSourceRoot.cpp" >}}
