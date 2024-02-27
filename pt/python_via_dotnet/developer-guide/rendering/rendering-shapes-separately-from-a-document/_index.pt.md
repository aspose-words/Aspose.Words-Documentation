---
title: Formas separadamente do documento
second_title: Aspose.Words para Python via .NET
articleTitle: Renderizando formas separadamente de um documento
linktitle: Renderizando formas separadamente de um documento
description: "Extraia vários objetos gráficos, como imagens, caixas de texto contendo parágrafos ou formas de setas, ao processar um documento, e exporte-os para um local externo usando Python."
type: docs
weight: 40
url: /pt/python-net/rendering-shapes-separately-from-a-document/
---

Ao processar documentos, uma tarefa comum é extrair todas as imagens encontradas no documento e exportá-las para um local externo. Essa tarefa fica simples com o Aspose.Words API, que já oferece a funcionalidade de extração e salvamento de dados de imagens. No entanto, às vezes você pode querer extrair de forma semelhante outros tipos de conteúdo gráfico representados por um tipo diferente de objeto de desenho, por exemplo, uma caixa de texto contendo parágrafos, formas de seta e uma imagem pequena. Não existe uma maneira simples de renderizar esse objeto, pois ele é uma combinação de elementos de conteúdo individuais. Você também pode encontrar um caso em que o conteúdo foi agrupado em um objeto que se parece com uma única imagem.

Aspose.Words fornece funcionalidade para extrair esse tipo de conteúdo da mesma forma que você pode extrair uma imagem simples de uma forma como conteúdo renderizado. Este artigo descreve como utilizar esta funcionalidade para renderizar formas independentemente do documento.

## Tipos de forma em Aspose.Words

Todo o conteúdo em uma camada de desenho de documento é representado pelo nó [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) no Aspose.Words Document Object Module (DOM). Tais conteúdos podem ser caixas de texto, imagens, AutoFormas, objetos OLE, etc. Alguns campos também são importados como formas, por exemplo, o campo `INCLUDEPICTURE`.

Uma imagem simples é representada por um nó [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) de [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Este nó de forma não possui nós filhos, mas os dados de imagem contidos neste nó de forma podem ser acessados pela propriedade [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). Por outro lado, uma forma também pode ser composta por vários nós filhos. Por exemplo, uma forma de caixa de texto, representada pela propriedade [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), pode ser composta de vários nós, como [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). A maioria das formas pode incluir nós de nível de bloco [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Esses são os mesmos nós que aparecem no corpo principal. As formas são sempre partes de algum parágrafo, incluídas diretamente inline ou ancoradas no [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), mas "flutuando" em qualquer lugar da página do documento.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Um documento também pode conter formas agrupadas. Grouping pode ser habilitado em Microsoft Word selecionando vários objetos e clicando em "Group" no menu do botão direito.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

No Aspose.Words, esses grupos de formas são representados pelo nó [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Eles também podem ser invocados da mesma maneira para renderizar todo o grupo em imagem.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

O formato DOCX pode conter tipos especiais de imagens, como diagramas ou gráficos. Essas formas também são representadas por meio do nó [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) em Aspose.Words, que também fornece um método semelhante para renderizá-las como imagens. Por design, uma forma não pode conter outra forma como filha, a menos que essa forma seja uma imagem ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Por exemplo, Microsoft Word não permite inserir uma caixa de texto dentro de outra caixa de texto.

Os tipos de formas descritos acima fornecem um método especial para renderizar as formas por meio da classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Uma instância da classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) é recuperada para um [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) através do método [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) ou passando o [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) para o construtor da classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Esta classe fornece acesso a membros, que permitem renderizar uma forma para o seguinte:

- Arquivo no disco
- Fluxo

{{% alert color="primary" %}}

Ao renderizar um [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), ele deve fazer parte da hierarquia do documento. Se o [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) não fizer parte da árvore do documento, a saída renderizada ficará em branco após invocar os métodos [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Renderizando para arquivo ou fluxo

O método [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) fornece sobrecargas que renderizam uma forma diretamente em um arquivo ou fluxo. Ambas as sobrecargas aceitam uma instância da classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), que permite definir opções de renderização da forma. Isso funciona da mesma maneira que o método [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Embora este parâmetro seja obrigatório, você pode passar um valor nulo, especificando que não há opções personalizadas.

A forma pode ser exportada em qualquer formato de imagem especificado na enumeração [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Por exemplo, a imagem pode ser renderizada como uma imagem raster, como JPEG, especificando a enumeração [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg), ou como uma imagem vetorial, como EMF, especificando o [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem EMF separadamente do documento e o salvamento em disco:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem JPEG separadamente do documento e o salvamento em um fluxo:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

A classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) permite especificar uma variedade de opções que controlam como a imagem é renderizada. A funcionalidade descrita acima pode ser aplicada da mesma maneira aos nós [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) e [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Renderizando uma imagem de forma

A classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) representa objetos na camada de desenho, como AutoForma, caixa de texto, formato livre, objeto OLE, controle ActiveX ou imagem. Usando a classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), você pode criar ou modificar formas em um documento Microsoft Word. Uma propriedade importante de uma forma é o seu [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/). Formas de tipos diferentes podem ter recursos diferentes em um documento do Word. Por exemplo, apenas imagens e formas OLE podem conter imagens, enquanto a maioria das formas pode conter apenas texto.

O exemplo a seguir mostra como renderizar uma imagem Shape em uma imagem JPEG separadamente do documento e salvá-la no disco:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Recuperando um tamanho de forma

A classe [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) também oferece funcionalidade para recuperar o tamanho da forma em pixels por meio do método [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Este método aceita dois parâmetros float (Single) – a escala e o DPI, que são usados no cálculo do tamanho da forma quando a forma é renderizada. O método retorna o objeto **Size**, que contém a largura e a altura do tamanho calculado. Isto é útil quando é necessário saber antecipadamente o tamanho da forma renderizada. A propriedade [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) retorna o tamanho da Forma medido em pontos. O resultado é um objeto **SizeF** contendo a largura e a altura. Além disso, você pode usar a propriedade [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) para obter os limites reais da forma.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


