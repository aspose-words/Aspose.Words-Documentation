---
title: Trabalhando com documento de texto
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com documento de texto
linktitle: Trabalhando com documento de texto
description: "Trabalhe com um documento de texto e modifique seus objetos usando Python."
type: docs
weight: 430
url: /pt/python-net/working-with-text-document/
timestamp: 2024-01-27-14-07-04
---

Neste artigo aprenderemos quais opções podem ser úteis para trabalhar com um documento de texto via Aspose.Words. Observe que esta não é uma lista completa das opções disponíveis, mas apenas um exemplo de como trabalhar com algumas delas.

## Adicionar marcas bidirecionais

Você pode usar a propriedade [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/) para especificar se deseja adicionar marcas bidirecionais antes de cada execução BiDi ao exportar em formato de texto simples. Aspose.Words insere o caractere Unicode 'MARCA DA DIREITA PARA A ESQUERDA' (U+200F) antes de cada [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) bidirecional no texto. Esta opção corresponde à opção "Adicionar marcas bidirecionais" na caixa de diálogo Conversão de arquivo do MS Word quando você exporta para um formato de texto simples. Observe que ele aparece na caixa de diálogo apenas se algum dos idiomas de edição árabe ou hebraico for adicionado ao MS Word.

O exemplo de código a seguir mostra como usar a propriedade [add_bidi_marks](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/add_bidi_marks/). O valor padrão desta propriedade é `False`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-AddBidiMarks.py" >}}

## Reconhecer itens da lista durante o carregamento do TXT

Aspose.Words pode importar itens de lista de um arquivo de texto como números de lista ou texto simples em seu modelo de objeto de documento. A propriedade [detect_numbering_with_whitespaces](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_numbering_with_whitespaces/) permite especificar como os itens da lista numerada são reconhecidos quando um documento é importado do formato de texto simples:

* Se esta opção estiver definida como `True`, os espaços em branco também serão usados como delimitadores de número de lista: o algoritmo de reconhecimento de lista para numeração em estilo árabe (1., 1.1.2.) usa espaços em branco e símbolos de ponto (".").
* Se esta opção estiver definida como `False`, o algoritmo de reconhecimento de listas detecta parágrafos de lista, quando os números da lista terminam com ponto, colchete direito ou símbolos de marcador (como "•", "*", "-" ou "o").

O exemplo de código a seguir mostra como usar essa propriedade:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DetectNumberingWithWhitespaces.py" >}}

## Lidar com espaços iniciais e finais durante o carregamento TXT

Você pode controlar a forma de lidar com espaços iniciais e finais durante o carregamento do arquivo TXT. Os espaços iniciais podem ser aparados, preservados ou convertidos em recuo e os espaços finais podem ser aparados ou preservados.

O exemplo de código a seguir mostra como cortar espaços iniciais e finais ao importar um arquivo TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-HandleSpacesOptions.py" >}}

## Detectar a direção do texto do documento

Aspose.Words fornece propriedade [document_direction](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/document_direction/) na classe [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) para detectar a direção do texto (RTL/LTR) no documento. Esta propriedade define ou obtém instruções de texto do documento fornecidas na enumeração [DocumentDirection](https://reference.aspose.com/words/python-net/aspose.words.loading/documentdirection/). O valor padrão é da esquerda para a direita.

O exemplo de código a seguir mostra como detectar a direção do texto do documento ao importar o arquivo TXT:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_txt_load_options-DocumentTextDirection.py" >}}

## Exportar cabeçalho e rodapé na saída TXT

Se você deseja exportar cabeçalho e rodapé no documento TXT de saída, você pode usar a propriedade [export_headers_footers_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptionsbase/export_headers_footers_mode/). Esta propriedade especifica a forma como os cabeçalhos e rodapés são exportados para o formato de texto simples.

O exemplo de código a seguir mostra como exportar cabeçalhos e rodapés para formato de texto simples:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Document.docx")

options = aw.saving.TxtSaveOptions()
options.save_format = aw.SaveFormat.TEXT

# All headers and footers are placed at the very end of the output document.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.ALL_AT_END
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_A.txt", options)

# Only primary headers and footers are exported at the beginning and end of each section.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.PRIMARY_ONLY
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_B.txt", options)

# No headers and footers are exported.
options.export_headers_footers_mode = aw.saving.TxtExportHeadersFootersMode.NONE
doc.save(docs_base.artifacts_dir + "WorkingWithTxtSaveOptions.export_headers_footers_mode_C.txt", options)
{{< /highlight >}}

## Exportar recuo da lista na saída TXT

Aspose.Words introduziu a classe [TxtListIndentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtlistindentation/) que permite especificar como os níveis da lista são recuados durante a exportação para um formato de texto simples. Ao trabalhar com [TxtSaveOption](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/), a propriedade [list_indentation](https://reference.aspose.com/words/python-net/aspose.words.saving/txtsaveoptions/list_indentation/) é fornecida para especificar o caractere a ser usado para recuar níveis de lista e contar especificando quantos caracteres usar como recuo por nível de lista. O valor padrão para propriedade de caractere é '\0' indicando que não há recuo. Para a propriedade count, o valor padrão é 0, o que significa que não há recuo.

### Usando caractere de tabulação

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de tabulação:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseTabCharacterPerLevelForListIndentation.py" >}}

### Usando caractere espacial

O exemplo de código a seguir mostra como exportar níveis de lista usando caracteres de espaço:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_txt_save_options-UseSpaceCharacterPerLevelForListIndentation.py" >}}

