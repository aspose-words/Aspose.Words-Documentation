---
title: نصب و راه اندازی
second_title: Aspose.Words برای Python via .NET
articleTitle: نصب و راه اندازی
linktitle: نصب و راه اندازی
description: "Aspose.Words را برای Python با استفاده از ابزارهای Visual Studio مانند Manage NuGet Packages یا Package Manager Console و نصب کننده MSI نصب کنید. از مجموعه مجوز Full Trust استفاده کنید."
type: docs
weight: 10
url: /fa/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

قبل از شروع مطمئن شوید که دستگاه شما با [سیستم مورد نیاز](/words/fa/python-net/system-requirements/) مطابقت دارد.

این مقاله نحوه نصب Aspose.Words برای Python via .NET را بر روی رایانه شما توضیح می دهد.

`pip` ساده ترین راه برای دانلود و نصب [Aspose.Words برای Python via .NET](https://pypi.org/project/aspose-words/) API است. برای این کار دستور زیر را اجرا کنید:

`pip install aspose-words`

پس از نصب ماژول، می توانید از کد Python خود از آن استفاده کنید:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
