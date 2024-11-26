---
title: Installatie
second_title: Aspose.Words voor Python via .NET
articleTitle: Installatie
linktitle: Installatie
description: "Installeren Aspose.Words voor Python gebruik Visual Studio instrumenten zoals Manage NuGet Packages of Package Manager Console en de MSI installateur. Gebruik de Full Trust Toestemming ingesteld."
type: docs
weight: 10
url: /nl/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Zorg ervoor dat uw machine voldoet aan de [Systeemeisen](/words/nl/python-net/system-requirements/) Voordat je begint.

Dit artikel legt uit hoe te installeren Aspose.Words voor Python via .NET Op je computer.

`pip` is de gemakkelijkste manier om te downloaden en te installeren [Aspose.Words voor Python via .NET](https://pypi.org/project/aspose-words/) APIs. Voer hiervoor het volgende commando uit:

`pip install aspose-words`

Zodra de module is geïnstalleerd, kunt u deze gebruiken om uw Python code:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
