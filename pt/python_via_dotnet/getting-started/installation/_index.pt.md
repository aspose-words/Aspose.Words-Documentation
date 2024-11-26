---
title: Instalação
second_title: Aspose.Words para Python via .NET
articleTitle: Instalação
linktitle: Instalação
description: "Instale Aspose.Words para Python usando ferramentas Visual Studio como Manage NuGet Packages ou Package Manager Console e o instalador MSI. Use o conjunto de permissões Full Trust."
type: docs
weight: 10
url: /pt/python-net/installation/
timestamp: 2024-01-27-14-07-04
---

Certifique-se de que sua máquina atenda ao [Requisitos de sistema](/words/pt/python-net/system-requirements/) antes de começar.

Este artigo explica como instalar Aspose.Words para Python via .NET em seu computador.

`pip` é a maneira mais fácil de baixar e instalar APIs [Aspose.Words para Python via .NET](https://pypi.org/project/aspose-words/). Para fazer isso execute o seguinte comando:

`pip install aspose-words`

Depois que o módulo estiver instalado, você poderá usá-lo a partir do seu código Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
