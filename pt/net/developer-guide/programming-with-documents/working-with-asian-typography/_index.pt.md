---
title: Tipografia asiática em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com tipografia asiática
linktitle: Trabalhando com tipografia asiática
description: "Trabalhe com tipografia asiática usando C#. Ajuste o espaço entre texto asiático e latino em C#."
type: docs
weight: 240
url: /pt/net/working-with-asian-typography/
---

A Tipografia Asiática é um conjunto de opções para parágrafos de texto em documentos escritos em idiomas asiáticos.

Aspose.Words oferece suporte à tipografia asiática usando a classe [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) e algumas de suas propriedades.

## Ajustar automaticamente o espaço entre textos ou números asiáticos e latinos

Se você estiver projetando um modelo com texto do Leste Asiático e latino e quiser melhorar a aparência do seu modelo de formulário controlando os espaços entre os dois tipos de texto, poderá configurar seu modelo de formulário para ajustar automaticamente os espaços entre esses dois tipos de texto. Para conseguir isso, você pode usar as propriedades [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) e [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) da classe `ParagraphFormat`.

O exemplo de código a seguir mostra como usar propriedades **AddSpaceBetweenFarEastAndAlpha** e **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Definir opções de quebra de linha

A guia Tipografia Asiática da caixa de diálogo de propriedades do parágrafo em Microsoft Word possui um grupo de quebra de linha. As opções deste grupo podem ser definidas utilizando as propriedades [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) da classe **ParagraphFormat**.

O exemplo de código a seguir mostra como usar essas propriedades:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
