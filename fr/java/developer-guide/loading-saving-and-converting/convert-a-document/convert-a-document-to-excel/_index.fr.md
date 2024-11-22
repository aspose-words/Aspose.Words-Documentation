---
title: Convertir Word en Excel Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en Excel
linktitle: Convertir un document en Excel
description: "Convertir PDF en Excel, XML en Excel, DOCX en Excel Java. Enregistrer un document dans différents formats vers XLSX en utilisant Java."
type: docs
weight: 15
url: /fr/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversion de documents d'un format à un autre est la caractéristique phare de Aspose.Words. Vous pouvez convertir des documents dans n'importe quel disponible [format de charge](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) également au format XLSX.

## Convertir un document en XLSX

Convertir un document en XLSX est un processus assez compliqué. Pour enregistrer votre document au format XLSX en utilisant Aspose.Words"> utiliser les [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) et la nouvelle `Xlsx` élément de [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Énumération. Comme mentionné ci-dessus, vous pouvez enregistrer le document dans n'importe quel format de charge supporté par Aspose.Words à XLSX.

L'exemple de code suivant montre comment enregistrer PDF sur XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Parfois, il est nécessaire de spécifier des options supplémentaires, qui peuvent affecter le résultat de l'enregistrement d'un document en tant que XLSX. Ces options peuvent être spécifiées par l'utilisation de [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) classe, contenant des propriétés qui déterminent comment la sortie XLSX sera affichée.

{{% /alert %}}

## Trouver et remplacer lors de l'enregistrement sur XLSX

Utilisation Aspose.Words, vous pouvez trouver une chaîne spécifique ou une expression régulière dans votre document et le remplacer par la chaîne correspondante dont vous avez besoin. Ensuite, vous pouvez également enregistrer le résultat au format XLSX.

L'exemple de code suivant montre comment effectuer la recherche et le remplacement de l'opération et enregistrer le résultat sur XLSX:

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

## Spécifier le niveau de compression lors de l'enregistrement sur XLSX

Vous pouvez également spécifier le niveau de compression lors de l'enregistrement [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) propriété.

L'exemple de code suivant montre comment spécifier le niveau de compression lors de l'enregistrement au format XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Voir aussi

- Section documentation [Protégez ou chiffrer un document](/words/fr/java/protect-or-encrypt-a-document/) pour plus d'informations sur la protection et le chiffrement d'un document
- L'article [Trouver et remplacer](/words/fr/java/find-and-replace/) pour plus d'informations sur la recherche et le remplacement du contenu souhaité
