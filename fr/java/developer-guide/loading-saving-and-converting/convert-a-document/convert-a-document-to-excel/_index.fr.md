---
title: Convertir Word en Excel en Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en Excel
linktitle: Convertir un document en Excel
description: "Convertissez PDF en Excel, XML en Excel, DOCX en Excel Java. Enregistrez un document dans différents formats dans XLSX en utilisant Java."
type: docs
weight: 15
url: /fr/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversion de documents d'un format à un autre est la fonctionnalité phare de Aspose.Words. Vous pouvez convertir des documents dans n'importe quel format disponible [format de chargement](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) également au format XLSX.

## Convertir un document en XLSX

La conversion d'un document en XLSX est un processus assez compliqué. Pour enregistrer votre document au format XLSX à l'aide de Aspose.Words, utilisez la classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) et le nouvel élément `Xlsx` dans l'énumération [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Comme mentionné ci-dessus, vous pouvez enregistrer le document dans n'importe quel format de chargement pris en charge par Aspose.Words à XLSX.

L'exemple de code suivant montre comment enregistrer PDF en XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document en tant que XLSX. Ces options peuvent être spécifiées en utilisant la classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), contenant des propriétés qui déterminent comment la sortie XLSX sera affichée.

{{% /alert %}}

## Rechercher et remplacer Lors de l'enregistrement sur XLSX

En utilisant également Aspose.Words, vous pouvez trouver une chaîne ou une expression régulière spécifique dans votre document et la remplacer par celle dont vous avez besoin. Ensuite, vous pouvez également enregistrer le résultat au format XLSX.

L'exemple de code suivant montre comment effectuer une opération de recherche et de remplacement et enregistrer le résultat dans XLSX:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Spécifiez le niveau de compression Lors de l'enregistrement sur XLSX

Vous pouvez également spécifier le niveau de compression lors de l'enregistrement à l'aide de la propriété [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

L'exemple de code suivant montre comment spécifier le niveau de compression lors de l'enregistrement au format XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Voir Aussi

- Section de documentation [Protéger ou chiffrer un document](/words/java/protect-or-encrypt-a-document/) pour plus d'informations sur la protection et le chiffrement d'un document
- L'article [Trouver et Remplacer](/words/java/find-and-replace/) pour plus d'informations sur la recherche et le remplacement du contenu souhaité
