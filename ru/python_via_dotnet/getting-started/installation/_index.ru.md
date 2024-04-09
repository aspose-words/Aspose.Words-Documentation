---
title: Установка
second_title: Aspose.Words для Python via .NET
articleTitle: Установка
linktitle: Установка
description: "Устанавливать Aspose.Words для Python использовать Visual Studio Такие инструменты, как Manage NuGet Packages или Package Manager Console Установщик MSI. Используйте Full Trust Разрешение установлено."
type: docs
weight: 10
url: /ru/python-net/installation/
---

Убедитесь, что ваша машина соответствует [Системные требования](/words/ru/python-net/system-requirements/) Прежде чем начать.

В этой статье объясняется, как установить Aspose.Words для Python via .NET на вашем компьютере.

`pip` Самый простой способ скачать и установить [Aspose.Words для Python via .NET](https://pypi.org/project/aspose-words/) APIС. Для этого выполняется следующая команда:

`pip install aspose-words`

Как только модуль установлен, вы можете использовать его для своего Python код:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
