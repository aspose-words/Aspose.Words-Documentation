---
title: Mail Merge Mẫu trong C++
second_title: Aspose.Words cho C++
articleTitle: Mail Merge Mẫu
linktitle: Mail Merge Mẫu
type: docs
description: "Tạo một mail merge mẫu để xác định nội dung cố định trong tài liệu đầu ra, sau đó tạo tài liệu hợp nhất bằng các trường hợp nhất."
keywords: "create mail merge template с++"
weight: 10
url: /vi/cpp/mail-merge-template/
timestamp: 2024-01-31-14-23-37
---

Người ta thường sử dụng mẫu hợp nhất làm tài liệu cơ sở cho một mail merge hoạt động hoặc nếu nó là một đơn giản mail merge hoặc mail merge với các khu vực. Mail merge với các khu vực mạnh mẽ và phổ biến hơn đơn giản mail merge. Đơn giản mail merge được coi là một trường hợp cụ thể của mail merge với các khu vực mà khu vực là toàn bộ tài liệu. Tất cả được giải thích trong bài viết tiếp theo " Các Loại Mail Merge Hoạt động" chi tiết hơn.

Mẫu đảm bảo rằng văn bản trong tài liệu được hợp nhất đầu ra được định dạng chính xác và mail merge hoạt động đảm bảo rằng văn bản từ nguồn dữ liệu được nhập chính xác vào mẫu hợp nhất.

Aspose.Words cung cấp khả năng tạo ra một mail merge mẫu để xác định nội dung cố định và sau đó tạo tài liệu hợp nhất bằng các trường hợp nhất. Do đó, mẫu hợp nhất sẽ có văn bản cần thiết, giống nhau trong tất cả các tài liệu đầu ra và các trường hợp nhất để điền vào nội dung thay đổi. Do đó, thông tin từ nguồn dữ liệu được chỉ định sẽ được thêm vào mẫu hợp nhất thông qua các trường này trong quá trình tạo tài liệu được hợp nhất.

## A là gì Mail Merge Mẫu

A mail merge template là một tài liệu được cá nhân hóa có chứa dữ liệu cố định và các trường được hợp nhất mà bạn muốn có văn bản biến. Một mẫu hợp nhất có thể ở bất kỳ định dạng nào hỗ trợ các trường, ví dụ, DOC, DOCX, DOT, DOTX, RTF. Ngoài ra, bạn cũng có thể sử dụng mustache mẫu được giải thích trong bài viết "Mustache Cú pháp mẫu" chi tiết hơn.

Bạn có thể tạo một mẫu hợp nhất để trở thành mô hình cho các tài liệu mới và nó phải bao gồm văn bản chính cần giống nhau cho mỗi phiên bản của tài liệu được hợp nhất. Thêm các trường hợp nhất bên trong mẫu sẽ đại diện cho dữ liệu cá nhân hóa như tên hoặc địa chỉ được tìm nạp từ nguồn dữ liệu. A mail merge thao tác sẽ tự động chèn dữ liệu cá nhân hóa từ nguồn dữ liệu của bạn vào tài liệu mẫu hợp nhất của bạn.

Ngoài ra, bạn có thể thêm một mail merge khu vực trong mẫu của bạn bằng cách chèn hai mail merge các trường để đánh dấu phần đầu và phần cuối của vùng thư. Bài viết tiếp theo " Các Loại Mail Merge Hoạt động " giải thích chi tiết hơn.

## Tạo một Mail Merge Mẫu

Bạn có thể tạo một mẫu và thêm các trường hợp nhất cụ thể vào nó, sẽ được thay thế bằng các giá trị từ nguồn dữ liệu theo cách thủ công, ví dụ: sử dụng Microsoft Word, hoặc sử dụng theo chương trình Aspose.Words. Trong bài viết này, chúng ta sẽ xem xét cách lập trình tạo mẫu.

Sử dụng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) lớp để tạo mẫu hợp nhất cần thiết bằng cách sử dụng Aspose.Words. Bạn có thể bao gồm một văn bản, một trường hợp nhất và ngắt dòng trong một mẫu như vậy bằng cách sử dụng [InsertTextInput](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), và [InsertParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertparagraph/) phương pháp.

Ví dụ mã sau đây cho thấy cách tạo mail merge mẫu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeTemplate-CreateMailMergeTemplate.cpp" >}}

Hình dưới đây cho thấy mẫu đã tạo:

<img src="mail-merge-template-1.png" alt="mail_merge_template-aspose-words-cpp" style="width:650px"/>

## Tùy chỉnh a Mail Merge Thuộc Tính Mẫu

Aspose.Words cho phép bạn tùy chỉnh mẫu của mình thông qua nhiều thuộc tính. Tùy chỉnh mẫu sẽ được mô tả dưới đây thông qua một ví dụ về việc tùy chỉnh một số thuộc tính của hình ảnh và văn bản.

### Tùy Chỉnh Thuộc Tính Hình Ảnh

Bạn có thể chỉ định các thuộc tính hình ảnh bằng cách sử dụng [ImageFieldMergingArgs](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imagefieldmergingargs/) lớp học.

Ví dụ mã sau đây cho thấy cách chỉ định tên tệp hình ảnh và kích thước hình ảnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-ImageFieldMerging.cpp" >}}

### Tùy Chỉnh Thuộc Tính Văn Bản

Bạn có thể sử dụng [Text](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/fieldmergingargs/get_text/) thuộc tính để chèn văn bản vào tài liệu cho trường hợp nhất hiện tại. Ngoài ra, bạn có thể thay đổi định dạng văn bản và đoạn văn bên trong mẫu của mình bằng cách sử dụng [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) và [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) lớp học. Bạn có thể xử lý văn bản được chèn trước hoặc sau trường hợp nhất bằng cách sử dụng [TextBefore](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textbefore/) và [TextAfter](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_textafter/) các thuộc tính được bao gồm trong [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) lớp học.

Ví dụ mã sau đây cho thấy cách chèn Hộp Kiểm hoặc HTML trong mail merge hoạt động:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeFormFields-MailMergeFormFields.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

Bạn cũng có thể kiểm tra việc thực hiện `HandleMergeField` lớp từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Xem Thêm

* Để biết thêm chi tiết về cách tạo mẫu trong Microsoft Word thủ công, vui lòng kiểm tra [Tạo Một Mẫu](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) bài viết trong Microsoft Tài liệu
