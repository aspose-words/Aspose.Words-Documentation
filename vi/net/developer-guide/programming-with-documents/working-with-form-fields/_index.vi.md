---
title: Làm việc với các trường biểu mẫu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các trường biểu mẫu
linktitle: Làm việc với các trường biểu mẫu
description: "Tìm hiểu tính năng Trường biểu mẫu, làm việc với Trường biểu mẫu bằng C#."
type: docs
weight: 380
url: /vi/net/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Một tài liệu chứa các khoảng trống điền vào (các trường) được gọi là một biểu mẫu. Ví dụ: bạn có thể tạo biểu mẫu đăng ký trong Microsoft Word sử dụng danh sách thả xuống để người dùng có thể chọn mục nhập. Trường `Form` là vị trí lưu trữ một loại dữ liệu cụ thể, chẳng hạn như tên hoặc địa chỉ. Các trường biểu mẫu trong Microsoft Word bao gồm nhập văn bản, hộp tổ hợp và hộp kiểm.

Bạn có thể sử dụng các trường biểu mẫu trong dự án của mình để "giao tiếp" với người dùng. Ví dụ: bạn tạo một tài liệu có nội dung được bảo vệ nhưng chỉ có các trường biểu mẫu mới có thể chỉnh sửa được. Người dùng có thể nhập dữ liệu vào các trường biểu mẫu và gửi tài liệu. Ứng dụng sử dụng Aspose.Words của bạn có thể truy xuất dữ liệu từ các trường biểu mẫu và xử lý dữ liệu đó.

Việc đặt các trường biểu mẫu vào tài liệu thông qua mã rất dễ dàng. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) có các phương pháp đặc biệt để chèn chúng, một phương pháp cho từng loại trường biểu mẫu. Mỗi phương thức chấp nhận một tham số chuỗi đại diện cho tên của trường biểu mẫu. Tên có thể là một chuỗi trống. Tuy nhiên, nếu bạn chỉ định tên cho trường biểu mẫu thì dấu trang sẽ tự động được tạo có cùng tên.

## Chèn trường biểu mẫu

Trường biểu mẫu là trường hợp cụ thể của trường Word cho phép "tương tác" với người dùng. Các trường biểu mẫu trong Microsoft Word bao gồm hộp văn bản, hộp tổ hợp và hộp kiểm.

**DocumentBuilder** cung cấp các phương thức đặc biệt để chèn từng loại trường biểu mẫu vào tài liệu: [InsertTextInput](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttextinput/), [InsertCheckBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcheckbox/) và [InsertComboBox](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcombobox/). Lưu ý rằng nếu bạn chỉ định tên cho trường biểu mẫu thì dấu trang sẽ tự động được tạo có cùng tên.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu combobox vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cs" >}}

### Chèn một kiểu nhập văn bản

Sử dụng phương pháp **InsertTextInput** để chèn hộp văn bản vào tài liệu.

Ví dụ mã sau đây cho thấy cách chèn trường biểu mẫu nhập văn bản vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTextInputFormField.cs" >}}

### Chèn một hộp kiểm

Gọi **InsertCheckBox** để chèn hộp kiểm vào tài liệu.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu hộp kiểm vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertCheckBoxFormField.cs" >}}

### Chèn một hộp tổ hợp

Gọi **InsertComboBox** để chèn combobox vào tài liệu.

Ví dụ mã sau đây cho biết cách chèn trường biểu mẫu Combobox vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertComboBoxFormField.cs" >}}

## Lấy các trường biểu mẫu

Một tập hợp các trường biểu mẫu được biểu thị bằng lớp [FormFieldCollection](https://reference.aspose.com/words/net/aspose.words.fields/formfieldcollection/) có thể được truy xuất bằng thuộc tính [FormFields](https://reference.aspose.com/words/net/aspose.words/range/formfields/). Điều này có nghĩa là bạn có thể lấy các trường biểu mẫu có trong bất kỳ nút tài liệu nào, kể cả chính tài liệu đó.

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của các ví dụ sau từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách lấy tập hợp các trường biểu mẫu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cs" >}}

Bạn có thể lấy một trường biểu mẫu cụ thể theo chỉ mục hoặc tên của nó.

Ví dụ mã sau đây cho thấy cách truy cập các trường biểu mẫu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cs" >}}

Thuộc tính **FormField** cho phép bạn làm việc với tên, loại và kết quả của trường biểu mẫu.

Ví dụ mã sau đây cho thấy cách làm việc với tên, loại và kết quả của trường biểu mẫu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cs" >}}

## Định dạng trường biểu mẫu

Thuộc tính [Font](https://reference.aspose.com/words/net/aspose.words/inline/font/) của [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) cho phép áp dụng định dạng phông chữ cho toàn bộ **FormField** bao gồm cả giá trị trường.

Ví dụ mã sau đây cho thấy cách áp dụng định dạng phông chữ cho **FormField**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Fields-FormFieldsFontFormatting-FormFieldsFontFormatting.cs" >}}
