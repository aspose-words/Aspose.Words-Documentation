---
title: Instalación
second_title: Aspose.Words para Python via .NET
articleTitle: Instalación
linktitle: Instalación
description: "Instale Aspose.Words para Python utilizando herramientas Visual Studio como Manage NuGet Package o Package Manager Console y el instalador MSI. Utilice el conjunto de permisos de plena confianza."
type: docs
weight: 10
url: /es/python-net/installation/
---

Asegúrese de que su máquina cumpla con el [Requisitos del sistema](/words/es/python-net/system-requirements/) antes de comenzar.

Este artículo explica cómo instalar Aspose.Words para Python via .NET en su computadora.

`pip` es la forma más sencilla de descargar e instalar archivos [Aspose.Words para Python via .NET](https://pypi.org/project/aspose-words/) API. Para hacer esto ejecute el siguiente comando:

`pip install aspose-words`

Una vez instalado el módulo, puede usarlo desde su código Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
