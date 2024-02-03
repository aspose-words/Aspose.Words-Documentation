---
title: Converter Word para Excel em C#
second_title: Aspose.Words para .NET
articleTitle: Converter um documento para Excel
linktitle: Converter um documento para Excel
description: "Converta PDF para Excel, XML para Excel, DOCX para Excel C#. Salve um documento em vários formatos em XLSX usando C#."
type: docs
weight: 15
url: /pt/net/convert-a-document-to-excel/
---

A conversão de documentos de um formato para outro é o principal recurso do Aspose.Words. Você pode converter documentos em qualquer formato [carregar formato](https://reference.aspose.com/words/net/aspose.words/loadformat/) disponível também para o formato XLSX.

## Converter um documento em XLSX

Converter um documento para XLSX é um processo bastante complicado. Para salvar seu documento no formato XLSX usando Aspose.Words, use a classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) e o novo elemento `Xlsx` na enumeração [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Conforme mencionado acima, você pode salvar o documento em qualquer formato de carregamento suportado por Aspose.Words para XLSX.

O exemplo de código a seguir mostra como salvar PDF em XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como XLSX. Essas opções podem ser especificadas pelo uso da classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), contendo propriedades que determinam como a saída XLSX será exibida.

{{% /alert %}}

## Encontre e substitua ao salvar em XLSX

Também usando Aspose.Words, você pode encontrar uma string ou expressão regular específica em seu documento e substituí-la pela correspondente que você precisa. Depois, você também pode salvar o resultado no formato XLSX.

O exemplo de código a seguir mostra como executar a operação localizar e substituir e salvar o resultado em XLSX:

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

## Especifique o nível de compactação ao salvar em XLSX

Você também pode especificar o nível de compactação ao salvar usando a propriedade [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

O exemplo de código a seguir mostra como especificar o nível de compactação ao salvar no formato XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Veja também

- Seção de documentação [Proteger ou criptografar um documento](/words/pt/net/protect-or-encrypt-a-document/) para obter mais informações sobre como proteger e criptografar um documento
- O artigo [Localizar e substituir](/words/pt/net/find-and-replace/) para obter mais informações sobre como encontrar e substituir o conteúdo desejado
