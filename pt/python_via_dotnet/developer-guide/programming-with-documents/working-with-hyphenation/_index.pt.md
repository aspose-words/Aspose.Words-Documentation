---
title: Trabalhando com hifenização em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com Hifenização
linktitle: Trabalhando com Hifenização
description: "Use a hifenização para uma organização de texto mais compacta usando Python. Fornece algoritmos avançados para trabalhar com dicionários de hifenização, usa dicionários OpenOffice."
type: docs
weight: 220
url: /pt/python-net/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Às vezes é necessário usar a hifenização para uma organização mais compacta do texto em um documento. Ao mesmo tempo, é importante compreender que as especificidades da hifenização de palavras podem ser diferentes para cada idioma.

Atualmente, a hifenização não é usada com tanta frequência como costumava ser, especialmente em textos em inglês. No entanto, o uso deste recurso pode ter um sério impacto nos documentos do usuário – a hifenização afeta o layout e, consequentemente, a aparência dos arquivos de saída, por exemplo, no formato PDF.

Para a divisão correta de palavras, são usados dicionários de hifenização específicos do idioma. Aspose.Words usa algoritmos avançados para trabalhar com esses dicionários e permite obter a mesma hifenização do Microsoft Word.

## Dicionários de hifenização

Como idiomas diferentes usam normas e regras diferentes para hifenização de palavras, a solução ideal para uma hifenização correta é usar dicionários especiais. Aspose.Words usa dicionários OpenOffice.

Para verificação ortográfica, o OpenOffice usa o [Biblioteca Hunspell](https://hunspell.github.io/), que é uma generalização do algoritmo de hifenização do TeX. Este algoritmo permite a hifenização automática não padrão usando padrões concorrentes de hifenização padrão e personalizados. Hunspell usa o [Hífen](https://github.com/hunspell/hyphen) para hifenização.

{{% alert color="primary" %}}

Os dicionários de hifenização podem ser obtidos no [Dicionários LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Por exemplo, [dicionário de hifenização en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Como o Microsoft Word usa dicionários diferentes dos dicionários do OpenOffice para realizar a hifenização, a hifenização de algumas palavras definidas pelos dicionários do OpenOffice pode ser diferente da hifenização do Microsoft Word. Por esta razão, às vezes temos que aconselhar os clientes a adicionar os padrões necessários aos seus dicionários para corrigir a hifenização de palavras específicas.

{{% /alert %}}

## Algoritmo de Hifenização

Aspose.Words implementa [o algoritmo de hifenização TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) e pode reutilizar dicionários de hifenização do OpenOffice.

Os seguintes recursos dos algoritmos Aspose.Words devem ser levados em consideração:

* Os parâmetros de distância de hifenização (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) especificados no dicionário de hifenização são ignorados. O Aspose.Words usa seu próprio conjunto de parâmetros de distância dependendo do modo de compatibilidade do documento.
* O algoritmo de hifenização em Aspose.Words suporta [hifenização composta](https://github.com/hunspell/hyphen/blob/master/README.compound). No entanto, o Aspose.Words divide sequências de caracteres contendo caracteres alfabéticos e não alfabéticos mistos em partes somente alfabéticas (palavras) e as hifeniza separadamente.
  Observe que a lógica Microsoft Word de hifenização de palavras compostas depende do modo de compatibilidade do documento.
* O algoritmo de hifenização em Aspose.Words não implementa o [hifenização não padrão](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Padrões fora do padrão são ignorados.

## Carregando dicionários de hifenização

Para usar o recurso de hifenização, primeiro registre um dicionário de hifenização. O exemplo de código a seguir mostra como carregar dicionários de hifenização para os idiomas especificados de um arquivo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como carregar dicionários de hifenização para o idioma especificado a partir de um fluxo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Impacto da hifenização no layout

Ao dividir o texto em linhas, o Aspose.Words verifica se cada palavra cabe inteiramente na linha atual. Se outra palavra for muito longa para caber no final da linha, por padrão o Aspose.Words a move para o início da próxima linha em vez de hifenizá-la.

No entanto, o recurso de hifenização pode ser usado no Aspose.Words para inserir hífens em palavras para eliminar lacunas no texto justificado ou para manter um comprimento de linha uniforme em colunas estreitas. Obviamente, isso pode afetar o número de linhas e, portanto, o número de páginas. Em outras palavras, o uso da função de hifenização afeta o layout do documento.

## Hifenização e Justificação (H&amp;J)

Microsoft Word possui uma lógica complexa para escolher um ponto de interrupção se o texto for justificado e a hifenização estiver habilitada. Resumindo, o Microsoft Word pode preferir reduzir ou esticar os espaços para evitar a hifenização das linhas. Muito provavelmente esta lógica é baseada em [Artigo de Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementa seu próprio algoritmo H&amp;J que fornece o mesmo resultado que Microsoft Word e fornece quebra de linha idêntica no documento de saída.

## Veja também

* [Hífen – biblioteca de hifenização](https://github.com/hunspell/hyphen/blob/master/README)
* [Hifenização fora do padrão](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Hifenização automática não padrão no Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
