---
title: Trabalhando com formas em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com formas
linktitle: Trabalhando com formas
description: "Crie e gerencie formas e objetos antigos em um documento usando Python."
type: docs
weight: 280
url: /pt/python-net/working-with-shapes/
---

Este tópico discute como trabalhar programaticamente com formas usando Aspose.Words.

As formas em Aspose.Words representam um objeto na camada de desenho, como uma AutoForma, caixa de texto, forma livre, objeto OLE, controle ActiveX ou imagem. Um documento do Word pode conter uma ou mais formas diferentes. As formas do documento são representadas pela classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Inserindo formas usando o Document Builder

Você pode inserir uma forma embutida com tipo e tamanho especificados e uma forma flutuante com a posição, tamanho e tipo de quebra de texto especificados em um documento usando o método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). O método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) permite inserir formato DML no modelo do documento. O documento deve ser salvo no formato que suporta formas DML, caso contrário, tais nós serão convertidos para a forma VML, durante o salvamento do documento.

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Definir proporção de aspecto bloqueada

Usando Aspose.Words, você pode especificar se a proporção da forma está bloqueada por meio da propriedade [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Definir layout de forma na célula

Você também pode especificar se a forma será exibida dentro ou fora de uma tabela usando a propriedade [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Criar retângulo de canto de recorte

Você pode criar um retângulo de canto de recorte usando Aspose.Words. Os tipos de forma são [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) e [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

A forma DML é criada usando o método [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) com esses tipos de forma. Esses tipos não podem ser usados para criar formas VML. A tentativa de criar uma forma usando o construtor público da classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) gera a exceção "NotSupportedException".

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Obtenha pontos reais de limites de forma

Usando Aspose.Words API, você pode obter a localização e o tamanho da forma que contém o bloco em pontos, em relação à âncora da forma superior. Para fazer isso, use a propriedade [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Especifique a âncora vertical

Você pode especificar o alinhamento vertical do texto dentro de uma forma usando a propriedade [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detectar forma SmartArt

Aspose.Words também permite detectar se o Shape possui um objeto `SmartArt`. Para fazer isso, use a propriedade [propriedade has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Inserir regra horizontal no documento

Você pode inserir uma forma de regra horizontal em um documento usando o método [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

O exemplo de código a seguir mostra como fazer isso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API fornece a propriedade [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) para acessar as propriedades da forma da regra horizontal. A classe [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) expõe propriedades básicas como [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) etc. para a formatação de uma regra horizontal.

O exemplo de código a seguir demonstra como definir [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Insira objeto OLE como um ícone

Aspose.Words API fornece função **Forma.insert_ole_object_as_icon** para inserir um objeto OLE incorporado ou vinculado como um ícone no documento. Esta função permite especificar o arquivo do ícone e a legenda. O tipo de objeto `OLE` deve ser detectado usando a extensão do arquivo.

O exemplo de código a seguir demonstra como definir a inserção do objeto OLE como um ícone no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

O tamanho máximo do ícone deve ser 32x32 para exibição correta.

{{% /alert %}}

## Importe formas com Math XML como formas para DOM

Você pode usar a propriedade [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) para converter as formas com EquationXML em objetos Office Math. O valor padrão desta propriedade corresponde ao comportamento do MS Word, ou seja, formas com equação XML não são convertidas em objetos matemáticos do Office.

O exemplo de código a seguir mostra como converter formas em objetos do Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
