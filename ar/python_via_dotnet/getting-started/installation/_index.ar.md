---
title: تثبيت
second_title: Aspose.Words لـ Python via .NET
articleTitle: تثبيت
linktitle: تثبيت
description: "قم بتثبيت Aspose.Words لـ Python باستخدام أدوات Visual Studio مثل Manage NuGet Packages أو Package Manager Console ومثبت MSI. استخدم مجموعة أذونات Full Trust."
type: docs
weight: 10
url: /ar/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

تأكد من أن جهازك يتوافق مع [متطلبات النظام](/words/ar/python-net/system-requirements/) قبل البدء.

تشرح هذه المقالة كيفية تثبيت Aspose.Words لـ Python via .NET على جهاز الكمبيوتر الخاص بك.

`pip` هي أسهل طريقة لتنزيل وتثبيت ملفات [Aspose.Words لـ Python via .NET](https://pypi.org/project/aspose-words/) API. للقيام بذلك، قم بتشغيل الأمر التالي:

`pip install aspose-words`

بمجرد تثبيت الوحدة، يمكنك استخدامها من كود Python الخاص بك:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
