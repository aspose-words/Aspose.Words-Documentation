---
title: Instalacja
second_title: Aspose.Words dla Python via .NET
articleTitle: Instalacja
linktitle: Instalacja
description: "Zainstaluj Aspose.Words dla Python przy użyciu narzędzi Visual Studio, takich jak Manage NuGet Packages lub Package Manager Console i instalatora MSI. Użyj zestawu uprawnień Full Trust."
type: docs
weight: 10
url: /pl/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Zanim zaczniesz, upewnij się, że Twoja maszyna spełnia wymagania [wymagania systemowe](/words/pl/python-net/system-requirements/).

W tym artykule wyjaśniono, jak zainstalować Aspose.Words dla Python via .NET na komputerze.

`pip` to najłatwiejszy sposób pobrania i zainstalowania plików [Aspose.Words dla Python via .NET](https://pypi.org/project/aspose-words/) API. Aby to zrobić, uruchom następujące polecenie:

`pip install aspose-words`

Po zainstalowaniu modułu możesz go używać za pomocą kodu Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
