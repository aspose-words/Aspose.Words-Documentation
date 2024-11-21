---
title: Convertir Word en Excel en C++
second_title: Aspose.Words pour C++
articleTitle: Convertir un document en Excel
linktitle: Convertir un document en Excel
description: "Convertissez PDF en Excel, XML en Excel, DOCX en Excel C++. Enregistrez un document dans différents formats au format XLSX à l'aide de C++."
type: docs
weight: 15
url: /fr/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversion de documents d'un format à un autre est la fonctionnalité phare de Aspose.Words. Vous pouvez également convertir des documents dans n'importe quel format [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) disponible au format XLSX.

## Convertir un document en XLSX

La conversion d'un document en XLSX est un processus assez compliqué. Pour enregistrer votre document au format XLSX à l'aide de Aspose.Words, utilisez la classe **XlsxSaveOptions** et le nouvel élément `Xlsx` dans l'énumération [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Comme mentionné ci-dessus, vous pouvez enregistrer le document dans n'importe quel format de chargement pris en charge par Aspose.Words vers XLSX.

L'exemple de code suivant montre comment enregistrer PDF dans XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Rechercher et remplacer Lors de l'enregistrement sur XLSX

En utilisant également Aspose.Words, vous pouvez trouver une chaîne ou une expression régulière spécifique dans votre document et la remplacer par celle dont vous avez besoin. Ensuite, vous pouvez également enregistrer le résultat au format XLSX.

L'exemple de code suivant montre comment effectuer une opération de recherche et de remplacement et enregistrer le résultat dans XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Spécifiez le niveau de compression Lors de l'enregistrement au format XLSX

Vous pouvez également spécifier le niveau de compression lors de l'enregistrement à l'aide de la propriété **CompressionLevel**.

L'exemple de code suivant montre comment spécifier le niveau de compression lors de l'enregistrement au format XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Voir Aussi

- Section de documentation [Protéger ou chiffrer un document](/words/cpp/protect-or-encrypt-a-document/) pour plus d'informations sur la protection et le chiffrement d'un document
- L'article [Trouver et Remplacer](/words/cpp/find-and-replace/) pour plus d'informations sur la recherche et le remplacement du contenu souhaité
