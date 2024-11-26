---
title: Монтаж
second_title: Aspose.Words вместо Python via .NET
articleTitle: Монтаж
linktitle: Монтаж
description: "Инсталиране Aspose.Words вместо Python приложение Visual Studio инструменти като Manage NuGet Packages или Package Manager Console и инсталатора на MSI. Използвайте Full Trust Разрешително."
type: docs
weight: 10
url: /bg/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Уверете се, че машината ви отговаря на [Системни изисквания](/words/bg/python-net/system-requirements/) Преди да започнете.

Тази статия обяснява как да инсталирате Aspose.Words вместо Python via .NET на компютъра ти.

`pip` е най-лесният начин за изтегляне и инсталиране [Aspose.Words вместо Python via .NET](https://pypi.org/project/aspose-words/) APIс. За да направите това, изпълнявайте следната команда:

`pip install aspose-words`

След като модулът е инсталиран, можете да го използвате за вашия Python код:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
