---
title: Trabalhando com formas em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com formas
linktitle: Trabalhando com formas
description: "Introdução à linguagem de marcação de formas, criando formas de diferentes tipos usando C#."
type: docs
weight: 280
url: /pt/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com formas usando Aspose.Words.

As formas em Aspose.Words representam um objeto na camada de desenho, como uma AutoForma, caixa de texto, forma livre, objeto OLE, controle ActiveX ou imagem. Um documento do Word pode conter uma ou mais formas diferentes. As formas em Aspose.Words são representadas pela classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Inserindo formas usando o Document Builder

Você pode inserir forma embutida com tipo e tamanho especificados e forma flutuante com posição, tamanho e tipo de quebra de texto especificados em um documento usando o método [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/). O método **InsertShape** permite inserir formato DML no modelo do documento. O documento deve ser salvo no formato que suporta formas DML, caso contrário, tais nós serão convertidos para a forma VML, durante o salvamento do documento.

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Definir proporção de aspecto bloqueada

Usando Aspose.Words, você pode especificar se a proporção da forma está bloqueada por meio da propriedade [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Definir layout de forma na célula

Você também pode especificar se a forma será exibida dentro ou fora de uma tabela usando a propriedade [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Criar retângulo de canto de recorte

Você pode criar um retângulo de canto de recorte usando Aspose.Words. Os tipos de forma são *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded* e *DiagonalCornersRounded.*

A forma DML é criada usando o método **InsertShape** com esses tipos de forma. Esses tipos não podem ser usados para criar formas VML. A tentativa de criar uma forma usando o construtor público da classe "Shape" gera a exceção "NotSupportedException".

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Obtenha pontos reais de limites de forma

Usando Aspose.Words API, você pode obter a localização e o tamanho da forma que contém o bloco em pontos, em relação à âncora da forma superior. Para fazer isso, use a propriedade [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Especifique a âncora vertical

Você pode especificar o alinhamento vertical do texto dentro de uma forma usando a propriedade [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detectar forma SmartArt

Aspose.Words também permite detectar se o Shape possui um objeto `SmartArt`. Para fazer isso, use a propriedade [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Inserir regra horizontal no documento

Você pode inserir uma forma de regra horizontal em um documento usando o método [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

O exemplo de código a seguir mostra como fazer isso:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API fornece a propriedade [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) para acessar as propriedades da forma da regra horizontal. A classe [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) expõe propriedades básicas como Altura, Cor, NoShade etc. para a formatação de uma regra horizontal.

O exemplo de código a seguir mostra como definir **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Importe formas com XML matemático como formas para DOM

Você pode usar a propriedade [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) para converter as formas com EquationXML em objetos Office Math. O valor padrão desta propriedade corresponde ao comportamento Microsoft Word, ou seja, formas com equação XML não são convertidas em objetos matemáticos do Office.

O exemplo de código a seguir mostra como converter formas em objetos do Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
