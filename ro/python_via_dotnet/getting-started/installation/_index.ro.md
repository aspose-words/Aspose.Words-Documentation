---
title: Instalare
second_title: Aspose.Words pentru Python via .NET
articleTitle: Instalare
linktitle: Instalare
description: "Instalare Aspose.Words pentru Python folosind instrumente Visual Studio, Cum ar fi gestionați pachetele NuGet sau Package Manager Console și programul de instalare MSI. Utilizați setul de permisiuni Full Trust."
type: docs
weight: 10
url: /ro/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Asigurați-vă că aparatul dvs. îndeplinește [cerințe de sistem](/words/python-net/system-requirements/) înainte de a începe.

Acest articol explică modul de instalare Aspose.Words pentru Python via .NET pe computer.

`pip` este cel mai simplu mod de a descărca și instala [Aspose.Words pentru Python via .NET](https://pypi.org/project/aspose-words/) APIs. Pentru a face acest lucru, executați următoarea comandă:

`pip install aspose-words`

Odată ce modulul este instalat, îl puteți folosi pentru codul Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
