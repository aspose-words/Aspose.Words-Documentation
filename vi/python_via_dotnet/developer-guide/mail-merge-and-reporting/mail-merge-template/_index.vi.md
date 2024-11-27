---
title: Mail Merge Mẫu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Mail Merge Mẫu
linktitle: Mail Merge Mẫu
type: docs
description: "Tạo mẫu Mail Merge để xác định nội dung cố định trong tài liệu đầu ra, sau đó tạo tài liệu hợp nhất bằng cách sử dụng các trường hợp nhất trong Python."
keywords: "create Mail Merge template python"
weight: 10
url: /vi/python-net/mail-merge-template/
timestamp: 2024-01-31-14-23-37
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

Sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) để tạo mẫu hợp nhất bắt buộc bằng Aspose.Words. Bạn có thể bao gồm một văn bản, một trường hợp nhất và ngắt dòng trong một mẫu như vậy bằng cách sử dụng các phương thức [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [inset_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) và [insert_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_paragraph/).

Ví dụ mã sau đây cho thấy cách tạo mẫu Mail Merge:

{{< highlight python >}}
@staticmethod
def create_mail_merge_template() :
    
    builder = aw.DocumentBuilder()
    
    # Insert a text input field the unique name of this field is "Hello", the other parameters define
    # what type of FormField it is, the format of the text, the field result and the maximum text length (0 = no limit)
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
    builder.insert_field("MERGEFIELD CustomerFirstName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD CustomerLastName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " , ", 0)
    
    # Inserts a paragraph break into the document
    builder.insert_paragraph()
    
    # Insert mail body
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Thanks for purchasing our ", 0)
    builder.insert_field("MERGEFIELD ProductName \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", please download your Invoice at ", 0)
    builder.insert_field("MERGEFIELD InvoiceURL \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ". If you have any questions please call ", 0)
    builder.insert_field("MERGEFIELD Supportphone \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ", or email us at ", 0)
    builder.insert_field("MERGEFIELD SupportEmail \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", ".", 0)
    
    builder.insert_paragraph()
    
    # Insert mail ending
    builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Best regards,", 0)
    builder.insert_break(aw.BreakType.LINE_BREAK)
    builder.insert_field("MERGEFIELD EmployeeFullname \\* MERGEFORMAT")
    
    builder.insert_text_input("TextInput1", aw.fields.TextFormFieldType.REGULAR, "", " ", 0)
    builder.insert_field("MERGEFIELD EmployeeDepartment \\* MERGEFORMAT")
    
    return builder.document
{{< /highlight >}}

Hình dưới đây cho thấy mẫu đã tạo:

<img src="mail-merge-template-1.png" alt="mail_merge_template" style="width:650px"/>

## Tùy chỉnh Thuộc tính mẫu Mail Merge

Aspose.Words cho phép bạn tùy chỉnh mẫu của mình thông qua nhiều thuộc tính. Tùy chỉnh mẫu sẽ được mô tả dưới đây thông qua một ví dụ về việc tùy chỉnh một số thuộc tính của hình ảnh và văn bản.

## Xem Thêm

* Để biết thêm chi tiết về cách tạo mẫu trong Microsoft Word theo cách thủ công, vui lòng kiểm tra [Tạo Một Mẫu](https://support.microsoft.com/en-us/office/save-a-word-document-as-a-template-cb17846d-ecec-49d4-82ea-a6f5e3e8b9ae) bài viết trong tài liệu Microsoft
