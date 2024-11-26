---
title: Renderizar formas separadamente de um documento
second_title: Aspose.Words para Java
articleTitle: Renderizar formas separadamente de um documento
linktitle: Renderizar formas separadamente de um documento
description: "Extraia vários objetos gráficos, como imagens, Caixa de texto contendo parágrafos ou formas de seta, ao processar um documento e exporte-os para um local externo usando Java."
type: docs
weight: 40
url: /pt/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Ao processar documentos, uma tarefa comum é extrair todas as imagens encontradas no documento e exportá-las para um local externo. Esta tarefa torna-se simples com o Aspose.Words API, que já fornece a funcionalidade para extrair e salvar dados de imagem. No entanto, por vezes, poderá querer extrair de forma semelhante outros tipos de conteúdo gráfico que são representados por um tipo diferente de objeto de desenho, por exemplo, uma caixa de texto contendo parágrafos, formas de seta e uma imagem pequena. Não existe uma forma simples de renderizar este objecto, uma vez que se trata de uma combinação de elementos de conteúdo individuais. Você também pode encontrar um caso em que o conteúdo foi agrupado no objeto que se parece com uma única imagem.

Aspose.Words fornece funcionalidade para extrair este tipo de conteúdo da mesma forma que você pode extrair uma imagem simples da forma como conteúdo renderizado. Este artigo descreve como utilizar esta funcionalidade para renderizar formas independentemente do documento.

## Tipos de forma em Aspose.Words

