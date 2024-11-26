---
title: Converter Word para Excel em Java
second_title: Aspose.Words para Java
articleTitle: Converter um documento em Excel
linktitle: Converter um documento em Excel
description: "Converter PDF em Excel, XML em Excel, DOCX em Excel Java. Salve um documento em vários formatos em XLSX Usando Java."
type: docs
weight: 15
url: /pt/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

A conversão de documentos de um formato para outro é a principal característica do Aspose.Words. Pode converter documentos em qualquer formato [formato da carga](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) disponível também para o formato XLSX.

## Converter um documento em XLSX

Converter um documento para XLSX é um processo bastante complicado. Para salvar seu documento no formato XLSX Usando Aspose.Words, use a classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) e o novo elemento `Xlsx` na enumeração [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Como mencionado acima, você pode salvar o documento em qualquer formato de carregamento suportado por Aspose.Words a XLSX.

O exemplo de código a seguir mostra como salvar PDF a XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Às vezes, é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como XLSX. Essas opções podem ser especificadas pelo uso da classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), contendo propriedades que determinam como a saída XLSX será exibida.

{{% /alert %}}

## Localizar e substituir ao salvar em XLSX

Também usando Aspose.Words, você pode encontrar uma string ou expressão regular específica em seu documento e substituí-la pela correspondente que você precisa. Em seguida, você também pode salvar o resultado no formato XLSX.

O exemplo de código a seguir mostra como executar a operação localizar e substituir e salvar o resultado em XLSX:

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

## Especifique o nível de compressão ao salvar em XLSX

Você também pode especificar o nível de compactação ao salvar usando a propriedade [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

O exemplo de código a seguir mostra como especificar o nível de compactação ao salvar no formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ver Também

- Secção de documentação [Proteger ou codificar um documento](/words/java/protect-or-encrypt-a-document/) para obter mais informações sobre como proteger e criptografar um documento
- O artigo [Localizar e substituir](/words/java/find-and-replace/) para mais informações sobre como encontrar e substituir o conteúdo que pretende
