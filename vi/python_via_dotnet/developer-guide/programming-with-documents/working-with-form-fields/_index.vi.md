---
title: Làm việc với các trường biểu mẫu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với các trường biểu mẫu
linktitle: Làm việc với các trường biểu mẫu
description: "Chèn, lấy hoặc định dạng trường biểu mẫu trong tài liệu bằng Python."
type: docs
weight: 380
url: /vi/python-net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Một tài liệu chứa các khoảng trống điền vào (các trường) được gọi là một biểu mẫu. Ví dụ: bạn có thể tạo biểu mẫu đăng ký trong Microsoft Word sử dụng danh sách thả xuống để người dùng có thể chọn mục nhập. Trường `Form` là vị trí lưu trữ một loại dữ liệu cụ thể, chẳng hạn như tên hoặc địa chỉ. Các trường biểu mẫu trong Microsoft Word bao gồm nhập văn bản, hộp tổ hợp và hộp kiểm.

Bạn có thể sử dụng các trường biểu mẫu trong dự án của mình để "giao tiếp" với người dùng. Ví dụ: bạn tạo một tài liệu có nội dung được bảo vệ nhưng chỉ có các trường biểu mẫu mới có thể chỉnh sửa được. Người dùng có thể nhập dữ liệu vào các trường biểu mẫu và gửi tài liệu. Ứng dụng sử dụng Aspose.Words của bạn có thể truy xuất dữ liệu từ các trường biểu mẫu và xử lý dữ liệu đó.

Việc đặt các trường biểu mẫu vào tài liệu thông qua mã rất dễ dàng. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) có các phương pháp đặc biệt để chèn chúng, một phương pháp cho từng loại trường biểu mẫu. Mỗi phương thức chấp nhận một tham số chuỗi đại diện cho tên của trường biểu mẫu. Tên có thể là một chuỗi trống. Tuy nhiên, nếu bạn chỉ định tên cho trường biểu mẫu thì dấu trang sẽ tự động được tạo có cùng tên.

## Chèn trường biểu mẫu

Trường biểu mẫu là trường hợp cụ thể của trường Word cho phép "tương tác" với người dùng. Các trường biểu mẫu trong Microsoft Word bao gồm hộp văn bản, hộp tổ hợp và hộp kiểm.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) cung cấp các phương thức đặc biệt để chèn từng loại trường biểu mẫu vào tài liệu: [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/), [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) và [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/). Lưu ý rằng nếu bạn chỉ định tên cho trường biểu mẫu thì dấu trang sẽ tự động được tạo có cùng tên.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu combobox vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-InsertFormFields.py" >}}

### Chèn một kiểu nhập văn bản

Sử dụng phương pháp [insert_text_input](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_text_input/) để chèn hộp văn bản vào tài liệu.

Ví dụ mã sau đây cho thấy cách chèn trường biểu mẫu nhập văn bản vào tài liệu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_text_input("TextInput", aw.fields.TextFormFieldType.REGULAR, "", "Hello", 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_text_input_form_field.docx")
{{< /highlight >}}

### Chèn một hộp kiểm

Gọi [insert_check_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_check_box/) để chèn hộp kiểm vào tài liệu.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu hộp kiểm vào tài liệu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_check_box("CheckBox", True, True, 0)
        
doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_check_box_form_field.docx")
{{< /highlight >}}

### Chèn một hộp tổ hợp

Gọi [insert_combo_box](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_combo_box/) để chèn Combobox vào tài liệu.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu Combobox vào tài liệu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

items =  ["One", "Two", "Three"] 
builder.insert_combo_box("DropDown", items, 0)

doc.save(docs_base.artifacts_dir + "WorkingWithFormFields.document_builder_insert_combo_box_form_field.docx")
{{< /highlight >}}

## Lấy các trường biểu mẫu

Một tập hợp các trường biểu mẫu được biểu thị bằng lớp [FormFieldCollection](https://reference.aspose.com/words/python-net/aspose.words.fields/formfieldcollection/) có thể được truy xuất bằng thuộc tính [form_fields](https://reference.aspose.com/words/python-net/aspose.words/range/form_fields/). Điều này có nghĩa là bạn có thể lấy các trường biểu mẫu có trong bất kỳ nút tài liệu nào, kể cả chính tài liệu đó.

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của các ví dụ sau từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetFormFieldsCollection.py" >}}

Bạn có thể lấy một trường biểu mẫu cụ thể theo chỉ mục hoặc tên của nó.

Ví dụ mã sau đây cho thấy cách truy cập các trường biểu mẫu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsGetByName.py" >}}

Thuộc tính [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) cho phép bạn làm việc với tên, loại và kết quả của trường biểu mẫu.

Ví dụ mã sau đây cho thấy cách làm việc với tên, loại và kết quả của trường biểu mẫu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsWorkWithProperties.py" >}}

## Định dạng trường biểu mẫu

Thuộc tính [font](https://reference.aspose.com/words/python-net/aspose.words/inline/font/) của [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) cho phép áp dụng định dạng phông chữ cho toàn bộ [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) bao gồm cả giá trị trường.

Ví dụ mã sau đây cho thấy cách áp dụng định dạng phông chữ cho **FormField**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_form_fields-FormFieldsFontFormatting.py" >}}
