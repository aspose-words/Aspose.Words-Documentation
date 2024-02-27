---
title: Cài đặt
second_title: Aspose.Words cho Python via .NET
articleTitle: Cài đặt
linktitle: Cài đặt
description: "Cài đặt Aspose.Words cho Python bằng các công cụ Visual Studio như Manage NuGet Packages hoặc Package Manager Console và trình cài đặt MSI. Sử dụng bộ quyền Full Trust."
type: docs
weight: 10
url: /vi/python-net/installation/
---

Đảm bảo máy của bạn đáp ứng [yêu cầu hệ thống](/words/vi/python-net/system-requirements/) trước khi bạn bắt đầu.

Bài viết này giải thích cách cài đặt Aspose.Words cho Python via .NET trên máy tính của bạn.

`pip` là cách dễ nhất để tải xuống và cài đặt [Aspose.Words cho Python via .NET](https://pypi.org/project/aspose-words/) API. Để thực hiện việc này, hãy chạy lệnh sau:

`pip install aspose-words`

Sau khi mô-đun được cài đặt, bạn có thể sử dụng nó từ mã Python của mình:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
