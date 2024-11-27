---
title: Mail Merge Mẫu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Mail Merge Mẫu
linktitle: Mail Merge Mẫu
type: docs
description: "Tạo mẫu Mail Merge để xác định nội dung cố định trong tài liệu đầu ra, sau đó tạo tài liệu hợp nhất bằng cách sử dụng các trường hợp nhất trong C#."
keywords: "create Mail Merge template с#"
weight: 10
url: /vi/net/mail-merge-template/
timestamp: 2024-07-11-08-07-06
---

Người ta thường sử dụng mẫu hợp nhất làm tài liệu cơ sở cho thao tác Mail Merge nếu nó đơn giản Mail Merge hoặc Mail Merge với các vùng. Mail merge với các khu vực mạnh mẽ và phổ biến hơn mail merge đơn giản. Đơn giản Mail Merge được coi là một trường hợp cụ thể của Mail Merge với các vùng trong đó khu vực là toàn bộ tài liệu. Tất cả được giải thích trong bài viết tiếp theo "Các Loại Hoạt động Mail Merge" chi tiết hơn.

Mẫu đảm bảo rằng văn bản trong tài liệu được hợp nhất đầu ra được định dạng chính xác và thao tác Mail Merge đảm bảo rằng văn bản từ nguồn dữ liệu được nhập chính xác vào mẫu hợp nhất.

Aspose.Words cung cấp khả năng tạo mẫu Mail Merge để xác định nội dung cố định và sau đó tạo tài liệu hợp nhất bằng các trường hợp nhất. Do đó, mẫu hợp nhất sẽ có văn bản cần thiết, giống nhau trong tất cả các tài liệu đầu ra và các trường hợp nhất để điền vào nội dung thay đổi. Do đó, thông tin từ nguồn dữ liệu được chỉ định sẽ được thêm vào mẫu hợp nhất thông qua các trường này trong quá trình tạo tài liệu được hợp nhất.

## Mẫu Mail Merge Là Gì

Mẫu Mail Merge là một tài liệu được cá nhân hóa có chứa dữ liệu cố định và các trường được hợp nhất mà bạn muốn có văn bản biến. Một mẫu hợp nhất có thể ở bất kỳ định dạng nào hỗ trợ các trường, ví dụ, DOC, DOCX, DOT, DOTX, RTF. Ngoài ra, bạn cũng có thể sử dụng mẫu mustache được giải thích trong bài viết "Cú pháp MẫuMustache" chi tiết hơn.

Bạn có thể tạo một mẫu hợp nhất để trở thành mô hình cho các tài liệu mới và nó phải bao gồm văn bản chính cần giống nhau cho mỗi phiên bản của tài liệu được hợp nhất. Thêm các trường hợp nhất bên trong mẫu sẽ đại diện cho dữ liệu cá nhân hóa như tên hoặc địa chỉ được tìm nạp từ nguồn dữ liệu. Thao tác Mail Merge sẽ tự động chèn dữ liệu cá nhân hóa từ nguồn dữ liệu của bạn vào tài liệu mẫu hợp nhất của bạn.

Ngoài ra, bạn có thể thêm vùng Mail Merge trong mẫu của mình bằng cách chèn hai trường Mail Merge để đánh dấu phần đầu và phần cuối của vùng thư. Bài viết tiếp theo" Các Loại Hoạt động Mail Merge " giải thích chi tiết hơn.

## Tạo mẫu Mail Merge

Bạn có thể tạo một mẫu và thêm các trường hợp nhất cụ thể vào nó, sẽ được thay thế bằng các giá trị từ nguồn dữ liệu theo cách thủ công, ví dụ: sử dụng Microsoft Word hoặc theo chương trình bằng Aspose.Words. Trong bài viết này, chúng ta sẽ xem xét cách lập trình tạo mẫu.

Sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) để tạo mẫu hợp nhất bắt buộc bằng Aspose.Words. Bạn có thể bao gồm một văn bản, một trường hợp nhất và ngắt dòng trong một mẫu như vậy bằng cách sử dụng các phương thức [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsetField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) và [InsertParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertparagraph/).

Ví dụ mã sau đây cho thấy cách tạo mẫu Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "create-mail-merge-template.cs" >}}

Hình dưới đây cho thấy mẫu đã tạo:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Tùy chỉnh Thuộc tính mẫu Mail Merge

Aspose.Words cho phép bạn tùy chỉnh mẫu của mình thông qua nhiều thuộc tính. Tùy chỉnh mẫu sẽ được mô tả dưới đây thông qua một ví dụ về việc tùy chỉnh một số thuộc tính của hình ảnh và văn bản.

### Tùy Chỉnh Thuộc Tính Hình Ảnh

Bạn có thể chỉ định các thuộc tính hình ảnh bằng cách sử dụng lớp [ImageFieldMergingArgs](https://reference.aspose.com/words/net/aspose.words.mailmerging/imagefieldmergingargs/). Lưu ý rằng bạn có thể chèn hình ảnh từ cơ sở dữ liệu như được mô tả trong [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L214).

Ví dụ mã sau đây cho thấy cách chỉ định tên tệp hình ảnh và kích thước hình ảnh:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "image-field-merging.cs" >}}

### Tùy Chỉnh Thuộc Tính Văn Bản

Bạn có thể sử dụng thuộc tính [Text](https://reference.aspose.com/words/net/aspose.words.mailmerging/fieldmergingargs/text/) để chèn văn bản vào tài liệu cho trường hợp nhất hiện tại. Ngoài ra, bạn có thể thay đổi định dạng văn bản và đoạn văn bên trong mẫu của mình bằng các lớp [Font](https://reference.aspose.com/words/net/aspose.words/font/) và [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/). Bạn có thể xử lý văn bản được chèn trước hoặc sau trường hợp nhất bằng cách sử dụng các thuộc tính [TextBefore](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textbefore/) và [TextAfter](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/textafter/) được bao gồm trong lớp [FieldMergeField](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/).

Ví dụ mã sau đây cho thấy cách chèn Các Hộp Kiểm hoặc HTML trong quá trình hoạt động Mail Merge:

{{< gist "aspose-words-gists" "0a1baaa127443b485cc692c8d98ee353" "mail-merge-form-fields.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destinations%20-%20Fax.docx).

Bạn cũng có thể kiểm tra việc triển khai lớp `HandleMergeField` từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/828b58e207e96afa624956867ec9c777fa10af87/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Working%20with%20Fields.cs#L43).

{{% /alert %}}

## Xem Thêm

* Để biết thêm chi tiết về cách tạo mẫu trong Microsoft Word theo cách thủ công, vui lòng kiểm tra [Tạo Một Mẫu](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) bài viết trong tài liệu Microsoft
