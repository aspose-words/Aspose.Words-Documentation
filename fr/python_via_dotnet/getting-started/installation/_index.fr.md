---
title: Installation
second_title: Aspose.Words pour Python via .NET
articleTitle: Installation
linktitle: Installation
description: "Installez Aspose.Words pour Python à l'aide d'outils Visual Studio tels que Manage NuGet Packages ou Package Manager Console et le programme d'installation MSI. Utilisez l'ensemble d'autorisations Full Trust."
type: docs
weight: 10
url: /fr/python-net/installation/
---

Assurez-vous que votre machine respecte le [Configuration requise](/words/fr/python-net/system-requirements/) avant de commencer.

Cet article explique comment installer Aspose.Words pour Python via .NET sur votre ordinateur.

`pip` est le moyen le plus simple de télécharger et d'installer des API [Aspose.Words pour Python via .NET](https://pypi.org/project/aspose-words/). Pour ce faire, exécutez la commande suivante:

`pip install aspose-words`

Une fois le module installé, vous pouvez l'utiliser depuis votre code Python:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
