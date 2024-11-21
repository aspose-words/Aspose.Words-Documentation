---
title: Python'te Filigranla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Filigranla Çalışmak
linktitle: Filigranla Çalışmak
description: "Python'i kullanarak bir belgede filigranlar oluşturun ve yönetin."
type: docs
weight: 340
url: /tr/python-net/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Bu konu, Aspose.Words kullanarak filigranla programlı olarak nasıl çalışılacağını açıklamaktadır. Filigran, bir belgedeki metnin arkasında görüntülenen bir arka plan resmidir. Filigran, [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) sınıfı tarafından temsil edilen bir metin veya resim içerebilir.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ücretsiz çevrimiçi belge filigranı](https://products.aspose.app/words/watermark)'imizle deneyebilirsiniz.

{{% /alert %}}

## Belgeye Filigran Nasıl Eklenir?

Microsoft Word'te, Filigran Ekle komutunu kullanarak bir belgeye kolayca filigran eklenebilir. Aspose.Words, belgelere filigran eklemek veya kaldırmak için [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) sınıfını sağlar. Aspose.Words, üzerinde çalışılacak üç olası filigran türünü ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) ve [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) tanımlayan [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) numaralandırmasını sağlar

### Metin Filigranı Ekle

Aşağıdaki kod örneği, [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) yöntemini kullanarak [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/)'i tanımlayarak bir belgeye metin filigranının nasıl ekleneceğini gösterir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Resim Filigranı Ekle

Aşağıdaki kod örneği, [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) yöntemini kullanarak [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/)'i tanımlayarak bir belgeye görüntü filigranının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Filigran aynı zamanda şekil sınıfı kullanılarak da eklenebilir. Herhangi bir şekli veya görüntüyü üstbilgi veya altbilgiye eklemek ve böylece akla gelebilecek herhangi bir türde filigran oluşturmak çok kolaydır.

Aşağıdaki kod örneği, bir Word belgesine filigran ekler:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz

{{% /alert %}}


## Belgeden Filigranı Kaldırma

[Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) sınıfı, filigranı bir belgeden kaldırmak için kaldırma yöntemini sağlar.

Aşağıdaki kod örneği, filigranın belgelerden nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Filigranlar [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfı nesnesi kullanılarak eklenirse, filigranı bir belgeden kaldırmak için, ekleme sırasında yalnızca filigran şeklinin adını ayarlamanız ve ardından filigran şeklini atanan bir adla kaldırmanız gerekir.

Aşağıdaki kod örneği, filigran şeklinin adını nasıl ayarlayacağınızı ve onu belgeden nasıl kaldıracağınızı gösterir:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Tablo Hücresine Filigran Ekleme

Bazen bir tablonun hücresine filigran/görüntü eklemeniz ve bunu tablonun dışında görüntülemeniz gerekebilir, [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) özelliğini kullanabilirsiniz. Bu özellik, şeklin tablonun içinde mi yoksa dışında mı görüntüleneceğini belirten bir bayrak alır veya ayarlar. Bu özelliğin yalnızca belgeyi [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) yöntemini kullanarak Microsoft Word 2010 için optimize ettiğinizde çalıştığını unutmayın.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
