---
title: Làm việc với các trường biểu mẫu trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Form Fields
linktitle: Làm việc với Form Fields
description: "Hiểu về tính năng Form Fields, làm việc với Form Fields bằng Java."
type: docs
weight: 380
url: /vi/java/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Một tài liệu chứa chỗ trống (cánh) để điền là biết đến như một biểu mẫu. Ví dụ, bạn có thể tạo ra một biểu mẫu đăng ký trong Microsoft Word mà sử dụng danh sách thả xuống từ đó người dùng có thể chọn các mục nhập. Trường `Form` là một địa điểm mà một loại dữ liệu cụ thể, chẳng hạn như tên hoặc địa chỉ, được lưu trữ. Trường của Form trong Microsoft Word bao gồm trường văn bản, combobox và checkbox.

Bạn có thể sử dụng các trường biểu mẫu trong dự án để "trao đổi" với người dùng. Ví dụ, bạn tạo một tài liệu mà nội dung của nó được bảo vệ nhưng chỉ có các trường biểu mẫu là có thể chỉnh sửa. Người dùng có thể nhập dữ liệu vào các trường biểu mẫu và gửi tài liệu. Ứng dụng của bạn sử dụng Aspose.Words có thể thu hồi dữ liệu từ các trường biểu mẫu và xử lý nó.

Chèn các trường biểu mẫu vào tài liệu qua mã là dễ. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) có các phương pháp đặc biệt để chèn chúng, một cho mỗi loại trường biểu mẫu. Mỗi phương pháp chấp nhận một tham số chuỗi đại diện cho tên của trường biểu mẫu. Tên có thể là một chuỗi rỗng. Nếu bạn chỉ định một tên cho trường biểu mẫu, thì một dấu trang sẽ tự động được tạo với cùng một tên.

## Chèn trường biểu mẫu

Các trường biểu mẫu là một trường hợp đặc biệt của các trường từ trong đó cho phép " tương tác " với người dùng. Các trường của biểu mẫu ở Microsoft Word bao gồm textbox, combo box và checkbox.

**DocumentBuilder** cung cấp các phương thức đặc biệt để chèn mỗi kiểu trường biểu mẫu vào tài liệu: [insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), [insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int) hoặc [insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-int).

Ví dụ sau cho thấy cách chèn trường Combobox vào một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFormFields-InsertFormFields.java" >}}

### Chèn một đầu vào văn bản

Sử dụng phương pháp **chèn văn bản vào** để chèn một hộp văn bản vào tài liệu.

Mã ví dụ sau cho thấy cách chèn một trường văn bản vào tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### Chèn hộp kiểm

Gọi **insertCheckBox** để chèn một hộp kiểm vào tài liệu.

Ví dụ sau cho thấy cách chèn một trường hộp kiểm vào một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### Chèn Combo Box

Gọi **chèn ComboBox** để chèn một hộp kết hợp vào tài liệu.

Mã ví dụ sau cho thấy cách chèn trường biểu mẫu combobox vào một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## Nhận được trường biểu mẫu

Một tập hợp các trường biểu mẫu được đại diện bởi lớp [FormFieldCollection](https://reference.aspose.com/words/java/com.aspose.words/formfieldcollection/) có thể thu hồi bằng thuộc tính [Range.getFormFields](https://reference.aspose.com/words/java/com.aspose.words/range/#getFormFields). Điều này có nghĩa là bạn có thể lấy các trường biểu mẫu được chứa trong bất kỳ nút tài liệu nào bao gồm cả tài liệu chính nó.

Mã ví dụ sau cho thấy cách lấy một bộ sưu tập các trường biểu mẫu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống bản mẫu của các ví dụ sau từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Form%20fields.docx).

{{% /alert %}}

Bạn có thể nhận được một trường biểu mẫu cụ thể bởi chỉ số hoặc tên của nó.

Mã ví dụ sau cho thấy cách truy cập vào các trường biểu mẫu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsGetByName-FormFieldsGetByName.java" >}}

Các thuộc tính **FormField** cho phép bạn làm việc với tên trường biểu mẫu, kiểu và kết quả.

Mẫu mã sau cho thấy cách làm việc với tên trường biểu mẫu, kiểu và kết quả

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.java" >}}
