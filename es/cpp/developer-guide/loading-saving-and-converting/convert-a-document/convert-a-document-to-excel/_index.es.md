---
title: Convierta Word a Excel en C++
second_title: Aspose.Words para C++
articleTitle: Convertir un Documento a Excel
linktitle: Convertir un Documento a Excel
description: "Convierta PDF a Excel, XML a Excel, DOCX a Excel C++. Guarde un documento en varios formatos en XLSX usando C++."
type: docs
weight: 15
url: /es/cpp/convert-a-document-to-excel/
---

Convertir documentos de un formato a otro es la característica estrella de Aspose.Words. Puede convertir documentos en cualquier [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) disponible también al formato XLSX.

## Convertir un documento a XLSX

Convertir un documento a XLSX es un proceso bastante complicado. Para guardar su documento en formato XLSX usando Aspose.Words, use la clase **XlsxSaveOptions** y el nuevo elemento `Xlsx` en la enumeración [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Como se mencionó anteriormente, puede guardar el documento en cualquier formato de carga compatible con Aspose.Words en XLSX.

El siguiente ejemplo de código muestra cómo guardar PDF en XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Buscar y Reemplazar al Guardar en XLSX

También usando Aspose.Words, puede encontrar una cadena específica o expresión regular en su documento y reemplazarla con la que coincida con la que necesita. Luego también puede guardar el resultado en formato XLSX.

El siguiente ejemplo de código muestra cómo realizar la operación de búsqueda y reemplazo y guardar el resultado en XLSX:

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

## Especifique el Nivel de Compresión Al Guardar en XLSX

También puede especificar el nivel de compresión al guardar utilizando la propiedad **CompressionLevel**.

El siguiente ejemplo de código muestra cómo especificar el nivel de compresión al guardar en formato XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Véase También

- Sección de documentación [Proteger o Cifrar un Documento](/words/cpp/protect-or-encrypt-a-document/) para obtener más información sobre cómo proteger y cifrar un documento
- El artículo [Buscar y Reemplazar](/words/cpp/find-and-replace/) para obtener más información sobre cómo buscar y reemplazar el contenido que desea