Todo o conteúdo de uma camada de desenho de documento é representado pelo nó [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ou [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) no módulo objeto de Documento Aspose.Words (DOM). Esses conteúdos podem ser Caixas de texto, imagens, AutoShapes, OLE objectos, etc. Alguns campos também são importados como formas, por exemplo, o campo `INCLUDEPICTURE`.

Uma imagem simples é representada por um nó **Shape** de [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Este nó de forma não tem nós filhos, mas os dados de imagem contidos neste nó de forma podem ser acessados pela propriedade [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData). Por outro lado, uma forma também pode ser composta por muitos nós filhos. Por exemplo, uma forma de caixa de texto, que é representada pela propriedade [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX), pode ser composta por muitos nós, como [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). A maioria das formas pode incluir os nós de nível de bloco **Paragraph** e **Table**. Estes são os mesmos nós que aparecem no corpo principal. As formas são sempre partes de algum parágrafo, incluídas diretamente em linha ou ancoradas ao **Paragraph,**, mas "flutuando" em qualquer lugar da página do documento.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Um documento também pode conter formas agrupadas. O agrupamento pode ser ativado em Microsoft Word selecionando vários objetos e clicando em "grupo" no menu do botão direito.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Em Aspose.Words, esses grupos de formas são representados pelo nó [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). Estes também podem ser invocados da mesma forma para renderizar todo o grupo para a imagem.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

O formato DOCX pode conter tipos especiais de imagens, como diagramas ou gráficos. Essas formas também são representadas através do nó **Shape** em Aspose.Words, que também fornece um método semelhante para renderizá-las como imagens. Por design, uma forma não pode conter outra forma quando criança, a menos que essa forma seja uma imagem (**ShapeType.Image**). Por exemplo, Microsoft Word não permite inserir uma caixa de texto dentro de outra caixa de texto.

Os tipos de forma descritos acima fornecem um método especial para renderizar as formas através da classe [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). Uma instância da classe **ShapeRenderer** é recuperada para um **Shape** ou **GroupShape** através do método **GetShapeRenderer** ou passando o **Shape** para o construtor da classe **ShapeRenderer**. Esta classe fornece acesso aos Membros, o que permite renderizar uma forma para o seguinte:

- Arquivo no disco usando o método [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) sobrecarga
- Fluxo usando o método [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) sobrecarga
- Objeto gráfico utilizando os métodos [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) e [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

Ao renderizar um **Shape**, ele deve fazer parte da hierarquia do documento. Se o **Shape** não fizer parte da árvore de documentos, a saída renderizada ficará em branco após a invocação dos métodos **ShapeRenderer**.

{{% /alert %}}

## Renderização para arquivo ou fluxo

O método [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) fornece sobrecargas que renderizam uma forma diretamente em um arquivo ou fluxo. Ambas as sobrecargas aceitam uma instância da classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), que permite definir opções para renderizar a forma. Isso funciona da mesma maneira que o método [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Mesmo que este parâmetro seja obrigatório, pode passar um valor nulo, especificando que não existem opções personalizadas.

A forma pode ser exportada em qualquer formato de imagem especificado na enumeração [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Por exemplo, a imagem pode ser renderizada como uma imagem raster, como JPEG especificando a enumeração [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG), ou como uma imagem vetorial, como EMF especificando o [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem EMF separadamente do documento e o salvamento em disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem JPEG separadamente do documento e o salvamento em um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

A classe **ImageSaveOptions** permite especificar uma variedade de opções que controlam como a imagem é renderizada. A funcionalidade descrita acima pode ser aplicada da mesma maneira aos nós **GroupShape** e **Shape**.

## Renderização para um objeto `Graphics`

Renderizar diretamente para um objeto **Graphics** permite que você defina suas próprias configurações e o estado para o objeto **Graphics**. Um cenário comum envolve renderizar uma forma diretamente em um objeto **Graphics** recuperado de um formulário Windows ou de um Bitmap. Quando o nó **Shape** é renderizado, as configurações afetarão a aparência da forma. Por exemplo, você pode girar ou dimensionar a forma usando os métodos **RotateTransform** ou **ScaleTransform** para o objeto **Graphics**.

O exemplo abaixo mostra como renderizar uma forma para um objeto **Graphics** separadamente do documento e aplicar rotação à imagem renderizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Da mesma forma, para o método [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float), o método [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)herdado do [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) é útil para criar miniaturas do conteúdo do documento. O tamanho da forma é especificado através do construtor. O método **RenderToSize** aceita o objeto **Graphics**, as coordenadas X e Y da posição da imagem e o tamanho da imagem (largura e altura) que será desenhada no objeto **Graphics**.

O **Shape** pode ser renderizado em uma determinada escala usando o método [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) herdado da classe [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). Isto é semelhante ao método [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) que aceita os mesmos parâmetros principais. A diferença entre esses dois métodos é que, com o método **ShapeRenderer.RenderToScale**, em vez de um tamanho literal, você escolhe um valor flutuante que dimensiona a forma durante sua renderização. Se o valor flutuante for igual a 1.0, a forma será renderizada a 100% do seu tamanho original. Um valor flutuante de 0.5 reduzirá o tamanho da imagem pela metade.

## Renderizar uma imagem de forma

A classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) representa objetos na camada de desenho, como um AutoShape, caixa de texto, forma livre, objeto OLE, controle ActiveX ou uma imagem. Usando a classe **Shape**, você pode criar ou modificar formas em um documento Microsoft Word. Uma propriedade importante de uma forma é its [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Formas de diferentes tipos podem ter diferentes capacidades em um documento do Word. Por exemplo, apenas imagens e formas OLE podem ter imagens dentro delas, enquanto a maioria das formas pode ter apenas texto.

O exemplo a seguir mostra como renderizar uma imagem de forma em uma imagem JPEG separadamente do documento e salvá-la no disco:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Recuperando um tamanho de forma

A classe [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) também fornece funcionalidade para recuperar o tamanho da forma em pixels através do método [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Este método aceita dois parâmetros float (Single) - a escala e DPI, que são usados no cálculo do tamanho da forma quando a forma é renderizada. O método retorna o objeto [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float), que contém a largura e a altura do tamanho calculado. Isso é útil quando é necessário saber o tamanho da forma renderizada com antecedência, por exemplo, ao criar um novo Bitmap a partir da saída renderizada.

O exemplo abaixo mostra como criar um novo Bitmap e objeto gráfico com a largura e a altura da forma a ser renderizada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Ao usar os métodos **RenderToSize** ou **RenderToScale**, o tamanho da imagem renderizada também é retornado no objeto [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). Isso pode ser atribuído a uma variável e usado, se necessário.

A propriedade **SizeInPoints** devolve o tamanho da forma medido em pontos (Ver [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). O resultado é um objecto `SizeF` que contém a largura e a altura.
