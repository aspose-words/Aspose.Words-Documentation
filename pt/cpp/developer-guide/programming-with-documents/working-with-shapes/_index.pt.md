---
title: Trabalhando com formas Em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com formas
linktitle: Trabalhar com formas
type: docs
description: "Introdução à linguagem de marcação de formas, criando formas de diferentes tipos usando C++."
weight: 280
url: /pt/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com formas usando Aspose.Words.

As formas em Aspose.Words representam um objeto na camada de desenho, como um objeto AutoShape, caixa de texto, forma livre, OLE, controle ActiveX ou imagem. Um documento do Word pode conter uma ou mais formas diferentes. As formas do documento são representadas pela classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Inserir Forma Utilizando O Document Builder

É possível inserir forma embutida com tipo e tamanho especificados e forma flutuante com a posição, tamanho e tipo de quebra de texto especificados em um documento usando o método [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). O método **InsertShape** permite inserir a forma DML no modelo do documento. O documento deve ser salvo no formato, que suporta formas DML, caso contrário, esses nós serão convertidos em forma VML, enquanto o documento é salvo.

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Definir Proporção Bloqueada

Usando Aspose.Words, você pode especificar se a proporção da forma está bloqueada através da propriedade [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Definir A Disposição Da Forma Na Célula

Você também pode especificar se a forma é exibida dentro de uma tabela ou fora dela usando a propriedade [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Criar Retângulo De Canto De Recorte

Você pode criar um retângulo de Canto de recorte usando Aspose.Words. Os tipos de forma são *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* e *DiagonalCornersRounded.*

A forma DML é criada usando o método **InsertShape** com esses tipos de forma. Estes tipos não podem ser utilizados para criar VML formas. A tentativa de criar shape usando o construtor público da classe" Shape "gera a exceção" NotSupportedException".

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Obter Pontos De Limites De Forma Reais

Usando Aspose.Words API, você pode obter a localização e o tamanho da forma que contém o bloco em pontos, em relação à âncora da forma superior. Para fazer isso, use a propriedade [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

O exemplo de código a seguir mostra como trabalhar com a propriedade **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Formato Da Regra Horizontal

Aspose.Words API fornece a propriedade [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) para acessar as propriedades da forma de regra horizontal. A classe **HorizontalRuleFormat** expõe propriedades básicas como Altura, Cor, Sombra, etc. para a formatação de uma regra horizontal.

O exemplo de código a seguir demonstra como definir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Inserir OLE objeto como um ícone

Aspose.Words API fornece a função **Shape** **InsertOleObjectAsIcon** para inserir um objeto OLE incorporado ou vinculado como um ícone no documento. Esta função permite especificar o ficheiro de ícones e a legenda. O tipo de objecto `OLE` deve ser detectado utilizando a extensão do ficheiro.

O exemplo de código a seguir mostra como definir o objeto insert OLE como um ícone no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

O tamanho máximo do ícone deve ser 32x32 para a exibição correta.

{{% /alert %}}
