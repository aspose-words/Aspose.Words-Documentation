---
title: Formas de renderização Separadamente de um documento
second_title: Aspose.Words para Java
articleTitle: Formas de renderização Separadamente de um documento
linktitle: Formas de renderização Separadamente de um documento
description: "Extraia vários objetos gráficos, como imagens, caixa de texto contendo parágrafos ou formas de seta, ao processar um documento e exportá-los para um local externo usando Java."
type: docs
weight: 40
url: /pt/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Ao processar documentos, uma tarefa comum é extrair todas as imagens encontradas no documento e exportá-las para um local externo. Esta tarefa torna-se simples com Aspose.Words API, que já fornece a funcionalidade para extrair e salvar dados de imagem. No entanto, às vezes você pode querer extrair similarmente outros tipos de conteúdo gráfico que são representados por um tipo diferente de objeto de desenho, por exemplo, uma caixa de texto contendo parágrafos, formas de seta e uma pequena imagem. Não há nenhuma maneira direta de renderizar esse objeto, pois é uma combinação de elementos de conteúdo individuais. Você também pode encontrar um caso quando o conteúdo foi agrupado no objeto que parece uma única imagem.

Aspose.Words fornece funcionalidade para extrair este tipo de conteúdo da mesma forma que você pode extrair uma imagem simples da forma como conteúdo renderizado. Este artigo descreve como utilizar esta funcionalidade para renderizar formas independentemente do documento.

## Tipos de forma em Aspose.Words

