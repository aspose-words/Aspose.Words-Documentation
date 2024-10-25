---
title: Làm Việc Với Văn Phòng Add-in C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Các Tiện Ích Bổ Sung Văn Phòng
linktitle: Làm việc Với Các Tiện Ích Bổ Sung Văn Phòng
description: "Aspose.Words cho C++ cung cấp các lớp học khác nhau để làm việc với Các Tiện ích Bổ sung Văn phòng. Bạn có thể thêm Ngăn Tác vụ thông qua tiện ích mở rộng web và tùy chỉnh các thuộc tính ngăn và tiện ích mở rộng."
type: docs
weight: 50
url: /vi/cpp/work-with-office-add-ins/
---

Đôi khi bạn có thể muốn cấp quyền truy cập vào các điều khiển giao diện chạy mã để sửa đổi tài liệu. Aspose.Words API cung cấp không gian tên `WebExtensions`, cấp các lớp khác nhau để tùy chỉnh các phần tử và thuộc tính mở rộng từ vựng XML để đại diện Cho Các Bổ Trợ Văn phòng.

WebExtensions không gian tên có thể được chia thành điều kiện:

* Các đối tượng để làm việc với ngăn tác vụ
* Các đối tượng để làm việc với các tiện ích mở rộng web

## Sử Dụng Các Ngăn Tác Vụ

Các ngăn tác vụ là các bề mặt giao diện được hiển thị ở phía bên phải của cửa sổ trong Microsoft Word. Ngăn tác vụ cho phép người dùng truy cập các điều khiển giao diện có thể chạy mã để sửa đổi tài liệu.

Ví dụ: sử dụng Aspose.Words API, bạn có thể thêm phần bổ trợ ngăn tác vụ và tùy chỉnh giao diện của nó.

## Sử Dụng Tiện Ích Mở Rộng Web

Tiện ích mở rộng Web là công cụ mở rộng khả năng của Các ứng dụng Office và tương tác với Nội dung Tài liệu Office. Tiện ích mở rộng Web cung cấp chức năng bổ sung Cho Khách Hàng Office để cải thiện trải nghiệm người dùng.

Aspose.Words cung cấp khả năng thêm Các Phần Mở Rộng Web của Loại Ngăn Tác vụ bằng cách sử dụng các lớp [WebExtension](https://reference.aspose.com/words/cpp/aspose.words.webextensions/webextension/) và [TaskPane](https://reference.aspose.com/words/cpp/aspose.words.webextensions/taskpane/), đồng thời cho phép bạn tùy chỉnh các thuộc tính ngăn và phần mở rộng.

Ví dụ mã sau đây cho thấy cách tạo ngăn tác vụ và thêm vào ngăn tác vụ mở rộng web với các thuộc tính cơ bản:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cpp" >}}

Để xem danh sách các tiện ích bổ sung ngăn tác vụ, hãy sử dụng thuộc tính [WebExtensionTaskPanes](https://reference.aspose.com/words/cpp/aspose.words/document/get_webextensiontaskpanes/).

Ví dụ mã sau đây cho thấy làm thế nào để có được một danh sách các tiện ích bổ sung như vậy:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithWebExtension-GetListOfAddins.cpp" >}}
