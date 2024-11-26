---
title: Localizar e substituir em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Localizar e substituir
linktitle: Localizar e substituir
type: docs
description: "Encontre uma string ou padrão de expressão regular em seu documento e substitua-o pelo texto desejado usando Python."
weight: 100
url: /pt/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Você pode navegar facilmente em seu documento usando teclado e mouse, mas se tiver muitas páginas para percorrer, demorará um pouco para encontrar um texto específico em um documento longo. Será mais demorado quando você quiser substituir determinados caracteres ou palavras que usou em seu documento. A funcionalidade "Localizar e substituir" permite localizar uma sequência de caracteres em um documento e substituí-la por outra sequência de caracteres.

Aspose.Words permite que você encontre uma string específica ou padrão de expressão regular em seu documento e substitua-o por uma alternativa sem instalar e usar aplicativos adicionais, como Microsoft Word. Isso irá acelerar muitas tarefas de digitação e formatação, potencialmente economizando horas de trabalho.

Este artigo explica como aplicar substituição de string e expressões regulares com suporte de metacaracteres.

## Maneiras de encontrar e substituir {#ways-to-find-and-replace}

Aspose.Words fornece duas maneiras de aplicar a operação localizar e substituir usando o seguinte:

1. *Substituição simples de string* – para localizar e substituir uma string específica por outra, você precisa especificar uma string de pesquisa (caracteres alfanuméricos) que será substituída de acordo com todas as ocorrências por outra string de substituição especificada. Ambas as strings não devem conter símbolos. Leve em consideração que a comparação de strings pode diferenciar maiúsculas de minúsculas ou você pode não ter certeza da ortografia ou ter várias grafias semelhantes.
2. *Expressões regulares* – para especificar uma expressão regular para encontrar as correspondências exatas da string e substituí-las de acordo com sua expressão regular. Observe que uma palavra é definida como composta apenas por caracteres alfanuméricos. Se a substituição for executada com correspondência apenas de palavras inteiras e a string de entrada contiver símbolos, nenhuma frase será encontrada.

Além disso, você pode usar metacaracteres especiais com substituição simples de string e expressões regulares para especificar quebras na operação localizar e substituir.

Aspose.Words apresenta a funcionalidade localizar e substituir com o módulo [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Você pode trabalhar com muitas opções durante o processo de localização e substituição usando a classe [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Encontre e substitua texto usando substituição simples de string {#find-and-replace-text-using-simple-string-replacement}

Você pode usar um dos métodos [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) e [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) para localizar ou substituir uma string específica e retornar o número de substituições que foram feitas. Nesse caso, você pode especificar uma string a ser substituída, uma string que substituirá todas as suas ocorrências, se a substituição diferencia maiúsculas de minúsculas e se apenas palavras independentes serão afetadas.

O exemplo de código a seguir mostra como encontrar a string "_CustomerName_" e substituí-la pela string *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição simples de string:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="antes da substituição de string simples" style="width:600px"/>

E depois de aplicar a substituição simples de string:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="após substituição de string simples" style="width:600px"/>

### Encontre e substitua texto usando expressões regulares {#find-and-replace-text-using-regular-expressions}

Uma expressão regular é um padrão que descreve uma determinada sequência de texto. Suponha que você queira substituir todas as ocorrências duplas de uma palavra por uma única ocorrência de palavra. Em seguida, você pode aplicar a seguinte expressão regular para especificar o padrão de palavra dupla: `([a-zA-Z]+) \1`.

Use o método [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) para pesquisar e substituir combinações específicas de caracteres, definindo o parâmetro de expressão regular como padrão para encontrar correspondências.

O exemplo de código a seguir mostra como substituir cadeias de caracteres que correspondem a um padrão de expressão regular por uma cadeia de caracteres de substituição especificada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Você pode notar a diferença no documento antes de aplicar a substituição de string por expressões regulares:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="antes da substituição por expressões regulares" style="width:600px"/>

E depois de aplicar a substituição de string por expressões regulares:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="pós-substituição por expressões regulares" style="width:600px"/>

### Encontre e substitua string usando metacaracteres {#find-and-replace-text-using-metacharacters}

Você pode usar metacaracteres na sequência de pesquisa ou na sequência de substituição se um determinado texto ou frase for composto de vários parágrafos, seções ou páginas. Alguns dos metacaracteres incluem **&amp;p** para quebra de parágrafo, **&amp;b** para quebra de seção, **&amp;m** para quebra de página e **&amp;eu** para quebra de linha.

{{% alert color="primary" %}}

Observe que o metacaractere **&&** é igual a **&**. Por exemplo, se você precisar encontrar texto para **&amp;p** que não seja uma quebra de parágrafo, poderá usar **&amp;&amp;p**.

{{% /alert %}}

O exemplo de código a seguir mostra como substituir texto por parágrafo e quebra de página:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Localizar e substituir string no cabeçalho/rodapé de um documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Você pode localizar e substituir texto na seção de cabeçalho/rodapé de um documento do Word usando a classe [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

O exemplo de código a seguir mostra como substituir o texto da seção de cabeçalho no seu documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de cabeçalho:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="antes de aplicar a substituição da string do título" style="width:600px"/>

E depois de aplicar a substituição da string de cabeçalho:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="após a aplicação da substituição da string do cabeçalho" style="width:600px"/>

O exemplo de código para substituir o texto da seção de rodapé em seu documento é muito semelhante ao exemplo de código de cabeçalho anterior. Tudo que você precisa fazer é substituir as duas linhas a seguir:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Com o seguinte:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Você pode notar a diferença entre o documento antes de aplicar a substituição da string de rodapé:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="antes de aplicar a substituição da string do rodapé" style="width:600px"/>

E depois de aplicar a substituição da string de rodapé:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="após a aplicação da substituição da string do rodapé" style="width:600px"/>

## Ignorar texto durante localizar e substituir {#ignore-text-during-find-and-replace}

Ao aplicar a operação localizar e substituir, você pode ignorar certos segmentos do texto. Assim, certas partes do texto podem ser excluídas da pesquisa, e localizar e substituir podem ser aplicados apenas às partes restantes.

Aspose.Words fornece muitas propriedades de localização e substituição para ignorar textos como [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) e [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

O exemplo de código a seguir mostra como ignorar texto dentro de revisões de exclusão:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Personalize a operação Localizar e Substituir {#customize-find-and-replace-operation}

Aspose.Words fornece muitas propriedades diferentes para localizar e substituir texto, como aplicar formato específico com propriedades [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) e [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), usar substituições em padrões de substituição com propriedade [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) e outros.

O exemplo de código a seguir mostra como destacar uma palavra específica no seu documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
