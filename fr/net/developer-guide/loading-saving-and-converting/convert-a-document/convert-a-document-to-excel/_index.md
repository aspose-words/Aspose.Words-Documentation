---
title: Convertir Word en Excel dans C#
second_title: Aspose.Words pour .NET
articleTitle: Convertir un document en Excel
linktitle: Convertir un document en Excel
description: "Convertissez PDF en Excel, XML en Excel, DOCX en Excel C#. Enregistrez un document dans différents formats sur XLSX à l'aide de C#."
type: docs
weight: 15
url: /fr/net/convert-a-document-to-excel/
---

La conversion de documents d'un format à un autre est la fonctionnalité phare de Aspose.Words. Vous pouvez également convertir des documents dans n'importe quel [format de chargement](https://reference.aspose.com/words/net/aspose.words/loadformat/) disponible au format XLSX.

## Convertir un document en XLSX

La conversion d'un document en XLSX est un processus assez compliqué. Pour enregistrer votre document au format XLSX à l'aide de Aspose.Words, utilisez la classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) et le nouvel élément `Xlsx` dans l'énumération [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Comme mentionné ci-dessus, vous pouvez enregistrer le document dans n'importe quel format de chargement pris en charge par Aspose.Words vers XLSX.

L'exemple de code suivant montre comment enregistrer un PDF au format XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document au format XLSX. Ces options peuvent être spécifiées à l'aide de la classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), contenant des propriétés qui déterminent la manière dont la sortie XLSX sera affichée.

{{% /alert %}}

## Rechercher et remplacer lors de l'enregistrement au format XLSX

En utilisant également Aspose.Words, vous pouvez rechercher une chaîne ou une expression régulière spécifique dans votre document et la remplacer par celle correspondante dont vous avez besoin. Ensuite, vous pouvez également enregistrer le résultat au format XLSX.

L'exemple de code suivant montre comment effectuer une opération de recherche et de remplacement et enregistrer le résultat dans XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Spécifier le niveau de compression lors de l'enregistrement au format XLSX

Vous pouvez également spécifier le niveau de compression lors de l'enregistrement à l'aide de la propriété [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

L'exemple de code suivant montre comment spécifier le niveau de compression lors de l'enregistrement au format XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Voir également

- Section Documentation [Protéger ou chiffrer un document](/words/fr/net/protect-or-encrypt-a-document/) pour plus d'informations sur la protection et le cryptage d'un document
- L'article [Trouver et remplacer](/words/fr/net/find-and-replace/) pour plus d'informations sur la recherche et le remplacement du contenu souhaité
