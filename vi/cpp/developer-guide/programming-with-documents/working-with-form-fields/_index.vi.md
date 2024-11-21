---
title: Làm Việc Với Các Trường Biểu mẫu trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Các Trường Biểu Mẫu
linktitle: Làm việc Với Các Trường Biểu Mẫu
description: "Hiểu Tính năng Trường Biểu mẫu, làm việc Với Các Trường Biểu mẫu bằng C++."
type: docs
weight: 380
url: /vi/cpp/working-with-form-fields/
timestamp: 2024-01-27-14-07-04
---

Một tài liệu có chứa khoảng trống điền (trường) được gọi là biểu mẫu. Ví dụ: bạn có thể tạo biểu mẫu đăng ký trong Microsoft Word sử dụng danh sách thả xuống mà từ đó người dùng có thể chọn mục nhập. Trường biểu mẫu là vị trí lưu trữ một loại dữ liệu cụ thể, chẳng hạn như tên hoặc địa chỉ. Các trường biểu mẫu trong Microsoft Word bao gồm nhập văn bản, Hộp Tổ hợp và hộp kiểm.

Bạn có thể sử dụng các trường biểu mẫu trong dự án của mình để "giao tiếp" với người dùng của mình. Ví dụ: bạn tạo một tài liệu có nội dung được bảo vệ, nhưng chỉ các trường biểu mẫu mới có thể chỉnh sửa được. Người dùng có thể nhập dữ liệu vào các trường biểu mẫu và gửi tài liệu. Ứng dụng của bạn sử dụng Aspose.Words có thể truy xuất dữ liệu từ các trường biểu mẫu và xử lý nó.

Đặt các trường biểu mẫu vào tài liệu thông qua mã rất dễ dàng. [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) có các phương thức đặc biệt để chèn chúng, một cho mỗi loại trường biểu mẫu. Mỗi phương thức chấp nhận một tham số chuỗi đại diện cho tên của trường biểu mẫu. Tên có thể là một chuỗi trống. Tuy nhiên, nếu bạn chỉ định tên cho trường biểu mẫu, thì dấu trang sẽ tự động được tạo với cùng tên.

## Chèn Các Trường Biểu Mẫu

Các trường biểu mẫu là một trường Hợp Cụ thể của Các trường Từ cho phép "tương tác" với người dùng. Các trường biểu mẫu trong Microsoft Word bao gồm hộp văn bản, hộp tổ hợp và hộp kiểm.

**DocumentBuilder**

Ví dụ mã sau đây cho thấy cách chèn trường biểu mẫu combobox vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFormFields-InsertFormFields.cpp" >}}

## Lấy Các Trường Biểu Mẫu

Một tập hợp các trường biểu mẫu được biểu thị bằng lớp [FormFieldCollection](https://reference.aspose.com/words/cpp/aspose.words.fields/formfieldcollection/) có thể được truy xuất bằng thuộc tính [FormFields](https://reference.aspose.com/words/cpp/aspose.words/range/get_formfields/). Điều này có nghĩa là bạn có thể lấy các trường biểu mẫu có trong bất kỳ nút tài liệu nào bao gồm cả chính tài liệu.

Ví dụ mã sau đây cho thấy làm thế nào để có được một bộ sưu tập các trường biểu mẫu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetFormFieldsCollection-FormFieldsGetFormFieldsCollection.cpp" >}}

Bạn có thể nhận được một trường biểu mẫu cụ thể theo chỉ mục hoặc tên của nó.

Ví dụ mã sau đây cho thấy cách truy cập các trường biểu mẫu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsGetByName-FormFieldsGetByName.cpp" >}}

Các thuộc tính **FormField** cho phép bạn làm việc với tên trường biểu mẫu, loại và kết quả.

Ví dụ mã sau đây cho thấy cách làm việc với tên trường biểu mẫu, loại và kết quả:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormFieldsWorkWithProperties-FormFieldsWorkWithProperties.cpp" >}}
