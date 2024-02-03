---
title: Renderizando formas separadamente do documento
second_title: Aspose.Words para .NET
articleTitle: Renderizando formas separadamente de um documento
linktitle: Renderizando formas separadamente de um documento
description: "Extraia vários objetos gráficos, como imagens, caixas de texto contendo parágrafos ou formas de setas, ao processar um documento, e exporte-os para um local externo usando C#."
type: docs
weight: 40
url: /pt/net/rendering-shapes-separately-from-a-document/
---

Ao processar documentos, uma tarefa comum é extrair todas as imagens encontradas no documento e exportá-las para um local externo. Essa tarefa fica simples com o Aspose.Words API, que já oferece a funcionalidade de extração e salvamento de dados de imagens. No entanto, às vezes você pode querer extrair de forma semelhante outros tipos de conteúdo gráfico representados por um tipo diferente de objeto de desenho, por exemplo, uma caixa de texto contendo parágrafos, formas de seta e uma imagem pequena. Não existe uma maneira simples de renderizar esse objeto, pois ele é uma combinação de elementos de conteúdo individuais. Você também pode encontrar um caso em que o conteúdo foi agrupado em um objeto que se parece com uma única imagem.

Aspose.Words fornece funcionalidade para extrair esse tipo de conteúdo da mesma forma que você pode extrair uma imagem simples de uma forma como conteúdo renderizado. Este artigo descreve como utilizar esta funcionalidade para renderizar formas independentemente do documento.

## Tipos de forma em Aspose.Words

