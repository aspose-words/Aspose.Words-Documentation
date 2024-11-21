---
title: Convertir Word en Excel dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Convertir un document en Excel
linktitle: Convertir un document en Excel
description: "Convertissez PDF en Excel, XML en Excel, DOCX en Excel Python. Enregistrez un document dans différents formats sur XLSX à l'aide de Python."
type: docs
weight: 15
url: /fr/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversion de documents d'un format à un autre est la fonctionnalité phare de Aspose.Words. Vous pouvez également convertir des documents dans n'importe quel [format de chargement](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) disponible au format XLSX.

## Convertir un document en XLSX

La conversion d'un document en XLSX est un processus assez compliqué. Pour enregistrer votre document au format XLSX à l'aide de Aspose.Words, utilisez la classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) et le nouvel élément `Xlsx` dans l'énumération [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Comme mentionné ci-dessus, vous pouvez enregistrer le document dans n'importe quel format de chargement pris en charge par Aspose.Words vers XLSX.

L'exemple de code suivant montre comment enregistrer un PDF au format XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document au format XLSX. Ces options peuvent être spécifiées à l'aide de la classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), contenant des propriétés qui déterminent la manière dont la sortie XLSX sera affichée.

{{% /alert %}}

## Rechercher et remplacer lors de l'enregistrement au format XLSX

En utilisant également Aspose.Words, vous pouvez rechercher une chaîne ou une expression régulière spécifique dans votre document et la remplacer par celle correspondante dont vous avez besoin. Ensuite, vous pouvez également enregistrer le résultat au format XLSX.

L'exemple de code suivant montre comment effectuer une opération de recherche et de remplacement et enregistrer le résultat dans XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Spécifier le niveau de compression lors de l'enregistrement au format XLSX

Vous pouvez également spécifier le niveau de compression lors de l'enregistrement à l'aide de la propriété [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

L'exemple de code suivant montre comment spécifier le niveau de compression lors de l'enregistrement au format XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Voir également

- Section Documentation [Protéger ou chiffrer un document](/words/fr/python-net/protect-or-encrypt-a-document/) pour plus d'informations sur la protection et le cryptage d'un document
- L'article [Trouver et remplacer](/words/fr/python-net/find-and-replace/) pour plus d'informations sur la recherche et le remplacement du contenu souhaité
