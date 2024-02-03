---
title: Localizar e substituir em C#
second_title: Aspose.Words para .NET
articleTitle: Localizar e substituir
linktitle: Localizar e substituir
type: docs
description: "Encontre uma string ou padrão de expressão regular em seu documento e substitua-o pelo texto desejado usando C#."
weight: 100
url: /pt/net/find-and-replace/
---

Você pode navegar facilmente em seu documento usando teclado e mouse, mas se tiver muitas páginas para percorrer, demorará um pouco para encontrar um texto específico em um documento longo. Será mais demorado quando você quiser substituir determinados caracteres ou palavras que usou em seu documento. A funcionalidade "Localizar e substituir" permite localizar uma sequência de caracteres em um documento e substituí-la por outra sequência de caracteres.

Aspose.Words permite que você encontre uma string específica ou padrão de expressão regular em seu documento e substitua-o por uma alternativa sem instalar e usar aplicativos adicionais, como Microsoft Word. Isso irá acelerar muitas tarefas de digitação e formatação, potencialmente economizando horas de trabalho.

Este artigo explica como aplicar substituição de string e expressões regulares com suporte de metacaracteres.

## Maneiras de encontrar e substituir {#ways-to-find-and-replace}

Aspose.Words fornece duas maneiras de aplicar a operação localizar e substituir usando o seguinte:

1. *Substituição simples de string* – para localizar e substituir uma string específica por outra, você precisa especificar uma string de pesquisa (caracteres alfanuméricos) que será substituída de acordo com todas as ocorrências por outra string de substituição especificada. Ambas as strings não devem conter símbolos. Leve em consideração que a comparação de strings pode diferenciar maiúsculas de minúsculas ou você pode não ter certeza da ortografia ou ter várias grafias semelhantes.
2. *Expressões regulares* – para especificar uma expressão regular para encontrar as correspondências exatas da string e substituí-las de acordo com sua expressão regular. Observe que uma palavra é definida como composta apenas por caracteres alfanuméricos. Se a substituição for executada com correspondência apenas de palavras inteiras e a string de entrada contiver símbolos, nenhuma frase será encontrada.

Além disso, você pode usar metacaracteres especiais com substituição simples de string e expressões regulares para especificar quebras na operação localizar e substituir.

Aspose.Words apresenta a funcionalidade localizar e substituir com o namespace [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). Você pode trabalhar com muitas opções durante o processo de localização e substituição usando a classe [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Encontre e substitua texto usando substituição simples de string {#find-and-replace-text-using-simple-string-replacement}

Você pode usar um dos métodos [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) para localizar ou substituir uma string específica e retornar o número de substituições que foram feitas. Nesse caso, você pode especificar uma string a ser substituída, uma string que substituirá todas as suas ocorrências, se a substituição diferencia maiúsculas de minúsculas e se apenas palavras independentes serão afetadas.

O exemplo de código a seguir mostra como encontrar a string "_CustomerName_" e substituí-la pela string *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição simples de string:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="antes da substituição de string simples" style="width:600px"/>

E depois de aplicar a substituição simples de string:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="após substituição de string simples" style="width:600px"/>

### Encontre e substitua texto usando expressões regulares {#find-and-replace-text-using-regular-expressions}

Uma expressão regular (regex) é um padrão que descreve uma determinada sequência de texto. Suponha que você queira substituir todas as ocorrências duplas de uma palavra por uma única ocorrência de palavra. Em seguida, você pode aplicar a seguinte expressão regular para especificar o padrão de palavra dupla: `([a-zA-Z]+) \1`.

Use o outro método [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) para pesquisar e substituir combinações específicas de caracteres, definindo o parâmetro `Regex` como o padrão de expressão regular para encontrar correspondências.

O exemplo de código a seguir mostra como substituir cadeias de caracteres que correspondem a um padrão de expressão regular por uma cadeia de caracteres de substituição especificada:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Você pode notar a diferença no documento antes de aplicar a substituição de string por expressões regulares:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="antes da substituição por expressões regulares" style="width:600px"/>

E depois de aplicar a substituição de string por expressões regulares:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="pós-substituição por expressões regulares" style="width:600px"/>

### Encontre e substitua string usando metacaracteres {#find-and-replace-text-using-metacharacters}

Você pode usar metacaracteres na sequência de pesquisa ou na sequência de substituição se um determinado texto ou frase for composto de vários parágrafos, seções ou páginas. Alguns dos metacaracteres incluem **&amp;p** para quebra de parágrafo, **&amp;b** para quebra de seção, **&amp;m** para quebra de página e **&amp;eu** para quebra de linha.

{{% alert color="primary" %}}

Observe que o metacaractere **&&** é igual a **&**. Por exemplo, se você precisar encontrar texto para **&amp;p** que não seja uma quebra de parágrafo, poderá usar **&amp;&amp;p**.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir texto por parágrafo e quebra de página:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Localizar e substituir string no cabeçalho/rodapé de um documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Você pode localizar e substituir texto na seção de cabeçalho/rodapé de um documento do Word usando a classe [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

O exemplo de código a seguir mostra como substituir o texto da seção de cabeçalho no seu documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de cabeçalho:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="antes de aplicar a substituição da string do título" style="width:600px"/>

E depois de aplicar a substituição da string de cabeçalho:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="após a aplicação da substituição da string do cabeçalho" style="width:600px"/>

O exemplo de código para substituir o texto da seção de rodapé em seu documento é muito semelhante ao exemplo de código de cabeçalho anterior. Tudo que você precisa fazer é substituir as duas linhas a seguir:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Com o seguinte:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de rodapé:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="antes de aplicar a substituição da string do rodapé" style="width:600px"/>

E depois de aplicar a substituição da string de rodapé:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="após a aplicação da substituição da string do rodapé" style="width:600px"/>

## Ignorar texto durante localizar e substituir {#ignore-text-during-find-and-replace}

Ao aplicar a operação localizar e substituir, você pode ignorar certos segmentos do texto. Assim, certas partes do texto podem ser excluídas da pesquisa, e localizar e substituir podem ser aplicados apenas às partes restantes.

Aspose.Words fornece muitas propriedades de localização e substituição para ignorar texto como [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) e [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

O exemplo de código a seguir mostra como ignorar texto dentro de revisões de exclusão:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Personalize a operação Localizar e Substituir {#customize-find-and-replace-operation}

Aspose.Words fornece muitos [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) diferentes para localizar e substituir texto, como aplicar formato específico com propriedades [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) e [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), usar substituições em padrões de substituição com propriedade [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/), entre outros.

O exemplo de código a seguir mostra como destacar uma palavra específica no seu documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words permite usar a interface [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) para criar e chamar um método personalizado durante uma operação de substituição. Você pode ter alguns casos de uso em que precisa personalizar a operação de localizar e substituir, como substituir o texto especificado por uma expressão regular por tags HTML, então basicamente você aplicará a substituição com a inserção de HTML.

Se você precisar substituir uma string por uma tag HTML, aplique a interface **IReplacingCallback** para personalizar a operação de localização e substituição para que a correspondência comece no início de uma execução com o nó de correspondência do seu documento. Vamos fornecer vários exemplos de uso de **IReplacingCallback**.

O exemplo de código a seguir mostra como substituir o texto especificado por HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

O exemplo de código a seguir mostra como destacar números positivos com a cor verde e números negativos com a cor vermelha:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

O exemplo de código a seguir mostra como acrescentar um número de linha a cada linha:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
