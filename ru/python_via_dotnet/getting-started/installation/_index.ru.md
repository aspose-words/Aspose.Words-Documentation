---
title: Монтаж
second_title: Aspose.Words для Python via .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Установите Aspose.Words для Python, используя инструменты Visual Studio, такие как Manage NuGet Packages или Package Manager Console, и установщик MSI. Используйте набор разрешений Full Trust."
type: docs
weight: 10
url: /ru/python-net/installation/
---

Прежде чем начать, убедитесь, что ваша машина соответствует стандарту [Системные Требования](/words/ru/python-net/system-requirements/).

В этой статье объясняется, как установить Aspose.Words для Python via .NET на свой компьютер.

`pip` — это самый простой способ загрузить и установить [Aspose.Words для Python via .NET](https://pypi.org/project/aspose-words/) APIs. Для этого выполните следующую команду:

`pip install aspose-words`

После установки модуля вы можете использовать его по коду Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
