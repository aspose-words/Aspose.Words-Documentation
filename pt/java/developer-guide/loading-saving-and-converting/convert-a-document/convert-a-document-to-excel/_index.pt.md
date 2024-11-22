---
title: Converter Word para Excel em Java
second_title: Aspose.Words para Java
articleTitle: Converta um documento no Excel
linktitle: Converta um documento no Excel
description: "Converter PDF para Excel, XML para Excel, DOCX para Excel Java. Salvar um documento em vários formatos para XLSX usando Java."
type: docs
weight: 15
url: /pt/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Convertendo documentos de um formato para outro é o recurso emblemático de Aspose.Words. Você pode converter documentos em qualquer disponível [Forma de carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) também para o formato XLSX.

## Converter um documento para XLSX

Converter um documento para XLSX é um processo bastante complicado. Para salvar seu documento no formato XLSX usando Aspose.Words, usar o [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) classe e o novo `Xlsx` elemento no [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeração. Como mencionado acima, você pode salvar o documento em qualquer formato de carga suportado por Aspose.Words para XLSX.

O exemplo a seguir mostra como salvar PDF para XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, que podem afetar o resultado de salvar um documento como um XLSX. Estas opções podem ser especificadas pelo uso do [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) classe, contendo propriedades que determinam como a saída XLSX será exibida.

{{% /alert %}}

## Encontrar e substituir ao salvar a XLSX

Também usando Aspose.Words, você pode encontrar uma string específica ou expressão regular em seu documento e substituí-la pelo correspondente que você precisa. Então você também pode salvar o resultado para o formato XLSX.

O exemplo de código a seguir mostra como executar encontrar e substituir a operação e salvar o resultado para XLSX:

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

## Especificar nível de compressão ao salvar a XLSX

Você também pode especificar o nível de compressão ao salvar usando o [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) propriedade.

O exemplo de código a seguir mostra como especificar o nível de compressão ao salvar para o formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ver também

- Seção de documentação [Proteger ou Criptografar um documento](/words/pt/java/protect-or-encrypt-a-document/) para mais informações sobre a proteção e criptografia de um documento
- O artigo [Encontrar e substituir](/words/pt/java/find-and-replace/) para mais informações sobre como encontrar e substituir o conteúdo que você deseja
