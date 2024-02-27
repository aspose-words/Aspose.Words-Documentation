---
title: Installazione
second_title: Aspose.Words per Python via .NET
articleTitle: Installazione
linktitle: Installazione
description: "Installa Aspose.Words per Python utilizzando strumenti Visual Studio come Manage NuGet Packages o Package Manager Console e il programma di installazione MSI. Utilizza il set di autorizzazioni Full Trust."
type: docs
weight: 10
url: /it/python-net/installation/
---

Assicurati che la tua macchina soddisfi i [Requisiti di sistema](/words/it/python-net/system-requirements/) prima di iniziare.

Questo articolo spiega come installare Aspose.Words per Python via .NET sul tuo computer.

`pip` è il modo più semplice per scaricare e installare API [Aspose.Words per Python via .NET](https://pypi.org/project/aspose-words/). Per fare ciò esegui il seguente comando:

`pip install aspose-words`

Una volta installato il modulo, puoi utilizzarlo dal tuo codice Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
