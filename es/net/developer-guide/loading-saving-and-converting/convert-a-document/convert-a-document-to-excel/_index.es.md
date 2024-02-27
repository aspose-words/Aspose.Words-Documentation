---
title: Convertir Word a Excel en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir un documento a Excel
linktitle: Convertir un documento a Excel
description: "Convierta PDF a Excel, XML a Excel, DOCX a Excel C#. Guarde un documento en varios formatos en XLSX usando C#."
type: docs
weight: 15
url: /es/net/convert-a-document-to-excel/
---

La conversión de documentos de un formato a otro es la característica principal de Aspose.Words. Puede convertir documentos en cualquier [cargar formato](https://reference.aspose.com/words/net/aspose.words/loadformat/) disponible también al formato XLSX.

## Convertir un documento a XLSX

Convertir un documento a XLSX es un proceso bastante complicado. Para guardar su documento en formato XLSX usando Aspose.Words, use la clase [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) y el nuevo elemento `Xlsx` en la enumeración [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Como se mencionó anteriormente, puede guardar el documento en cualquier formato de carga admitido por Aspose.Words a XLSX.

El siguiente ejemplo de código muestra cómo guardar PDF en XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

A veces es necesario especificar opciones adicionales, lo que puede afectar el resultado de guardar un documento como XLSX. Estas opciones se pueden especificar mediante el uso de la clase [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), que contiene propiedades que determinan cómo se mostrará la salida XLSX.

{{% /alert %}}

## Buscar y reemplazar al guardar en XLSX

También usando Aspose.Words, puede encontrar una cadena específica o expresión regular en su documento y reemplazarla con la que coincida que necesita. Luego también puedes guardar el resultado en formato XLSX.

El siguiente ejemplo de código muestra cómo realizar la operación de buscar y reemplazar y guardar el resultado en XLSX:

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

## Especifique el nivel de compresión al guardar en XLSX

También puede especificar el nivel de compresión al guardar usando la propiedad [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

El siguiente ejemplo de código muestra cómo especificar el nivel de compresión al guardar en formato XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ver también

- Sección de documentación [Proteger o cifrar un documento](/words/es/net/protect-or-encrypt-a-document/) para obtener más información sobre cómo proteger y cifrar un documento.
- El artículo [Encontrar y reemplazar](/words/es/net/find-and-replace/) para obtener más información sobre cómo buscar y reemplazar el contenido que desea.
