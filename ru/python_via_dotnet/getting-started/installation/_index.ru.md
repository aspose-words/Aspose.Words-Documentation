---
title: Установка
second_title: Aspose.Words для Python via .NET
articleTitle: Установка
linktitle: Установка
description: "Установите Aspose.Words для Python, используя Visual Studio инструменты, такие как Управление пакетами NuGet или Package Manager Console, и программу установки MSI. Используйте набор разрешений Full Trust."
type: docs
weight: 10
url: /ru/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Перед началом работы убедитесь, что ваш компьютер соответствует требованиям к системе [системные требования ](/words/python-net/system-requirements/).

В этой статье объясняется, как установить Aspose.Words для Python via .NET на ваш компьютер.

`pip` - это самый простой способ загрузки и установки [Aspose.Words для Python via .NET](https://pypi.org/project/aspose-words/) APIs. Для этого выполните следующую команду:

`pip install aspose-words`

Как только модуль будет установлен, вы сможете использовать его в качестве своего кода Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
