---
title: Convertir Word en Excel en Java
second_title: Aspose.Words para Java
articleTitle: Convertir un documento en Excel
linktitle: Convertir un documento en Excel
description: "Convertir PDF en Excel, XML en Excel, DOCX en Excel Java. Guardar un documento en varios formatos a XLSX utilizando Java."
type: docs
weight: 15
url: /es/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Convertir documentos de un formato a otro es la característica insignia de Aspose.Words. Usted puede convertir documentos en cualquier disponible [formato de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) también al formato XLSX.

## Convertir un documento en XLSX

Convertir un documento en XLSX es un proceso bastante complicado. Para guardar su documento en formato XLSX utilizando Aspose.Words," utilizar el [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) clase y la nueva `Xlsx` elemento en el [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeración. Como se mencionó anteriormente, puede guardar el documento en cualquier formato de carga soportado por Aspose.Words a XLSX.

El siguiente ejemplo de código muestra cómo guardar PDF a XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, que pueden afectar el resultado de guardar un documento como XLSX. Estas opciones se pueden especificar mediante el uso del [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) clase, que contiene propiedades que determinan cómo se mostrará la salida XLSX.

{{% /alert %}}

## Encontrar y reemplazar al ahorrar a XLSX

También utiliza Aspose.Words, Usted puede encontrar una cadena específica o una expresión regular en su documento y reemplazarlo con el que usted necesita. Entonces también puede guardar el resultado en formato XLSX.

El siguiente ejemplo de código muestra cómo realizar encontrar y reemplazar el resultado de operación y guardar a XLSX:

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

## Especifique el nivel de compresión al ahorrar a XLSX

También puede especificar el nivel de compresión cuando se guarda utilizando el [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) propiedad.

El siguiente ejemplo de código muestra cómo especificar el nivel de compresión al guardar el formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vea también

- Sección de documentación [Proteger o cifrar un documento](/words/es/java/protect-or-encrypt-a-document/) para más información sobre la protección y cifrado de un documento
- El artículo [Encontrar y reemplazar](/words/es/java/find-and-replace/) para más información sobre encontrar y reemplazar el contenido que desea
