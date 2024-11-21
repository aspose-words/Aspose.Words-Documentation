---
title: Làm việc với Office Add-in trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các tiện ích mở rộng của Office
linktitle: Làm việc với các tiện ích mở rộng của Office
description: "Aspose.Words cho Java cung cấp các lớp khác nhau để làm việc với Add-in của Office. Bạn có thể thêm Task Pane thông qua phần mở rộng web và tùy chỉnh thuộc tính của thanh và các tiện ích mở rộng."
type: docs
weight: 50
url: /vi/java/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể muốn cấp quyền truy cập vào các điều khiển giao diện chạy mã để sửa đổi tài liệu. Aspose.Words API cung cấp không gian tên `WebExtensions`, cho phép nhiều lớp để tùy chỉnh các yếu tố và thuộc tính mở rộng từ vựng XML để biểu diễn các Office Add-in.

Không gian tên WebExtensions có thể được chia điều kiện thành:

* Đối tượng cho việc làm với thanh công việc
* Các đối tượng để làm việc với phần mở rộng web

## Sử dụng Task Panes

Các hộp công việc là các bề mặt giao diện được hiển thị ở phía bên phải cửa sổ trong Microsoft Word. Cửa sổ nhiệm vụ cho phép người dùng truy cập các điều khiển giao diện mà có thể chạy mã để sửa đổi tài liệu.

Ví dụ như sử dụng Aspose.Words API, bạn có thể thêm một tiện ích thanh công việc và tùy chỉnh hình thức của nó.

## Sử dụng WebExtensions

Các tiện ích web là các công cụ mở rộng khả năng của ứng dụng văn phòng và tương tác với nội dung tài liệu văn phòng. Các Web Extension cung cấp chức năng bổ sung cho khách hàng Office để cải thiện trải nghiệm người dùng.

Aspose.Words cung cấp khả năng thêm các phần mở rộng của Web trong loại Task Pane sử dụng các lớp [WebExtension](https://reference.aspose.com/words/java/com.aspose.words/webextension/) và [TaskPane](https://reference.aspose.com/words/java/com.aspose.words/taskpane/), và cũng cho phép bạn tùy chỉnh các thuộc tính bảng và các thuộc tính phần mở rộng.

Ví dụ mã sau cho thấy cách tạo task pane và thêm vào task pane mở rộng web với các thuộc tính cơ bản:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-UsingWebExtensionTaskPanes.java" >}}

Để xem danh sách các tiện ích thanh công việc, hãy dùng thuộc tính [WebExtensionTaskPanes](https://reference.aspose.com/words/java/com.aspose.words/document/#getWebExtensionTaskPanes).

Mã ví dụ dưới cho thấy cách nhận được danh sách như vậy của các tiện ích bổ sung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-WebExtension-WorkingWithWebExtension-GetListOfAddins.java" >}}

