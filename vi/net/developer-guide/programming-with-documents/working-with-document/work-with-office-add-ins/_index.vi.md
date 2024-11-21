---
title: Làm việc với Phần bổ trợ Office trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với phần bổ trợ Office
linktitle: Làm việc với phần bổ trợ Office
description: "Aspose.Words cho .NET cung cấp nhiều lớp khác nhau để làm việc với Phần bổ trợ Office bằng C#. Bạn có thể thêm Ngăn tác vụ thông qua tiện ích mở rộng web và tùy chỉnh các thuộc tính của ngăn và tiện ích mở rộng."
type: docs
weight: 50
url: /vi/net/work-with-office-add-ins/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể muốn cấp quyền truy cập vào các điều khiển giao diện chạy mã để sửa đổi tài liệu. Aspose.Words API cung cấp không gian tên `WebExtensions`, cấp nhiều lớp khác nhau để tùy chỉnh các thành phần và thuộc tính mở rộng từ vựng XML để biểu diễn các Phần bổ trợ dành cho Office.

Không gian tên WebExtensions có thể được chia theo điều kiện thành:

* Đối tượng làm việc với task pane
* Đối tượng làm việc với tiện ích mở rộng web

## Sử dụng ngăn tác vụ

Các bảng tác vụ là các bề mặt giao diện được hiển thị ở phía bên phải của cửa sổ trong Microsoft Word. Ngăn tác vụ cho phép người dùng truy cập các điều khiển giao diện có thể chạy mã để sửa đổi tài liệu.

Ví dụ: bằng cách sử dụng Aspose.Words API, bạn có thể thêm phần bổ trợ ngăn tác vụ và tùy chỉnh giao diện của nó.

## Sử dụng tiện ích mở rộng web

Tiện ích mở rộng Web là các công cụ mở rộng khả năng của ứng dụng Office và tương tác với nội dung tài liệu Office. Tiện ích mở rộng Web cung cấp chức năng bổ sung cho máy khách Office để cải thiện trải nghiệm người dùng.

Aspose.Words cung cấp khả năng thêm Tiện ích mở rộng web của loại Ngăn tác vụ bằng cách sử dụng các lớp [WebExtension](https://reference.aspose.com/words/net/aspose.words.webextensions/webextension/) và [TaskPane](https://reference.aspose.com/words/net/aspose.words.webextensions/taskpane/), đồng thời cho phép bạn tùy chỉnh các thuộc tính của ngăn và tiện ích mở rộng.

Ví dụ mã sau đây cho thấy cách tạo các ngăn tác vụ và thêm vào các ngăn tác vụ của tiện ích mở rộng web với các thuộc tính cơ bản:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-WebExtensions-WorkingWithWebExtension-UsingWebExtensionTaskPanes.cs" >}}

Để xem danh sách các phần bổ trợ của ngăn tác vụ, hãy sử dụng thuộc tính [WebExtensionTaskPanes](https://reference.aspose.com/words/net/aspose.words/document/webextensiontaskpanes/).

Ví dụ về mã sau đây cho biết cách lấy danh sách các phần bổ trợ như vậy:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with WebExtension-GetListOfAddins.cs" >}}
