---
title: Installation
second_title: Aspose.Words für Python via .NET
articleTitle: Installation
linktitle: Installation
description: "Installieren Sie Aspose.Words für Python mit Visual Studio-Tools wie Manage NuGet Packages oder Package Manager Console und dem MSI-Installationsprogramm. Verwenden Sie den Full Trust-Berechtigungssatz."
type: docs
weight: 10
url: /de/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Stellen Sie sicher, dass Ihre Maschine die [System Anforderungen](/words/de/python-net/system-requirements/)-Anforderungen erfüllt, bevor Sie beginnen.

In diesem Artikel wird erläutert, wie Sie Aspose.Words für Python via .NET auf Ihrem Computer installieren.

`pip` ist der einfachste Weg, [Aspose.Words für Python via .NET](https://pypi.org/project/aspose-words/)-APIs herunterzuladen und zu installieren. Führen Sie dazu den folgenden Befehl aus:

`pip install aspose-words`

Sobald das Modul installiert ist, können Sie es aus Ihrem Python-Code verwenden:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
