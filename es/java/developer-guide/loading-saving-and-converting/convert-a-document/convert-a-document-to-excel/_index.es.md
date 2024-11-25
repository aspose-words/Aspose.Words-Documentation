---
title: Convertir Word a Excel en Java
second_title: Aspose.Words por Java
articleTitle: Convertir un Documento a Excel
linktitle: Convertir un Documento a Excel
description: "Convierta PDF en Excel, XML en Excel, DOCX en Excel Java. Guarde un documento en varios formatos en XLSX usando Java."
type: docs
weight: 15
url: /es/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Convertir documentos de un formato a otro es la característica estrella de Aspose.Words. Puede convertir documentos en cualquier formato [formato de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) disponible también a XLSX.

## Convertir un documento a XLSX

Convertir un documento a XLSX es un proceso bastante complicado. Para guardar el documento en formato XLSX usando Aspose.Words, use la clase [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) y el nuevo elemento `Xlsx` en la enumeración [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Como se mencionó anteriormente, puede guardar el documento en cualquier formato de carga compatible con Aspose.Words a XLSX.

El siguiente ejemplo de código muestra cómo guardar PDF en XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, lo que puede afectar el resultado de guardar un documento como XLSX. Estas opciones se pueden especificar mediante el uso de la clase [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), que contiene propiedades que determinan cómo se mostrará la salida XLSX.

{{% /alert %}}

## Buscar y Reemplazar al Guardar en XLSX

También usando Aspose.Words, puede encontrar una cadena específica o expresión regular en su documento y reemplazarla con la que coincida con la que necesita. Luego, también puede guardar el resultado en formato XLSX.

El siguiente ejemplo de código muestra cómo realizar la operación de búsqueda y reemplazo y guardar el resultado en XLSX:

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

## Especifique el Nivel de compresión Al Guardar en XLSX

También puede especificar el nivel de compresión al guardar utilizando la propiedad [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

El siguiente ejemplo de código muestra cómo especificar el nivel de compresión al guardar en formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Véase También

- Sección de documentación [Proteger o Cifrar un Documento](/words/java/protect-or-encrypt-a-document/) para obtener más información sobre cómo proteger y cifrar un documento
- El artículo [Buscar y Reemplazar](/words/java/find-and-replace/) para obtener más información sobre cómo buscar y reemplazar el contenido que desea
