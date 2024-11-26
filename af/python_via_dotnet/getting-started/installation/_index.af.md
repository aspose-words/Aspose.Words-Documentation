---
title: Installasie
second_title: Aspose.Words vir Python via .NET
articleTitle: Installasie
linktitle: Installasie
description: "Installeer Aspose.Words vir Python gebruik Visual Studio gereedskap Soos Bestuur NuGet Pakkette of Package Manager Console en die MSI installeerder. Gebruik die Full Trust toestemming stel."
type: docs
weight: 10
url: /af/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Maak seker dat jou masjien voldoen aan die [stelselvereistes](/words/python-net/system-requirements/) voordat jy begin.

Hierdie artikel verduidelik hoe om te installeer Aspose.Words vir Python via .NET op jou rekenaar.

`pip` is die maklikste manier om af te laai en te installeer [Aspose.Words vir Python via .NET](https://pypi.org/project/aspose-words/) APIs. Om dit te doen hardloop die volgende opdrag:

`pip install aspose-words`

Sodra die module geïnstalleer is, kan u dit gebruik vir u Python - kode:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
