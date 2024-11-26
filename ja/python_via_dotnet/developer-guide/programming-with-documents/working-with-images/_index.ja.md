---
title: Python での画像の操作
second_title: Python via .NET用Aspose.Words
articleTitle: 画像の操作
linktitle: 画像の操作
description: "Python を使用して、ドキュメント内のさまざまな形式の画像を作成および管理します。"
type: docs
weight: 300
url: /ja/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words を使用すると、ユーザーは非常に柔軟な方法で画像を操作できます。この記事では、画像を操作する可能性の一部のみを紹介します。

## 画像の挿入

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) は、インラインまたはフローティング イメージを挿入できる [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) メソッドのオーバーロードをいくつか提供します。画像が EMF または WMF メタファイルの場合、メタファイル形式でドキュメントに挿入されます。他のすべての画像は PNG 形式で保存されます。 **画像の挿入** メソッドでは、さまざまなソースからの画像を使用できます。

- 文字列パラメータを渡してファイルまたは `URL` から
- `Stream` パラメータを渡してストリームから
- バイト配列パラメータを渡すことによるバイト配列から

各 **画像の挿入** メソッドには、次のオプションを使用してイメージを挿入できるオーバーロードがさらにあります。
- 特定の位置でのインラインまたはフローティング (**画像の挿入** など)
- パーセンテージスケールまたはカスタムサイズ。さらに、[DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) メソッドは作成および挿入されたばかりの [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) オブジェクトを返すため、[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) のプロパティをさらに変更できます。

### インライン画像の挿入

画像を含むファイルを表す単一の文字列を [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) に渡し、画像をインライン グラフィックとしてドキュメントに挿入します。

次のコード例は、ドキュメント内のカーソル位置にインライン イメージを挿入する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### フローティング (絶対配置) 画像の挿入

次のコード例は、ファイルまたは `URL` から指定された位置とサイズにフローティング イメージを挿入する方法を示しています。

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

## ドキュメントから画像を抽出する方法

すべてのイメージは、[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ノード内の [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) に保存されます。すべての画像、または特定のタイプの画像をドキュメントから抽出するには、次の手順に従います。

- [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) メソッドを使用して、すべての [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) ノードを選択します。
- 結果として得られるノード コレクションを反復処理します。
- [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) ブール値プロパティを確認します。
- [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) プロパティを使用して画像データを抽出します。
・画像データをファイルに保存します。

次のコード例は、ドキュメントから画像を抽出してファイルとして保存する方法を示しています。

この例のテンプレート ファイルは [ここ](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) からダウンロードできます。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) からダウンロードできます。

{{% /alert %}}

## 文書の各ページにバーコードを挿入する方法

この例では、Word 文書のすべてのページまたは特定のページに同じまたは異なるバーコードを追加する方法を示します。ドキュメントのすべてのページにバーコードを追加する直接的な方法はありませんが、次のコードに示すように、[move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/)、[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)、および [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) メソッドを使用して任意のセクションまたはヘッダー/フッターに移動し、バーコード イメージを挿入できます。

次のコード例では、ドキュメントの各ページにバーコード イメージを挿入します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## 画像のアスペクト比をロックする

幾何学的形状のアスペクト比は、さまざまな次元でのサイズの比率です。 [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) を使用して画像のアスペクト比をロックできます。シェイプのアスペクト比のデフォルト値は [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) によって異なります。 [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) の場合は `True`、他の形状タイプの場合は `False` です。

次のコード例は、アスペクト比を操作する方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## 実際の形状の境界をポイント単位で取得する方法

ページ上に描画される形状の実際の境界ボックスが必要な場合は、[bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) プロパティを使用してこれを実現できます。

次のコード例は、このプロパティの使用方法を示しています。

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## 画像のトリミング

画像のトリミングとは通常、フレーミングを改善するために画像の不要な外側部分を除去することを指します。また、特定の領域への焦点を高めるために画像の一部を削除するためにも使用されます。

次のコード例は、Aspose.Words API を使用してこれを実現する方法を示しています。

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

## 画像を WMF として保存する

Aspose.Words は、DOCX を RTF に変換しながら、ドキュメント内の利用可能なすべての画像を [WMF](https://docs.fileformat.com/image/wmf/) 形式で保存する機能を提供します。

次のコード例は、RTF 保存オプションを使用して画像を WMF として保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
