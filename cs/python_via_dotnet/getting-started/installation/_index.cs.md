---
title: Instalace
second_title: Aspose.Words místo Python via .NET
articleTitle: Instalace
linktitle: Instalace
description: "Instalovat Aspose.Words místo Python podání Visual Studio nástroje jako např. Manage NuGet Packages nebo Package Manager Console a instalátor MSI. Použijte Full Trust povolení nastaveno."
type: docs
weight: 10
url: /cs/python-net/installation/
---

Ujistěte se, že váš stroj splňuje [Požadavky na systém](/words/cs/python-net/system-requirements/) Než začnete.

Tento článek vysvětluje, jak nainstalovat Aspose.Words místo Python via .NET na tvém počítači.

`pip` je nejjednodušší způsob stahování a instalace [Aspose.Words místo Python via .NET](https://pypi.org/project/aspose-words/) APIs. K tomu spusťte následující příkaz:

`pip install aspose-words`

Jakmile je modul nainstalován, můžete jej použít fom váš Python kód:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
