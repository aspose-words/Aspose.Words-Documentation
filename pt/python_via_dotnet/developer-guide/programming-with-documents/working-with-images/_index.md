---
title: Trabalhando com imagens em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com imagens
linktitle: Trabalhando com imagens
description: "Crie e gerencie imagens de vários formatos em um documento usando Python."
type: docs
weight: 300
url: /pt/python-net/working-with-images/
---

Aspose.Words permite aos usuários trabalhar com imagens de uma forma muito flexível. Neste artigo você poderá explorar apenas algumas das possibilidades de trabalhar com imagens.

## Inserindo uma imagem

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fornece diversas sobrecargas do método [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) que permitem inserir uma imagem embutida ou flutuante. Se a imagem for um metarquivo EMF ou WMF, ela será inserida no documento no formato metarquivo. Todas as outras imagens serão armazenadas no formato PNG. O método **Inserir Imagem** pode usar imagens de diferentes fontes:

- De um arquivo ou `URL` passando um parâmetro string
- De um stream passando um parâmetro `Stream`
- A partir de uma matriz de bytes, passando um parâmetro de matriz de bytes

Para cada um dos métodos **Inserir Imagem**, existem sobrecargas adicionais que permitem inserir uma imagem com as seguintes opções:
- Inline ou flutuante em uma posição específica, por exemplo, **Inserir Imagem**
- Escala percentual ou tamanho personalizado; além disso, o método [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) retorna um objeto [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) que acabou de ser criado e inserido para que você possa modificar ainda mais as propriedades do [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Inserindo uma imagem embutida

Passe uma única string representando um arquivo que contém a imagem para [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) para inserir a imagem no documento como um gráfico embutido.

O exemplo de código a seguir mostra como inserir uma imagem embutida na posição do cursor em um documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Inserindo uma imagem flutuante (absolutamente posicionada)

O exemplo de código a seguir mostra como inserir uma imagem flutuante de um arquivo ou `URL` em uma posição e tamanho especificados:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Como extrair imagens de um documento

Todas as imagens são armazenadas dentro de nós [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) em um [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Para extrair todas as imagens ou imagens de tipo específico do documento, siga estas etapas:

- Use o método [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) para selecionar todos os nós [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Iterar pelas coleções de nós resultantes.
- Verifique a propriedade booleana [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Extraia dados de imagem usando a propriedade [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Salve os dados da imagem em um arquivo.

O exemplo de código a seguir mostra como extrair imagens de um documento e salvá-las como arquivos:

Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Como inserir código de barras em cada página de um documento

Este exemplo demonstra como adicionar códigos de barras iguais ou diferentes em todas ou em páginas específicas de um documento do Word. Não existe uma maneira direta de adicionar códigos de barras em todas as páginas de um documento, mas você pode usar os métodos [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) e [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) para mover para qualquer seção ou cabeçalhos/rodapés e inserir as imagens de código de barras como você pode ver no código a seguir.

O exemplo de código a seguir insere uma imagem de código de barras em cada página de um documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Bloquear proporção da imagem

A proporção de uma forma geométrica é a proporção de seus tamanhos em diferentes dimensões. Você pode bloquear a proporção da imagem usando [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). O valor padrão da proporção da forma depende do [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). É `True` para [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) e `False` para outros tipos de formas.

O exemplo de código a seguir mostra como trabalhar com proporção:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Como obter limites reais de forma em pontos

Se desejar que a caixa delimitadora real da forma seja renderizada na página, você pode fazer isso usando a propriedade [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

O exemplo de código a seguir mostra como usar essa propriedade:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Cortar imagens

O corte de uma imagem geralmente se refere à remoção das partes externas indesejadas de uma imagem para ajudar a melhorar o enquadramento. Também é usado para remover algumas partes de uma imagem para aumentar o foco em uma área específica.

O exemplo de código a seguir mostra como fazer isso usando Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Salvando imagens como WMF

Aspose.Words fornece funcionalidade para salvar todas as imagens disponíveis em um documento no formato [WMF](https://docs.fileformat.com/image/wmf/) enquanto converte DOCX em RTF.

O exemplo de código a seguir mostra como salvar imagens como WMF com opções de salvamento RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
