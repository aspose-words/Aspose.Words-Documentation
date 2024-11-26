---
title: Tipografia asiática em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com Tipografia asiática
linktitle: Trabalhar com Tipografia asiática
description: "Trabalhe com tipografia asiática usando C++. Ajuste o espaço entre texto asiático e latino em C++."
type: docs
weight: 240
url: /pt/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

A Tipografia asiática é um conjunto de opções para parágrafos de texto em documentos escritos em línguas asiáticas.

Aspose.Words suporta Tipografia asiática utilizando a classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) e algumas das suas propriedades.

## Ajustar automaticamente o espaço entre texto ou números asiáticos e latinos

Se você estiver criando um modelo com texto do Leste Asiático e latino e quiser melhorar a aparência do seu modelo de formulário controlando os espaços entre os dois tipos de texto, poderá configurar seu modelo de formulário para ajustar automaticamente os espaços entre esses dois tipos de texto. Para conseguir isso, você pode usar as Propriedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) da classe `ParagraphFormat`.

O exemplo de código a seguir mostra como usar as propriedades **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Definir Opções De Quebra De Linha

A guia Tipografia asiática da caixa de diálogo Propriedades do parágrafo em Microsoft Word tem grupo de quebra de linha. As opções deste grupo podem ser definidas [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) Propriedades da classe **ParagraphFormat**.

O exemplo de código a seguir mostra como usar essas propriedades:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
