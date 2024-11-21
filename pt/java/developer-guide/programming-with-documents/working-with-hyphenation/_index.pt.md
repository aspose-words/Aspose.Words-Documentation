---
title: Trabalhando com Hyphenation em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Hyphenation
linktitle: Trabalhando com Hyphenation
description: "Use a hifenação para um arranjo mais compacto de texto. Ele fornece algoritmos avançados para trabalhar com dicionários de hifenação, usa dicionários OpenOffice usando Java."
type: docs
weight: 220
url: /pt/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Às vezes é necessário usar a hifenação para um arranjo mais compacto do texto em um documento. Ao mesmo tempo, é importante entender que as especificidades da palavra hifenação podem diferir para cada linguagem.

Atualmente, a hifenação não é usada tão frequentemente quanto costumava ser, especialmente em textos em inglês. No entanto, o uso deste recurso pode ter um impacto sério nos documentos do usuário – a hifenação afeta o layout e, como resultado, a aparência dos arquivos de saída, por exemplo, em formato PDF.

Para a separação correta das palavras, os dicionários de hifenação específicos da linguagem são usados. Aspose.Words usa algoritmos avançados para trabalhar com tais dicionários e permite que você obtenha a mesma hifenação como em Microsoft Word.

## Dicionários de Hifenação

Uma vez que diferentes línguas usam diferentes normas e regras para a hifenação de palavras, a solução ideal para a hifenação correta é usar dicionários especiais. Aspose.Words usa dicionários OpenOffice.

Para verificação ortográfica, OpenOffice usa o [Hunspell biblioteca de programas](https://hunspell.github.io/), que é uma generalização do algoritmo de hifenação de TeX. Este algoritmo permite a hifenação automática não padrão usando padrões de hifenação padrão concorrentes e personalizados. Hunspell usa o [Hífen](https://github.com/hunspell/hyphen) para a hifenação.

{{% alert color="primary" %}}

Os dicionários de hifenação podem ser retirados [LibreOffice dicionários GitHub](https://github.com/LibreOffice/dictionaries). Por exemplo, [dicionário de hifenização en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Como Microsoft Word usa dicionários que não os dicionários do OpenOffice para executar a hifenação, a hifenação de algumas palavras definidas pelos dicionários do OpenOffice pode diferir do Microsoft Word hifenação. Por esta razão, às vezes temos que aconselhar os clientes a adicionar os padrões necessários aos seus dicionários, a fim de corrigir a hifenação de palavras particulares.

{{% /alert %}}

## Algoritmo de Hifenação

Aspose.Words implementos [o algoritmo de hifenização TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e pode reutilizar dicionários de hifenação OpenOffice.

As seguintes características de Aspose.Words algoritmos devem ser levados em conta:

* Parâmetros de distância de hífen (LEFENMIN, RIGHTHYPHENMIN, COMPOUNDOFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificado no dicionário de hifenação são ignorados. Aspose.Words usa seu próprio conjunto de parâmetros de distância dependendo do modo de compatibilidade do documento.
* O algoritmo de hifenação em Aspose.Words suportes [hifenização composta](https://github.com/hunspell/hyphen/blob/master/README.compound). No entanto, Aspose.Words divide sequências de caracteres contendo caracteres alfabéticos e não-alfabéticos misturados em partes somente alfabéticas (palavras) e os hifeniza separadamente.
  Note que Microsoft Word A lógica da hifenação de palavras compostas depende do modo de compatibilidade de documentos.
* O algoritmo de hifenação em Aspose.Words não implementar o [hifenização não padrão](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Padrões não-padrão são ignorados.

## Carregando Dicionários de Hifenação

Para usar o recurso de hifenação, primeiro registre um dicionário de hifenação. O exemplo de código a seguir mostra como carregar dicionários de hífen para as linguagens especificadas de um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como carregar dicionários de hífen para o idioma especificado de um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Como alternativa aos dicionários de hifenação pré-registro, é possível registrar apenas dicionários de hifenação exigidos "por solicitação". Para alcançar isso, implementar o [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) interface e usar a chamada estática [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

O seguinte exemplo de código mostra como implementar o **IHyphenationCallback** interface:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impacto da Hifenação no Layout

Ao quebrar o texto em linhas, Aspose.Words verifica cada palavra se encaixa inteiramente na linha atual. Se outra palavra é muito longa para caber no final da linha, por padrão Aspose.Words move-o para o início da próxima linha em vez de hifená-la.

No entanto, o recurso de hifenação pode ser usado em Aspose.Words inserir hífens em palavras para eliminar lacunas em texto justificado ou manter um comprimento de linha uniforme em colunas estreitas. Isso pode obviamente afetar o número de linhas e, portanto, o número de páginas. Em outras palavras, usando a função de hifenação afeta o layout do documento.

## Hifenação e Justificação (H&J)

Microsoft Word tem lógica complexa para escolher um ponto de interrupção se o texto é justificado e a hifenação é ativada. Em resumo, Microsoft Word pode preferir reduzir ou esticar espaços para evitar a hifenação da linha. Provavelmente esta lógica é baseada em [Artigo de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa seu próprio algoritmo H&J que dá o mesmo resultado que Microsoft Word e fornece a quebra de linha idêntica no documento de saída.

## Ver também

* [Hífen – biblioteca de hífen](https://github.com/hunspell/hyphen/blob/master/README)
* [Hifenação não padrão](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Hifenação automática não padrão em Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