Todo o conteúdo em uma camada de desenho de documento é representado pelo nó [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ou [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) no Aspose.Words Document Object Module (DOM). Tais conteúdos podem ser caixas de texto, imagens, AutoFormas, objetos OLE, etc. Alguns campos também são importados como formas, por exemplo, o campo `INCLUDEPICTURE`.

Uma imagem simples é representada por um nó **Shape** de [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Este nó de forma não possui nós filhos, mas os dados de imagem contidos neste nó de forma podem ser acessados pela propriedade [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). Por outro lado, uma forma também pode ser composta de vários nós filhos. Por exemplo, uma forma de caixa de texto, representada pela propriedade [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/), pode ser composta de vários nós, como [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). A maioria das formas pode incluir nós de nível de bloco **Paragraph** e **Table**. Esses são os mesmos nós que aparecem no corpo principal. As formas são sempre partes de algum parágrafo, incluídas diretamente inline ou ancoradas no **Parágrafo,**, mas "flutuando" em qualquer lugar da página do documento.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Um documento também pode conter formas agrupadas. Grouping pode ser habilitado em Microsoft Word selecionando vários objetos e clicando em "Group" no menu do botão direito.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

No Aspose.Words, esses grupos de formas são representados pelo nó [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). Eles também podem ser invocados da mesma maneira para renderizar todo o grupo em imagem.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

O formato DOCX pode conter tipos especiais de imagens, como diagramas ou gráficos. Essas formas também são representadas por meio do nó **Shape** em Aspose.Words, que também fornece um método semelhante para renderizá-las como imagens. Por design, uma forma não pode conter outra forma como filha, a menos que essa forma seja uma imagem (**ShapeType.Image**). Por exemplo, Microsoft Word não permite inserir uma caixa de texto dentro de outra caixa de texto.

Os tipos de formas descritos acima fornecem um método especial para renderizar as formas por meio da classe [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Uma instância da classe **ShapeRenderer** é recuperada para um **Shape** ou **GroupShape** através do método **GetShapeRenderer** ou passando o **Shape** para o construtor da classe **ShapeRenderer**. Esta classe fornece acesso a membros, que permitem renderizar uma forma para o seguinte:

- Arquivo no disco usando a sobrecarga do método [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Transmita usando a sobrecarga do método [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Objeto gráfico .NET usando os métodos [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) e [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Ao renderizar um **Shape**, ele deve fazer parte da hierarquia do documento. Se o **Shape** não fizer parte da árvore do documento, a saída renderizada ficará em branco após invocar os métodos **ShapeRenderer**.

{{% /alert %}}

## Renderizando para arquivo ou fluxo

O método [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) fornece sobrecargas que renderizam uma forma diretamente em um arquivo ou fluxo. Ambas as sobrecargas aceitam uma instância da classe [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), que permite definir opções para renderizar a forma. Isso funciona da mesma maneira que o método [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Embora este parâmetro seja obrigatório, você pode passar um valor nulo, especificando que não há opções personalizadas.

A forma pode ser exportada em qualquer formato de imagem especificado na enumeração [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Por exemplo, a imagem pode ser renderizada como uma imagem raster, como JPEG, especificando a enumeração [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/), ou como uma imagem vetorial, como EMF, especificando o [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem EMF separadamente do documento e o salvamento em disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

O exemplo de código abaixo ilustra a renderização de uma forma em uma imagem JPEG separadamente do documento e o salvamento em um fluxo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

A classe **ImageSaveOptions** permite especificar uma variedade de opções que controlam como a imagem é renderizada. A funcionalidade descrita acima pode ser aplicada da mesma maneira aos nós **GroupShape** e **Shape**.

## Renderizando para um objeto gráfico .NET

A renderização direta em um objeto **Graphics** permite definir suas próprias configurações e o estado do objeto **Graphics**. Um cenário comum envolve renderizar uma forma diretamente em um objeto **Graphics** recuperado de um formulário Windows ou bitmap. Quando o nó **Shape** for renderizado, as configurações afetarão a aparência da forma. Por exemplo, você pode girar ou dimensionar a forma usando os métodos **RotateTransform** ou **ScaleTransform** para o objeto **Graphics**.

O exemplo abaixo mostra como renderizar uma forma em um objeto .**NET Graphics** separadamente do documento e aplicar rotação à imagem renderizada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Da mesma forma que o método [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/), o método [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) herdado do [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) é útil para criar miniaturas do conteúdo de um documento. O tamanho da forma é especificado por meio do construtor. O método **RenderToSize** aceita o objeto **Graphics**, as coordenadas X e Y da posição da imagem e o tamanho da imagem (largura e altura) que será desenhada no objeto **Graphics**.

O **Shape** pode ser renderizado em uma determinada escala usando o método [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) herdado da classe [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). Isto é semelhante ao método [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) que aceita os mesmos parâmetros principais. A diferença entre esses dois métodos é que com o método **ShapeRenderer.RenderToScale**, em vez de um tamanho literal, você escolhe um valor flutuante que dimensiona a forma durante sua renderização. Se o valor flutuante for igual a 1,0, a forma será renderizada em 100% de seu tamanho original. Um valor flutuante de 0,5 reduzirá o tamanho da imagem pela metade.

## Renderizando uma imagem de forma

A classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) representa objetos na camada de desenho, como AutoForma, caixa de texto, formato livre, objeto OLE, controle ActiveX ou imagem. Usando a classe **Shape**, você pode criar ou modificar formas em um documento Microsoft Word. Uma propriedade importante de uma forma é o seu [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Formas de tipos diferentes podem ter recursos diferentes em um documento do Word. Por exemplo, apenas imagens e formas OLE podem conter imagens, enquanto a maioria das formas pode conter apenas texto.

O exemplo a seguir mostra como renderizar uma imagem Shape em uma imagem JPEG separadamente do documento e salvá-la no disco:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Recuperando um tamanho de forma

A classe [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) também oferece funcionalidade para recuperar o tamanho da forma em pixels por meio do método [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Este método aceita dois parâmetros float (Single) – a escala e o DPI, que são usados no cálculo do tamanho da forma quando a forma é renderizada. O método retorna o objeto [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/), que contém a largura e a altura do tamanho calculado. Isto é útil quando é necessário saber antecipadamente o tamanho da forma renderizada, por exemplo, ao criar um novo Bitmap a partir da saída renderizada.

O exemplo abaixo mostra como criar um novo objeto Bitmap e Gráfico com a largura e altura da forma a ser renderizada:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Ao utilizar os métodos **RenderToSize** ou **RenderToScale**, o tamanho da imagem renderizada também é retornado no objeto [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). Isso pode ser atribuído a uma variável e usado se necessário.

A propriedade **SizeInPoints** retorna o tamanho do Shape medido em pontos (ver [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). O resultado é um objeto `SizeF` contendo a largura e a altura.
