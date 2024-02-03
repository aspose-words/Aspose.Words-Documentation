---
title: Dividir um documento em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Dividir um documento
linktitle: Dividir um documento
description: "Divida um documento em vários arquivos usando Python. Use o recurso de divisão para dividir efetivamente um documento por títulos ou seções, bem como por páginas ou intervalos de páginas."
type: docs
weight: 90
url: /pt/python-net/split-a-document/
---

*Splitting* ou *dividir um documento* é o processo de dividir um documento grande em um número maior de arquivos menores. Existem vários motivos para dividir um arquivo. Por exemplo, você só precisa de algumas páginas de um documento específico e não do documento inteiro. Ou, por motivos de privacidade, você deseja compartilhar apenas algumas partes de um documento com outras pessoas. Com o recurso de divisão, você pode obter apenas as partes necessárias do documento e realizar as ações necessárias com elas, por exemplo, marcar, salvar ou enviar.

Aspose.Words fornece uma maneira eficiente de dividir um documento em vários documentos por títulos ou seções. Você também pode dividir um documento por páginas ou intervalos de páginas. Ambas as opções de divisão serão descritas neste artigo.

Para dividir um documento em arquivos menores usando Aspose.Words, você precisa seguir estas etapas:

1. Carregue o documento em qualquer formato compatível.
1. Divida o documento.
1. Salve os documentos de saída.

Depois de dividir um documento, você poderá abrir todos os documentos de saída que começarão com as páginas, texto, etc. necessários.

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Divisor de documentos online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir um documento usando diferentes critérios {#split-a-document-using-different-criteria}

Aspose.Words permite dividir documentos EPUB ou HTML em capítulos de acordo com vários critérios. No processo, o estilo e o layout do documento de origem são preservados para os documentos de saída.

Você pode especificar critérios usando a enumeração [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Portanto, você pode dividir um documento em capítulos usando um dos seguintes critérios ou combinar mais de um critério:

- parágrafo de título,
- quebra de seção,
- quebra de coluna,
- quebra de página.

Ao salvar a saída em HTML, o Aspose.Words salva cada capítulo individual como um arquivo HTML separado. Como resultado, o documento será dividido em vários arquivos HTML. Ao salvar a saída em EPUB, o Aspose.Words salva o resultado em um único arquivo EPUB, independentemente do valor [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) usado. Assim, usar [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) para documentos EPUB afeta apenas a aparência de seu conteúdo nos aplicativos de leitura: o conteúdo será dividido em capítulos e o documento não aparecerá mais contínuo.

{{% alert color="primary" %}}

Você não pode dividir um documento usando a propriedade [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) ao salvar no formato MHTML.

{{% /alert %}}

Nesta seção, consideramos apenas alguns dos possíveis critérios de divisão.

### Dividir um documento por títulos {#split-a-document-by-headings}

Para dividir um documento em capítulos por títulos, use o valor [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) da propriedade [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/).

Se você precisar dividir um documento por um nível específico de parágrafos de título, como títulos 1, 2 e 3, use também a propriedade [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/). A saída será dividida por parágrafos formatados com o nível de título especificado.

O exemplo de código a seguir mostra como dividir um documento em partes menores por título:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Observe que, para este critério, Aspose.Words só suporta salvar no formato HTML durante a divisão.

Ao salvar em EPUB, o documento não será dividido em vários arquivos e haverá apenas um arquivo de saída.

### Dividir um documento por seções {#split-a-document-by-sections}

Aspose.Words também permite usar quebras de seção para dividir documentos e salvá-los em HTML. Para isso, use [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) como [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Existe outra maneira de dividir o documento de origem em vários documentos de saída e você pode escolher qualquer formato de saída suportado pelo Aspose.Words.

O exemplo de código a seguir mostra como dividir um documento em partes menores por quebras de seção (sem usar a propriedade [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Divisão por páginas {#splitting-by-pages}

Você também pode dividir um documento página por página, por intervalos de páginas ou começando com os números de página especificados. Nesse caso, o método [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) pode fazer o trabalho.

Esta seção descreve vários casos de uso de divisão de documentos por paginação usando a classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) e o método [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/).

{{% alert color="primary" %}}

Você pode usar qualquer [Formatos de documentos suportados](/words/pt/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Devido às muitas nuances que aparecem ao reduzir o número de páginas, uma correspondência completa com o layout Microsoft Word é uma tarefa bastante complicada. Portanto, dependendo da complexidade do documento, pode haver pequenas diferenças no layout do documento resultante em relação ao documento original.

{{% /alert %}}

### Dividir uma página de documento por página {#split-a-document-page-by-page}

Aspose.Words permite dividir um documento de várias páginas página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Dividir um documento por intervalos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir um documento de várias páginas por intervalos de páginas. Você pode dividir um arquivo em vários arquivos com vários intervalos de páginas ou apenas selecionar um intervalo e salvar apenas esta parte do documento de origem. Observe que você pode escolher o intervalo de páginas de acordo com o número máximo e mínimo de páginas de um documento.

O exemplo de código a seguir mostra como dividir um documento em partes menores por intervalo de páginas com índices iniciais e finais específicos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Mesclar o documento dividido com outro arquivo {#merge-the-split-document-with-another-file}

Aspose.Words permite mesclar o documento dividido de saída com outro documento para formar um novo documento. Isso pode ser chamado de mesclagem de documentos.

O exemplo de código a seguir mostra como mesclar um documento dividido com outro documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
