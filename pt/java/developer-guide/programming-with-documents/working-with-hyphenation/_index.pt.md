---
title: Trabalhando com Hifenização em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com hifenização
linktitle: Trabalhando com hifenização
description: "Use hifenização para um arranjo mais compacto do texto. Ele fornece algoritmos avançados para trabalhar com dicionários de hifenização, usa OpenOffice dicionários usando Java."
type: docs
weight: 220
url: /pt/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Às vezes, é necessário usar hifenização para um arranjo mais compacto do texto em um documento. Ao mesmo tempo, é importante entender que as especificidades da hifenização de palavras podem diferir para cada idioma.

Actualmente, a hifenização não é utilizada com tanta frequência como costumava ser, especialmente em textos em inglês. No entanto, a utilização desta funcionalidade pode ter um impacto grave nos documentos do utilizador – a hifenização afecta a disposição e, consequentemente, o aparecimento dos ficheiros de saída, por exemplo, no formato PDF.

Para a divisão correta das palavras, são utilizados dicionários de hifenização específicos do idioma. Aspose.Words usa algoritmos avançados para trabalhar com esses dicionários e permite obter a mesma hifenização que em Microsoft Word.

## Dicionários De Hifenização

Uma vez que diferentes línguas usam normas e regras diferentes para a hifenização de palavras, a solução ideal para a hifenização correta é usar dicionários especiais. Aspose.Words utiliza OpenOffice dicionários.

Para a verificação ortográfica, OpenOffice utiliza o [Hunspell biblioteca](https://hunspell.github.io/), que é uma generalização do algoritmo de hifenização de TeX. Este algoritmo permite a hifenização automática não padronizada usando padrões de hifenização padrão e personalizados concorrentes. Hunspell utiliza o [H3fen](https://github.com/hunspell/hyphen) para hifenização.

{{% alert color="primary" %}}

Os dicionários de hifenização podem ser retirados do [LibreOffice dicion9rios GitHub](https://github.com/LibreOffice/dictionaries). Por exemplo, [pt - US Dicion Extraterrio de hifeniza](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Como Microsoft Word usa dicionários diferentes de OpenOffice para realizar hifenização, a hifenização de algumas palavras definidas por OpenOffice dicionários pode diferir da hifenização Microsoft Word. Por esta razão, por vezes, temos de aconselhar os clientes a adicionar os padrões necessários aos seus dicionários, a fim de corrigir a hifenização de palavras específicas.

{{% /alert %}}

## Algoritmo De Hifenização

Aspose.Words implementos [o algoritmo de hifeniza](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e pode reutilizar OpenOffice dicionários de hifenização.

As seguintes características dos algoritmos Aspose.Words devem ser tidas em conta:

* Parâmetros da distância de hifenização(LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificados no dicionário de hifenização são ignorados. Aspose.Words utiliza o seu próprio conjunto de Parâmetros de distância, dependendo do modo de compatibilidade do documento.
* O algoritmo de hifenização em Aspose.Words suporta [hifenizax](https://github.com/hunspell/hyphen/blob/master/README.compound). No entanto, Aspose.Words divide sequências de caracteres contendo caracteres alfabéticos e não alfabéticos mistos em partes apenas alfabéticas (palavras) e hifeniza-as separadamente.
  Observe que Microsoft Word a lógica de hifenização de palavras compostas depende do modo de compatibilidade de documentos.
* O algoritmo de hifenização em Aspose.Words não implementa o [hifeniza2xio nxio padronizada](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Padrões não padronizados são ignorados.

## Carregando Dicionários De Hifenização

Para usar o recurso de hifenização, primeiro registre um dicionário de hifenização.O exemplo de código a seguir mostra como carregar dicionários de hifenização para os idiomas especificados a partir de um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como carregar dicionários de hifenização para o idioma especificado a partir de um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Como alternativa ao pré-registo de dicionários de hifenização, é possível registar apenas dicionários de hifenização necessários "a pedido". Para conseguir isso, implemente a interface [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) e use o retorno de chamada estático [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

O exemplo de código a seguir mostra como implementar a interface **IHyphenationCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impacto da hifenização na disposição

Ao dividir o texto em linhas, Aspose.Words verifica se cada palavra se encaixa inteiramente na linha atual. Se outra palavra for muito longa para caber no final da linha, por padrão Aspose.Words a move para o início da próxima linha em vez de hifenizá-la.

No entanto, o recurso de hifenização pode ser usado em Aspose.Words para inserir hífens em palavras para eliminar lacunas no texto justificado ou para manter um comprimento de linha uniforme em colunas estreitas. Isto pode, obviamente, afectar o número de linhas e, por conseguinte, o número de páginas. Em outras palavras, o uso da função de hifenização afeta o layout do documento.

## Hifenização e justificação (H & J)

Microsoft Word tem uma lógica complexa para escolher um ponto de interrupção se o texto for justificado e a hifenização estiver ativada. Em suma, Microsoft Word pode preferir encolher ou esticar espaços para evitar hifenização de linha. Muito provavelmente, esta lógica é baseada em [Artigo de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa seu próprio algoritmo H&J que fornece o mesmo resultado que Microsoft Word e fornece quebra de linha idêntica no documento de saída.

## Ver Também

* [Biblioteca de h3fen-hifeniza](https://github.com/hunspell/hyphen/blob/master/README)
* [Hifeniza2xio nxio padronizada](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Hifenização automática não padronizada em escritório aberto](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
