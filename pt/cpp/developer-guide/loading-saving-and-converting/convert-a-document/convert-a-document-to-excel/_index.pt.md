---
title: Converter Word para Excel em C++
second_title: Aspose.Words para C++
articleTitle: Converter um documento em Excel
linktitle: Converter um documento em Excel
description: "Converter PDF para Excel, XML para Excel, DOCX para Excel C++. Salve um documento em vários formatos em XLSX Usando C++."
type: docs
weight: 15
url: /pt/cpp/convert-a-document-to-excel/
---

A conversão de documentos de um formato para outro é a principal característica do Aspose.Words. Pode converter documentos em qualquer formato [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) disponível também para o formato XLSX.

## Converter um documento em XLSX

Converter um documento para XLSX é um processo bastante complicado. Para salvar seu documento no formato XLSX Usando Aspose.Words, use a classe **XlsxSaveOptions** e o novo elemento `Xlsx` na enumeração [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Como mencionado acima, você pode salvar o documento em qualquer formato de carregamento suportado por Aspose.Words a XLSX.

O exemplo de código a seguir mostra como salvar PDF a XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Localizar e substituir ao salvar em XLSX

Também usando Aspose.Words, você pode encontrar uma string ou expressão regular específica em seu documento e substituí-la pela correspondente que você precisa. Em seguida, você também pode salvar o resultado no formato XLSX.

O exemplo de código a seguir mostra como executar a operação localizar e substituir e salvar o resultado em XLSX:

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

## Especifique o nível de compressão ao salvar em XLSX

Você também pode especificar o nível de compactação ao salvar usando a propriedade **CompressionLevel**.

O exemplo de código a seguir mostra como especificar o nível de compactação ao salvar no formato XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Ver Também

- Secção de documentação [Proteger ou encriptar um documento](/words/cpp/protect-or-encrypt-a-document/) para obter mais informações sobre como proteger e criptografar um documento
- O artigo [Localizar e substituir](/words/cpp/find-and-replace/) para mais informações sobre como encontrar e substituir o conteúdo que pretende
