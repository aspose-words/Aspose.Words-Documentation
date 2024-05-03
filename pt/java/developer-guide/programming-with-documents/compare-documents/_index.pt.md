---
title: Compare Documentos em Java
second_title: Aspose.Words para Java
articleTitle: Comparar documentos
linktitle: Comparar documentos
type: docs
description: "Compare dois documentos em qualquer formato suportado e mostre alterações de conteúdo. Você pode aplicar opções avançadas ao comparar usando Java."
weight: 60
url: /pt/java/compare-documents/
---

Comparar documentos é um processo que identifica mudanças entre dois documentos e contém as mudanças como revisões. Este processo compara quaisquer dois documentos, incluindo versões de um documento específico, então as alterações entre ambos os documentos serão mostradas como revisões no primeiro documento.

O método de comparação é alcançado comparando palavras no nível do personagem ou no nível da palavra. Se uma palavra contém uma mudança de pelo menos um caractere, no resultado, a diferença será exibida como uma mudança de toda a palavra, não um caracter. Este processo de comparação é uma tarefa habitual nas indústrias jurídicas e financeiras.

Em vez de procurar manualmente diferenças entre documentos ou entre diferentes versões deles, você pode usar Aspose.Words para comparar documentos e obter alterações de conteúdo na formatação, cabeçalho / rodapé, tabelas e muito mais.

Este artigo explica como comparar documentos e como especificar propriedades de comparação avançadas.

{{% alert color="primary" %}}

**Experimente online**

Você pode comparar dois documentos online usando o [Comparação de documentos online](https://products.aspose.app/words/comparison) ferramenta.

Note que o método de comparação, descrito abaixo, é usado nesta ferramenta para garantir a obtenção de resultados iguais. Então você terá os mesmos resultados, mesmo usando a ferramenta de comparação on-line ou usando o método de comparação em Aspose.Words.

{{% /alert %}}

## Limitações e formatos de arquivo suportados {#limitations-and-supported-file-formats}

Comparar documentos é uma característica muito complexa. Existem várias partes da combinação de conteúdo que precisam ser analisadas para reconhecer todas as diferenças. A razão para esta complexidade é porque Aspose.Words visa obter os mesmos resultados de comparação como o Microsoft Word algoritmo de comparação.

A limitação geral para dois documentos que estão sendo comparados é que eles não devem ter revisões antes de chamar o método de comparação como essa limitação existe em Microsoft Word.

{{% alert color="primary" %}}

Note que você pode comparar qualquer dois documentos dentro do [Formatos de suporte](/words/pt/java/supported-document-formats/). Basicamente, você pode comparar objetos de documento e até mesmo você pode criar esses objetos do zero sem ter qualquer formato específico.

{{% /alert %}}

## Compare dois documentos {#compare-two-documents}

Quando você compara documentos, as diferenças do último documento do antigo aparecem como revisões para o primeiro. Quando você modificar um documento, cada edição terá sua própria revisão após executar o método de comparação.

Aspose.Words permite identificar diferenças de documentos usando o [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) método – isso é semelhante ao Microsoft Word recurso de comparação de documentos. Ele permite que você verifique documentos ou versões de documentos para encontrar diferenças e mudanças, incluindo modificações de formatação, como alterações de fonte, alterações de espaçamento, a adição de palavras e parágrafos.

Como resultado da comparação, os documentos podem ser determinados como iguais ou não iguais. O termo "igual" documentos significa que o método de comparação não é capaz de representar mudanças como revisões. Isso significa que tanto o texto de documento quanto a formatação de texto são os mesmos. Mas pode haver outras diferenças entre documentos. Por exemplo, Microsoft Word suporta apenas revisões de formato para estilos, e você não pode representar inserção de estilo / exclusão. Então os documentos podem ter um conjunto diferente de estilos, e o **Compare** método ainda não produz revisões.

O exemplo a seguir mostra como verificar se dois documentos são iguais ou não:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

O seguinte exemplo de código mostra como simplesmente aplicar o `Compare` método para dois documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Especificar Opções de Comparação Avançadas {#specify-advanced-comparing-properties}

Há muitas propriedades diferentes do [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) classe que você pode aplicar quando você quer comparar documentos.

Por exemplo, Aspose.Words permite que você ignore as alterações feitas durante uma operação de comparação para certos tipos de objetos dentro do documento original. Você pode selecionar a propriedade apropriada para o tipo de objeto, como [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), e outros, definindo-os para "true".

Além disso, Aspose.Words fornece o [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) propriedade com a qual você pode especificar se rastrear alterações por caracter ou por palavra.

Outra propriedade comum é uma escolha em que documento para mostrar alterações de comparação. Por exemplo, a caixa de diálogo "Compare documentos" em Microsoft Word tem a opção "Show changes in" – isso também afeta os resultados de comparação. Aspose.Words fornece o [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) propriedade que serve este propósito.

O exemplo a seguir mostra como definir as propriedades de comparação avançadas:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