Todo o conteúdo em uma camada de desenho de documento é representado pelo [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ou [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nodo no Aspose.Words Módulo de objeto de documento (DOM). Tais conteúdos podem ser caixas de texto, imagens, AutoShapes, objetos OLE, etc. Alguns campos também são importados como formas, por exemplo, o `INCLUDEPICTURE` campo.

Uma imagem simples é representada por uma **Shape** node de [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Este nó de forma não tem nós de criança, mas os dados de imagem contidos neste nó de forma podem ser acessados por [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) propriedade. Por outro lado, uma forma também pode ser composta de muitos nós de criança. Por exemplo, uma forma de caixa de texto, que é representada pelo [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) propriedade, pode ser composta de muitos nós, tais como [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). A maioria das formas pode incluir o **Paragraph** e **Table** nós de nível de bloco. Estes são os mesmos nós que os que aparecem no corpo principal. Formas são sempre partes de algum parágrafo, ou incluído diretamente em linha ou ancorado para o **Parágrafo,** mas "floating" em qualquer lugar na página do documento.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Um documento também pode conter formas agrupadas. Grouping pode ser ativado Microsoft Word selecionando vários objetos e clicando "Group" no menu do botão direito do mouse.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Em Aspose.Words, estes grupos de formas são representados pelo [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nó. Estes também podem ser invocados da mesma forma para renderizar todo o grupo à imagem.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

O formato DOCX pode conter tipos especiais de imagens, como diagramas ou gráficos. Estas formas também são representadas através do **Shape** Node em Aspose.Words, que também fornece um método semelhante para torná-los como imagens. Por design, uma forma não pode conter outra forma como uma criança, a menos que essa forma seja uma imagem (**ShapeType.Image**). Por exemplo, Microsoft Word não permite inserir uma caixa de texto dentro de outra caixa de texto.

Os tipos de forma descritos acima fornecem um método especial para renderizar as formas através do [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) classe. Uma instância do **ShapeRenderer** classe é recuperada para um **Shape** ou **GroupShape** através do **GetShapeRenderer** método ou passando **Shape** ao construtor do **ShapeRenderer** classe. Esta classe fornece acesso aos membros, que permitem dar uma forma ao seguinte:

- Arquivo no disco usando o [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) método de sobrecarga
- Stream usando o [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) método de sobrecarga
- Gráficos Objeto usando o [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) e [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) métodos

{{% alert color="primary" %}}

Ao renderizar uma <span notrans="<span notrans=" **Shape**"=""></span>, deve ser uma parte da hierarquia dos documentos. Se o **Shape** não é uma parte da árvore do documento, então a saída renderizada será em branco após invocar **ShapeRenderer** métodos.

{{% /alert %}}

## Renderização para arquivo ou fluxo

O [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) método fornece sobrecargas que tornam uma forma diretamente para um arquivo ou fluxo. Ambas as sobrecargas aceitam uma instância do [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, que permite definir opções para renderizar a forma. Isso funciona da mesma maneira que o [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. Mesmo que este parâmetro seja necessário, você pode passar um valor nulo, especificando que não há opções personalizadas.

A forma pode ser exportada em qualquer formato de imagem especificado no [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeração. Por exemplo, a imagem pode ser renderizada como uma imagem raster, como JPEG especificando o [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumeração, ou como uma imagem vetorial, como EMF especificando o [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

O exemplo de código abaixo ilustra renderizar uma forma para uma imagem EMF separadamente do documento e salvar ao disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

O exemplo de código abaixo ilustra renderizar uma forma para uma imagem JPEG separadamente do documento e salvar para um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

O **ImageSaveOptions** classe permite que você especifique uma variedade de opções que controlam como a imagem é renderizada. A funcionalidade descrita acima pode ser aplicada da mesma forma à **GroupShape** e **Shape** nós.

## Renderização a um `Graphics` Objeto

Renderização diretamente a um **Graphics** objeto permite definir suas próprias configurações e o estado para o **Graphics** objeto. Um cenário comum envolve transformar uma forma diretamente em uma **Graphics** objeto recuperado de um Windows Formulário ou um Bitmap. Quando o **Shape** nó é renderizado, as configurações afetarão a aparência da forma. Por exemplo, você pode girar ou dimensionar a forma usando o **RotateTransform** ou **ScaleTransform** métodos para **Graphics** objeto.

O exemplo abaixo mostra como renderizar uma forma a uma **Graphics** objeto separadamente do documento e aplicar rotação à imagem renderizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Da mesma forma, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) método, o [Renderização](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)método herdado do [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) é útil para criar miniaturas de conteúdo de documento. O tamanho da forma é especificado através do construtor. O **RenderToSize** método aceita o **Graphics** objeto, as coordenadas X e Y da posição da imagem, e o tamanho da imagem (largura e altura) que será desenhado para o **Graphics** objeto.

O **Shape** pode ser renderizado a uma certa escala usando [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) método herdado do [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) classe. Isto é semelhante ao [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) método que aceita os mesmos parâmetros principais. A diferença entre estes dois métodos é que com **ShapeRenderer.RenderToScale** método, em vez de um tamanho literal, você escolhe um valor flutuante que dimensiona a forma durante sua renderização. Se o valor de flutuação for igual a 1.0 faz com que a forma seja renderizada em 100% do seu tamanho original. Um valor flutuante de 0,5 reduzirá o tamanho da imagem pela metade.

## Renderização de uma imagem de forma

O [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe representa objetos na camada de desenho, como um AutoShape, caixa de texto, freeform, objeto OLE, controle ActiveX, ou uma imagem. Usando o **Shape** classe, você pode criar ou modificar formas em uma Microsoft Word documento. Uma propriedade importante de uma forma é sua [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Formas de diferentes tipos podem ter diferentes capacidades em um documento do Word. Por exemplo, apenas imagens e formas OLE podem ter imagens dentro delas, enquanto a maioria das formas pode ter apenas texto.

O exemplo a seguir mostra como renderizar uma imagem Shape a uma imagem JPEG separadamente do documento e salvá-la no disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Recuperando um tamanho de forma

O [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) classe também fornece funcionalidade para recuperar o tamanho da forma em pixels através do [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) método. Este método aceita dois parâmetros float (Single) – a escala e DPI, que são usados no cálculo do tamanho da forma quando a forma é renderizada. O método retorna [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) objeto, que contém a largura e a altura do tamanho calculado. Isso é útil quando é necessário saber o tamanho da forma renderizada com antecedência, por exemplo, ao criar um novo Bitmap da saída renderizada.

O exemplo abaixo mostra como criar um novo objeto Bitmap e Graphics com a largura e a altura da forma a ser renderizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Ao usar o **RenderToSize** ou **RenderToScale** métodos, o tamanho da imagem renderizada também é retornado no [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) objeto. Isso pode ser atribuído a uma variável e usado se necessário.

O **SizeInPoints** propriedade retorna o tamanho da forma medida em pontos (ver [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). O resultado é um `SizeF` objeto contendo a largura e a altura.
