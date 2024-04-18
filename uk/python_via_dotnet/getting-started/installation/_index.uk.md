---
title: Монтаж
second_title: Aspose.Words для Python via .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Увійти Aspose.Words для Python використання Visual Studio інструменти, такі як Manage NuGet Packages або Package Manager Console та інсталятор MSI. Використання Full Trust набір документів."
type: docs
weight: 10
url: /uk/python-net/installation/
---

Переконайтеся, що ваша машина відповідає [Вимоги до системи](/words/uk/python-net/system-requirements/) перед початком.

Ця стаття пояснює, як встановити Aspose.Words для Python via .NET на комп'ютері.

`pip` є найпростішим способом завантаження та встановлення [Aspose.Words для Python via .NET](https://pypi.org/project/aspose-words/) APIй Для цього запустіть наступну команду:

`pip install aspose-words`

Після встановлення модуля ви можете використовувати його, щоб захистити ваш Python Код:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
