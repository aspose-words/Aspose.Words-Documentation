---
title: Converter Word para Excel em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Converter um documento para Excel
linktitle: Converter um documento para Excel
description: "Converta PDF para Excel, XML para Excel, DOCX para Excel Python. Salve um documento em vários formatos em XLSX usando Python."
type: docs
weight: 15
url: /pt/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

A conversão de documentos de um formato para outro é o principal recurso do Aspose.Words. Você pode converter documentos em qualquer formato [carregar formato](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) disponível também para o formato XLSX.

## Converter um documento em XLSX

Converter um documento para XLSX é um processo bastante complicado. Para salvar seu documento no formato XLSX usando Aspose.Words, use a classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) e o novo elemento `Xlsx` na enumeração [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Conforme mencionado acima, você pode salvar o documento em qualquer formato de carregamento suportado por Aspose.Words para XLSX.

O exemplo de código a seguir mostra como salvar PDF em XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Às vezes é necessário especificar opções adicionais, o que pode afetar o resultado de salvar um documento como XLSX. Essas opções podem ser especificadas pelo uso da classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), contendo propriedades que determinam como a saída XLSX será exibida.

{{% /alert %}}

## Encontre e substitua ao salvar em XLSX

Também usando Aspose.Words, você pode encontrar uma string ou expressão regular específica em seu documento e substituí-la pela correspondente que você precisa. Depois, você também pode salvar o resultado no formato XLSX.

O exemplo de código a seguir mostra como executar a operação localizar e substituir e salvar o resultado em XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Especifique o nível de compactação ao salvar em XLSX

Você também pode especificar o nível de compactação ao salvar usando a propriedade [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

O exemplo de código a seguir mostra como especificar o nível de compactação ao salvar no formato XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Veja também

- Seção de documentação [Proteger ou criptografar um documento](/words/pt/python-net/protect-or-encrypt-a-document/) para obter mais informações sobre como proteger e criptografar um documento
- O artigo [Localizar e substituir](/words/pt/python-net/find-and-replace/) para obter mais informações sobre como encontrar e substituir o conteúdo desejado
