---
title: Dividir um documento em Java
second_title: Aspose.Words para Java
articleTitle: Dividir um documento
linktitle: Dividir um documento
description: "Aspose.Words para Java fornece-lhe uma maneira eficiente de dividir um documento em vários documentos por títulos ou seções, bem como páginas ou intervalos de páginas."
type: docs
weight: 90
url: /pt/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* ou *split um documento* é o processo de quebrar um grande documento em um maior número de arquivos menores. Existem várias razões para dividir um arquivo. Por exemplo, você só precisa de algumas páginas de um documento específico e não de todo. Ou por razões de privacidade, você quer compartilhar apenas algumas partes de um documento com outras pessoas. Com o recurso de divisão, você pode obter apenas as partes necessárias do documento e fazer as ações necessárias com eles, por exemplo, para marcar, salvar ou enviar.

Aspose.Words fornece-lhe uma maneira eficiente de dividir um documento em vários documentos por títulos ou seções. Você também pode dividir um documento por páginas ou por intervalos de páginas. Ambas as opções de divisão serão descritas neste artigo.

Para dividir um documento em arquivos menores usando Aspose.Words, você precisa seguir estes passos:

1. Carregar o documento em qualquer formato suportado.
1. Dividir o documento.
1. Salve os documentos de saída.

Depois de dividir um documento, você será capaz de abrir todos os documentos de saída que começarão com as páginas necessárias, texto, etc.

{{% alert color="primary" %}}

**Experimente online**

Você pode tentar esta funcionalidade com a nossa [Divisor de documento online gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir um documento usando critérios diferentes {#split-a-document-using-different-criteria}

Aspose.Words permite que você dividir EPUB ou documentos HTML em capítulos de acordo com vários critérios. No processo, o estilo e o layout do documento de origem são preservados para os documentos de saída.

Você pode especificar critérios usando o [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) enumeração. Então você pode dividir um documento em capítulos usando um dos seguintes critérios ou combinar mais de um critério juntos:

- parágrafo da rubrica,
- quebra de secção,
- quebra de coluna,
- quebra de página.

Ao salvar a saída para HTML, Aspose.Words salvar cada capítulo individual como um arquivo HTML separado. Como resultado, o documento será dividido em vários arquivos HTML. Ao salvar a saída para EPUB, Aspose.Words salvar o resultado em um único arquivo EPUB independentemente do `DocumentSplitCriteria` valor que usaste. Assim, usando DocumentSplitCriteria para documentos EPUB apenas afeta o aparecimento de seu conteúdo em aplicativos de leitores: o conteúdo será dividido em capítulos e o documento não aparecerá mais contínuo.

{{% alert color="primary" %}}

Você não pode dividir um documento usando o [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) propriedade ao salvar para o formato MHTML.

{{% /alert %}}

Nesta seção, consideramos apenas alguns dos possíveis critérios de divisão.

### Dividir um documento por Categoria {#split-a-document-by-headings}

Para dividir um documento em capítulos por títulos, use o **HeadingParagraph** valor do **DocumentSplitCriteria** propriedade.

Se você precisar dividir um documento por um nível específico de parágrafos da posição, como as posições 1, 2 e 3, use também o [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) propriedade. A saída será dividida por parágrafos formatados com o nível de cabeçalho especificado.

O exemplo de código a seguir mostra como dividir um documento em partes menores pelo cabeçalho:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Por favor, note que para este critério, Aspose.Words somente suporta salvar ao formato HTML quando se dividir.

Ao salvar para EPUB, o documento não é dividido em vários arquivos, e haverá apenas um arquivo de saída.

### Dividir um documento por seções {#split-a-document-by-sections}

Aspose.Words também permite que você use quebras de seção para dividir documentos e salvá-los em HTML. Com esta finalidade, use **SectionBreak** como o **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Há outra maneira de dividir o documento de origem em vários documentos de saída, e você pode escolher qualquer formato de saída suportado por Aspose.Words.

O exemplo de código a seguir mostra como dividir um documento em partes menores por quebras de seção (sem usar o `DocumentSplitCriteria` propriedade):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dividir por Páginas {#splitting-by-pages}

Você também pode dividir uma página de documento por página, por intervalos de página, ou começando com os números de página especificados. Neste caso, [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) método pode fazer o trabalho.

Esta seção descreve vários casos de uso de documentos de divisão por página usando [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe e a **ExtractPages** método.

{{% alert color="primary" %}}

Você pode usar qualquer [Formatos de suporte](/words/pt/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Devido às muitas nuances aparecendo ao reduzir o número de páginas, um jogo completo com o Microsoft Word layout é uma tarefa bastante complicada. Portanto, dependendo da complexidade do documento, pode haver pequenas diferenças no layout do documento resultante do documento original.

{{% /alert %}}

### Dividir uma página de documentos por página {#split-a-document-page-by-page}

Aspose.Words permite dividir uma página de documento multi-página por página.

O exemplo de código a seguir mostra como dividir um documento e salvar cada página como um documento separado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividir um documento por intervalos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir um documento multi-página por intervalos de páginas. Você pode dividir um arquivo em vários arquivos com vários intervalos de páginas ou apenas selecionar um intervalo e salvar apenas esta parte do documento de origem. Note que você pode escolher o intervalo de página de acordo com o número máximo e mínimo de página de um documento.

O exemplo de código a seguir mostra como dividir um documento em partes menores por faixa de página com índices de início e fim específicos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opção de retorno de chamada para salvar um documento {#callback-option-for-saving-a-document}

Você pode usar o [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) propriedade para controlar como Aspose.Words salva as peças do documento quando este documento é exportado para o formato HTML. Esta propriedade permite que você renomeie arquivos de saída ou até mesmo redireciona-los para fluxos personalizados.

Por favor, note que esta chamada não é útil ao salvar para EPUB porque todas as peças de saída devem ser salvas em um único recipiente – o arquivo .epub. Assim, redirecionamento de fluxo não é suportado, e o efeito de renomeação não é visível uma vez que os arquivos são renomeados dentro do recipiente.

## Mesclar o documento dividido com outro documento {#merge-the-split-document-with-another-file}

Aspose.Words permite que você mesclar o documento de divisão de saída com outro documento para formar um novo documento. Isso pode ser chamado de fusão de documentos.

O exemplo de código a seguir mostra como mesclar um documento dividido com outro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
