---
title: Encontrar e substituir em Java
second_title: Aspose.Words para Java
articleTitle: Encontrar e substituir
linktitle: Encontrar e substituir
type: docs
description: "Encontre uma string ou padrão de expressão regular em seu documento e substitua-a pelo texto que você deseja usar Java."
weight: 100
url: /pt/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Você pode facilmente navegar dentro de seu documento usando um teclado e mouse, mas se você tem muitas páginas para rolar através, demorará bastante tempo para encontrar texto específico em um documento longo. Será mais demorado quando você quiser substituir certos caracteres ou palavras que você usou em seu documento. A funcionalidade "Encontrar e substituir" permite encontrar uma sequência de caracteres em um documento e substituí-lo por outra sequência de caracteres.

Aspose.Words permite que você encontre uma string específica ou padrão de expressão regular em seu documento e substitua-a por uma alternativa sem instalar e usar aplicativos adicionais, como Microsoft Word. Isso irá acelerar muitas tarefas de digitação e formatação, potencialmente economizando horas de trabalho.

Este artigo explica como aplicar a substituição de cordas e expressões regulares com o apoio de metacaracters.

## Maneiras de encontrar e substituir {#ways-to-find-and-replace}

Aspose.Words fornece duas maneiras de aplicar a operação de encontrar e substituir usando o seguinte:

1. * Substituição de string simples* – para encontrar e substituir uma string específica por outra, você precisa especificar uma cadeia de pesquisa (personagens alfaméricos) que será substituída de acordo com todas as ocorrências com outra string de substituição especificada. Ambas as cordas não devem conter símbolos. Tenha em conta que a comparação de strings pode ser sensível a casos, ou você pode não ter certeza de ortografia ou ter várias ortografias semelhantes.
2. * Expressões regulares* – para especificar uma expressão regular para encontrar as correspondências de string exatas e substituí-las de acordo com sua expressão regular. Note que uma palavra é definida como sendo composta de apenas caracteres alfanuméricos. Se um substituto é executado com apenas palavras inteiras sendo combinadas e a cadeia de entrada acontece para conter símbolos, então nenhuma frase será encontrada.

Além disso, você pode usar metacaracters especiais com simples substituição de cadeia de caracteres e expressões regulares para especificar quebras dentro da operação de encontrar e substituir.

Aspose.Words apresenta a funcionalidade de encontrar e substituir [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Você pode trabalhar com muitas opções durante o processo de encontrar e substituir usando [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) classe.

### Localizar e substituir texto usando simples String substituição {#find-and-replace-text-using-simple-string-replacement}

Você pode usar um dos [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) métodos para encontrar ou substituir uma string particular e retornar o número de substituições que foram feitas. Neste caso, você pode especificar uma string a ser substituída, uma string que substituirá todas as suas ocorrências, se a substituição é sensível a casos, e se apenas as palavras independentes serão afetadas.

O exemplo de código a seguir mostra como encontrar a string "_CustomerName_" e substituí-la pela string *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição de string simples:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

E depois de aplicar a substituição de string simples:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Encontrar e substituir texto usando expressões regulares {#find-and-replace-text-using-regular-expressions}

Uma expressão regular (regex) é um padrão que descreve uma certa sequência de texto. Suponha que você queira substituir todas as ocorrências duplas de uma palavra com uma única ocorrência de palavra. Então você pode aplicar a seguinte expressão regular para especificar o padrão de palavras duplas: `([a-zA-Z]+) \1`.

Use o outro [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) método para pesquisar e substituir combinações de caracteres particulares, definindo o `Regex` parâmetro como o padrão de expressão regular para encontrar jogos.

O exemplo de código a seguir mostra como substituir strings que correspondem a um padrão de expressão regular com uma string de substituição especificada:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Você pode notar a diferença entre o documento antes de aplicar a substituição de string com expressões regulares:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

E depois de aplicar a substituição de string com expressões regulares:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Encontrar e substituir corda usando metacaracters {#find-and-replace-text-using-metacharacters}

Você pode usar metacaracters na cadeia de pesquisa ou na string de substituição se um texto ou frase em particular é composto por vários parágrafos, seções ou páginas. Alguns dos metacaracters incluem **&p** para uma quebra de parágrafo, **&b** para um intervalo de seção, **&m** para uma quebra de página, e **&l** para uma quebra de linha.

{{% alert color="primary" %}}

Note que o metacaracter **&&** igual a **&**. Por exemplo, se você precisar encontrar o texto para **&p** que não é uma quebra de parágrafo, então você pode usar **&&p**.

{{% /alert %}}

O exemplo a seguir mostra como substituir texto por parágrafo e quebra de página:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Encontrar e substituir corda no cabeçalho/Footer de um documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Você pode encontrar e substituir texto na seção cabeçalho / rodapé de um documento do Word usando o [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) classe.

O exemplo de código a seguir mostra como substituir o texto da seção de cabeçalho em seu documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Você pode notar a diferença entre o documento antes de aplicar a substituição de cadeia de cabeçalho:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

E depois de aplicar a substituição de cadeia de cabeçalho:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

O exemplo de código para substituir o texto da seção rodapé em seu documento é muito semelhante ao exemplo de código de cabeçalho anterior. Tudo o que você precisa fazer é substituir as seguintes duas linhas:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Com o seguinte:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Você pode notar a diferença entre o documento antes de aplicar a substituição da cadeia de rodapé:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

E depois de aplicar substituição de cadeia de rodapé:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorar texto durante o Localizar e substituir {#ignore-text-during-find-and-replace}

Ao aplicar a operação de busca e substituição, você pode ignorar certos segmentos do texto. Assim, certas partes do texto podem ser excluídas da pesquisa, e o achado e substituição pode ser aplicado apenas às partes restantes.

Aspose.Words fornece muitos encontrar e substituir propriedades para ignorar texto, tais como [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), e [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

O exemplo de código a seguir mostra como ignorar texto dentro deletar revisões:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personalize a operação Localizar e Substituir {#customize-find-and-replace-operation}

Aspose.Words fornece muitos diferentes [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) para encontrar e substituir texto como a aplicação de formato específico [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) e [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) propriedades, usando substituições em padrões de substituição com [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) propriedade, e outros.

O exemplo de código a seguir mostra como destacar uma palavra específica no seu documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words permite que você use o [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interface para criar e chamar um método personalizado durante uma operação de substituição. Você pode ter alguns casos de uso onde você precisa personalizar a operação de encontrar e substituir, como substituir o texto especificado com uma expressão regular com tags HTML, então basicamente você aplicará substituir por inserir HTML.

Se você precisar substituir uma string por uma tag HTML, aplique a **IReplacingCallback** interface para personalizar a operação de encontrar e substituir para que a partida comece no início de uma execução com o nó de correspondência do seu documento. Vamos fornecer vários exemplos de uso **IReplacingCallback**.

O exemplo de código a seguir mostra como substituir texto especificado com HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


O exemplo a seguir mostra como destacar números positivos com cor verde e números negativos com cor vermelha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

O exemplo de código a seguir mostra como preparar um número de linha para cada linha:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
