﻿---
title: Dividir um documento em Java
second_title: Aspose.Words para Java
articleTitle: Dividir um documento
linktitle: Dividir um documento
description: "Aspose.Words para Java fornece uma maneira eficiente de dividir um documento em vários documentos por títulos ou seções, bem como páginas ou intervalos de páginas."
type: docs
weight: 90
url: /pt/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* ou *split a document* é o processo de quebrar um documento grande em um número maior de arquivos menores. Existem várias razões para dividir um ficheiro. Por exemplo, você só precisa de algumas páginas de um documento específico e não de todo. Ou, por razões de Privacidade, pretende partilhar apenas algumas partes de um documento com outras pessoas. Com o recurso de divisão, você pode obter apenas as partes necessárias do documento e executar as ações necessárias com elas, por exemplo, para marcar, salvar ou enviar.

Aspose.Words fornece uma maneira eficiente de dividir um documento em vários documentos por títulos ou seções. Você também pode dividir um documento por páginas ou por intervalos de páginas. Ambas as opções de divisão serão descritas neste artigo.

Para dividir um documento em arquivos menores usando Aspose.Words, você precisa seguir estas etapas:

1. Carregue o documento em qualquer formato suportado.
1. Dividir o documento.
1. Salve os documentos de saída.

Depois de dividir um documento, você poderá abrir TODOS os documentos de saída que começarão com as páginas, texto, etc.necessários.

{{% alert color="primary" %}}

**Experimente online**

Pode experimentar esta funcionalidade com o nosso [Divisor de documentos online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir um documento utilizando critérios diferentes {#split-a-document-using-different-criteria}

Aspose.Words permite dividir EPUB ou HTML documentos em capítulos de acordo com vários critérios. No processo, o estilo e o layout do documento de origem são preservados para os documentos de saída.

Você pode especificar critérios usando a enumeração [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Assim, você pode dividir um documento em capítulos usando um dos seguintes critérios ou combinar mais de um critério:

- rubrica,
- quebra de secção,
- quebra de coluna,
- quebra de página.

Ao salvar a saída em HTML, Aspose.Words Salve cada capítulo individual como um arquivo HTML separado. Como resultado, o documento será dividido em vários HTML arquivos. Ao salvar a saída em EPUB, Aspose.Words Salve o resultado em um único arquivo EPUB, independentemente do valor `DocumentSplitCriteria` usado. Portanto, o uso de DocumentSplitCriteria para EPUB documentos afeta apenas a aparência de seu conteúdo nos aplicativos do leitor: o conteúdo será dividido em capítulos e o documento não aparecerá mais contínuo.

{{% alert color="primary" %}}

Não é possível dividir um documento usando a propriedade [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) ao salvar no formato MHTML.

{{% /alert %}}

Nesta secção, consideramos apenas alguns dos possíveis critérios de divisão.

### Dividir um documento por rubricas {#split-a-document-by-headings}

Para dividir um documento em capítulos por títulos, use o valor **HeadingParagraph** da propriedade **DocumentSplitCriteria**.

Se você precisar dividir um documento por um nível específico de parágrafos de título, como títulos 1, 2 e 3, use também a propriedade [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). A saída será dividida por parágrafos formatados com o nível de cabeçalho especificado.

O exemplo de código a seguir mostra como dividir um documento em partes menores por título:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Observe que, para este critério, Aspose.Words só suporta salvar no formato HTML ao dividir.

Ao salvar em EPUB, o documento não é dividido em vários arquivos e haverá apenas um arquivo de saída.

### Dividir um documento por secções {#split-a-document-by-sections}

Aspose.Words também permite que você use quebras de seção para dividir documentos e salvá-los em HTML. Para este fim, use **SectionBreak** como o **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Há outra maneira de dividir o documento de origem em vários documentos de saída, e você pode escolher qualquer formato de saída suportado por Aspose.Words.

O exemplo de código a seguir mostra como dividir um documento em partes menores por quebras de seção (sem usar a propriedade `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dividido por páginas {#splitting-by-pages}

Você também pode dividir um documento página por página, por intervalos de páginas ou começando com os números de página especificados. Nesse caso, o método [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) pode fazer o trabalho.

Esta seção descreve vários casos de uso de dividir documentos por paginado usando a classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e o método **ExtractPages**.

{{% alert color="primary" %}}

Você pode usar qualquer [formato de sa poliuretda suportado por Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Devido às muitas nuances que aparecem enquanto reduz o número de páginas, uma correspondência completa com o layout Microsoft Word é uma tarefa bastante complicada. Portanto, dependendo da complexidade do documento, pode haver pequenas diferenças no layout do documento resultante do documento original.

{{% /alert %}}

### Dividir um documento página por página {#split-a-document-page-by-page}

Aspose.Words permite dividir um documento de várias páginas, página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividir um documento por intervalos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir um documento de várias páginas por intervalos de páginas. Você pode dividir um arquivo em vários arquivos com vários intervalos de páginas ou apenas selecionar um intervalo e salvar apenas esta parte do documento de origem. Observe que você pode escolher o intervalo de páginas de acordo com o número máximo e mínimo de páginas de um documento.

O exemplo de código a seguir mostra como dividir um documento em partes menores por intervalo de páginas com índices iniciais e finais específicos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opção de retorno de chamada para salvar um documento {#callback-option-for-saving-a-document}

Você pode usar a propriedade [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) para controlar como Aspose.Words salva partes do documento quando este documento é exportado para o formato HTML. Esta propriedade permite renomear arquivos de saída ou mesmo redirecioná-los para fluxos personalizados.

Observe que esse retorno de chamada não é útil ao salvar em EPUB porque todas as partes de saída devem ser salvas em um único contêiner – o.ficheiro epub. Portanto, o redirecionamento de fluxo não é suportado e o efeito de renomeação não é visível, pois os arquivos são renomeados dentro do contêiner.

## Mesclar o documento dividido com outro documento {#merge-the-split-document-with-another-file}

Aspose.Words permite mesclar o documento dividido de saída com outro documento para formar um novo documento. Isso pode ser chamado de mesclagem de documentos.

O exemplo de código a seguir mostra como mesclar um documento dividido com outro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
