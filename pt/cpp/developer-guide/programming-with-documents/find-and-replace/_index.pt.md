---
title: Localizar e substituir Em C++
second_title: Aspose.Words para C++
articleTitle: Localizar e substituir
linktitle: Localizar e substituir
type: docs
description: "Encontre um padrão de string ou expressão regular em seu documento e substitua-o pelo texto desejado usando C++."
weight: 100
url: /pt/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Você pode navegar facilmente em seu documento usando um teclado e mouse, mas se tiver muitas páginas para percorrer, levará um bom tempo para encontrar um texto específico em um documento longo. Será mais demorado quando pretender substituir determinados caracteres ou palavras que utilizou no seu documento. A funcionalidade "Localizar e substituir" permite localizar uma sequência de caracteres num documento e substituí-la por outra sequência de caracteres.

Aspose.Words permite que você encontre uma string específica ou padrão de expressão regular em seu documento e substitua-o por uma alternativa sem instalar e usar aplicativos adicionais, como Microsoft Word. Isso acelerará muitas tarefas de digitação e formatação, potencialmente economizando horas de trabalho.

Este artigo explica como aplicar a substituição de strings e expressões regulares com o Suporte de metacaracteres.

## Formas de encontrar e substituir {#ways-to-find-and-replace}

Aspose.Words fornece duas maneiras de aplicar a operação localizar e substituir usando o seguinte:

1. *Simple string replacement* - para encontrar e substituir uma string específica por outra, é necessário especificar uma string de pesquisa (caracteres alfanuméricos) que será substituída de acordo com todas as ocorrências por outra string de substituição especificada. Ambas as cadeias não devem conter símbolos. Leve em consideração que a comparação de strings pode diferenciar maiúsculas de minúsculas, ou você pode não ter certeza da ortografia ou ter várias grafias semelhantes.
2. *Regular expressions* - para especificar uma expressão regular para encontrar as correspondências exatas da string e substituí-las de acordo com sua expressão regular. Observe que uma palavra é definida como sendo composta apenas por caracteres alfanuméricos. Se uma substituição for executada com apenas palavras inteiras sendo correspondidas e a string de entrada contiver símbolos, nenhuma frase será encontrada.

Além disso, você pode usar metacaracteres especiais com substituição de string simples e expressões regulares para especificar quebras na operação localizar e substituir.

Aspose.Words apresenta a funcionalidade localizar e substituir com o namespace [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Você pode trabalhar com muitas opções durante o processo localizar e substituir usando a classe [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Localizar e substituir texto usando substituição de String simples {#find-and-replace-text-using-simple-string-replacement}

Você pode usar um dos métodos [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) para localizar ou substituir uma string específica e retornar o número de substituições que foram feitas. Nesse caso, você pode especificar uma string a ser substituída, uma string que substituirá todas as suas ocorrências, se a substituição diferencia maiúsculas de minúsculas e se apenas palavras independentes serão afetadas.

O exemplo de código a seguir mostra como encontrar a string"_ CustomerName _ " e substituí-la pela string *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição simples da string:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

E depois de aplicar a substituição simples da corda:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Localizar e substituir texto usando expressões regulares {#find-and-replace-text-using-regular-expressions}

Uma expressão regular (regex) é um padrão que descreve uma determinada sequência de texto. Suponha que você queira substituir todas as ocorrências duplas de uma palavra por uma ocorrência de uma única palavra. Em seguida, você pode aplicar a seguinte expressão regular para especificar o padrão de palavra dupla: `([a-zA-Z]+) \1`.

Use o outro método [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) para pesquisar e substituir combinações de caracteres específicas definindo o parâmetro `Regex` como o padrão de expressão regular para encontrar correspondências.

O exemplo de código a seguir mostra como substituir strings que correspondem a um padrão de expressão regular por uma string de substituição especificada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição de string por expressões regulares:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

E depois de aplicar a substituição de string com expressões regulares:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Localizar e substituir String usando metacaracteres {#find-and-replace-text-using-metacharacters}

Você pode usar metacaracteres na string de pesquisa ou na string de substituição se um determinado texto ou frase for composto por vários parágrafos, seções ou páginas. Alguns dos metacaracteres incluem **&p** para uma quebra de parágrafo, **&b** para uma quebra de Seção, **&m** para uma quebra de página e **&l** para uma quebra de linha.

{{% alert color="primary" %}}

Observe que o metacaráter **&&** é igual a **&**. Por exemplo, se você precisar encontrar um texto para **&p** que não seja uma quebra de parágrafo, poderá usar **&&p**.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir texto por parágrafo e quebra de página:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Localizar e substituir String no Cabeçalho / Rodapé de um documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Pode localizar e substituir texto na secção cabeçalho/rodapé de um documento do Word utilizando a classe [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

O exemplo de código a seguir mostra como substituir o texto da seção de cabeçalho no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de cabeçalho:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

E depois de aplicar a substituição da string do cabeçalho:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

O exemplo de código para substituir o texto da secção de rodapé no documento é muito semelhante ao exemplo de código de cabeçalho anterior. Tudo o que você precisa fazer é substituir as duas linhas a seguir:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Com o seguinte:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de rodapé:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

E depois de aplicar a substituição da corda do rodapé:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ignorar texto durante localizar e substituir {#ignore-text-during-find-and-replace}

Ao aplicar a operação localizar e substituir, pode ignorar determinados segmentos do texto. Assim, certas partes do texto podem ser excluídas da pesquisa, e a localização e substituição podem ser aplicadas apenas às partes restantes.

Aspose.Words fornece muitas propriedades find E replace para ignorar texto, como [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), e [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

O exemplo de código a seguir mostra como ignorar o texto dentro das revisões de exclusão:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Personalizar a operação localizar e substituir {#customize-find-and-replace-operation}

Aspose.Words fornece muitos [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) diferentes para localizar e substituir texto, como aplicar formato específico com propriedades [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) e [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), usando substituições em padrões de substituição com propriedade [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) e outros.

O exemplo de código a seguir mostra como destacar uma palavra específica em seu documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words permite que você use a interface [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) para criar e chamar um método personalizado durante uma operação de substituição. Você pode ter alguns casos de uso em que precisa personalizar a operação localizar e substituir, como substituir o texto especificado por uma expressão regular com tags HTML, então basicamente você aplicará substituir por Inserir HTML.

Se você precisar substituir uma string por uma tag HTML, Aplique a interface **IReplacingCallback** para personalizar a operação localizar e substituir para que a correspondência comece no início de uma execução com o nó de correspondência do documento. Vamos fornecer vários exemplos de uso de **IReplacingCallback**.

O exemplo de código a seguir mostra como substituir o texto especificado por HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

O exemplo de código a seguir mostra como destacar números positivos com cor verde e números negativos com cor vermelha:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

O exemplo de código a seguir mostra Como preceder um número de linha para cada linha:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
