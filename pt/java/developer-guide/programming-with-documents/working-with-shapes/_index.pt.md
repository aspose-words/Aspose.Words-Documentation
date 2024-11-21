---
title: Trabalhando com formas em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com formas
linktitle: Trabalhando com formas
type: docs
description: "Introdução à linguagem de marcação de forma, criando formas de diferentes tipos usando Java."
weight: 280
url: /pt/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Este tópico discute como trabalhar programaticamente com formas usando Aspose.Words.

As formas em Aspose.Words representar um objeto na camada de desenho, como um AutoShape, caixa de texto, freeform, objeto OLE, controle ActiveX ou imagem. Um documento do Word pode conter uma ou mais formas diferentes. As formas do documento são representadas pelo [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe.

## Inserir forma usando o construtor de documentos

Você pode inserir a forma inline com o tipo e tamanho especificados e forma de flutuação livre com a posição especificada, tamanho e tipo de envoltório de texto em um documento usando o [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) método. O **InsertShape** método permite inserir a forma DML no modelo de documento. O documento deve ser salvo no formato, que suporta formas DML, caso contrário, esses nós serão convertidos em forma VML, enquanto a economia de documentos.

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Definir Relação de Aspecto Locked

Usando Aspose.Words, você pode especificar se a relação de aspecto da forma é bloqueada através do [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) propriedade.

O seguinte exemplo de código mostra como trabalhar com o **AspectRatioLocked** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Definir Layout de forma na célula

Você também pode especificar se a forma é exibida dentro de uma tabela ou fora dela usando o [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) propriedade.

O seguinte exemplo de código mostra como trabalhar com o **IsLayoutInCell** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Adicionar Corners Snipped

Você pode criar um retângulo de canto snip usando Aspose.Words. Os tipos de forma são *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* e *DiagonalCornersRounded.*

A forma DML é criada usando **InsertShape** método com estes tipos de forma. Estes tipos não podem ser usados para criar formas VML. Tentar criar forma usando o construtor público da classe "Shape" aumenta a exceção "NotSupportedException".

O exemplo de código a seguir mostra como inserir esses tipos de formas no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Obter a forma real Bounds pontos

Usando Aspose.Words API, você pode obter a localização e o tamanho da forma que contém bloco em pontos, em relação à âncora da forma mais alta. Para fazer isso, use o [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) propriedade.

O seguinte exemplo de código mostra como trabalhar com o **BoundsInPoints** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Especificar âncora vertical

Você pode especificar o alinhamento vertical do texto dentro de uma forma usando o [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) propriedade.

O seguinte exemplo de código mostra como trabalhar com o **VerticalAnchor** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detectar inteligente Forma de arte

Aspose.Words também permite detectar se a forma tem uma `SmartArt` objeto. Para fazer isso, use o [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) propriedade.

O seguinte exemplo de código mostra como trabalhar com o **HasSmartArt** propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Formato de regra horizontal

Você pode inserir a forma da regra horizontal em um documento usando o [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) método.

Aspose.Words API fornece [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) propriedade para acessar as propriedades da forma de regra horizontal. O [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) classe expõe propriedades básicas como Altura, Cor, NoShade etc para a formatação de uma regra horizontal.

O seguinte exemplo de código mostra como definir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
