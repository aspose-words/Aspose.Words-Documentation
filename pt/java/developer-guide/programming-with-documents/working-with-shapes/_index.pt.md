---
title: Trabalhar com formas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com formas
linktitle: Trabalhar com formas
type: docs
description: "Introdução à linguagem de marcação de formas, criando formas de diferentes tipos usando Java."
weight: 280
url: /pt/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com formas usando Aspose.Words.

As formas em Aspose.Words representam um objeto na camada de desenho, como um objeto AutoShape, caixa de texto, forma livre, OLE, controle ActiveX ou imagem. Um documento do Word pode conter uma ou mais formas diferentes. As formas do documento são representadas pela classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/).

## Inserir Forma Utilizando O Document Builder

É possível inserir forma embutida com tipo e tamanho especificados e forma flutuante com a posição, tamanho e tipo de quebra de texto especificados em um documento usando o método [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double). O método **InsertShape** permite inserir a forma DML no modelo do documento. O documento deve ser salvo no formato, que suporta formas DML, caso contrário, esses nós serão convertidos em forma VML, enquanto o documento é salvo.

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Definir Proporção Bloqueada

Usando Aspose.Words, você pode especificar se a proporção da forma está bloqueada através da propriedade [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked).

O exemplo de código a seguir mostra como trabalhar com a propriedade **AspectRatioLocked**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Definir A Disposição Da Forma Na Célula

Você também pode especificar se a forma é exibida dentro de uma tabela ou fora dela usando a propriedade [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell).

O exemplo de código a seguir mostra como trabalhar com a propriedade **IsLayoutInCell**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Adicionar Cantos Cortados

Você pode criar um retângulo de Canto de recorte usando Aspose.Words. Os tipos de forma são *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* e *DiagonalCornersRounded.*

A forma DML é criada usando o método **InsertShape** com esses tipos de forma. Estes tipos não podem ser utilizados para criar VML formas. A tentativa de criar shape usando o construtor público da classe" Shape "gera a exceção" NotSupportedException".

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obter Pontos De Limites De Forma Reais

Usando Aspose.Words API, você pode obter a localização e o tamanho da forma que contém o bloco em pontos, em relação à âncora da forma superior. Para fazer isso, use a propriedade [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints).

O exemplo de código a seguir mostra como trabalhar com a propriedade **BoundsInPoints**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Especificar Âncora Vertical

Você pode especificar o alinhamento vertical do texto dentro de uma forma usando a propriedade [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor).

O exemplo de código a seguir mostra como trabalhar com a propriedade **VerticalAnchor**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detectar SmartArt Forma

Aspose.Words também permite detectar se a forma tem um objeto `SmartArt`. Para fazer isso, use a propriedade [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt).

O exemplo de código a seguir mostra como trabalhar com a propriedade **HasSmartArt**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato Da Regra Horizontal

Você pode inserir a forma de regra horizontal em um documento usando o método [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule).

Aspose.Words API fornece a propriedade [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) para acessar as propriedades da forma de regra horizontal. A classe [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) expõe propriedades básicas como Height, Color, NoShade etc. para a formatação de uma regra horizontal.

O exemplo de código a seguir mostra como definir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
