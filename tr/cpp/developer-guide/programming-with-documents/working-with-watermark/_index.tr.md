---
title: C++ içinde Filigranla çalışma
second_title: Aspose.Words için C++
articleTitle: Filigran ile çalışma
linktitle: Filigran ile çalışma
type: docs
description: "C++ kullanarak filigran manipülasyonunu belgeleyin."
weight: 340
url: /tr/cpp/working-with-watermark/
---

Bu konuda Aspose.Words kullanarak filigranla programlı olarak nasıl çalışılacağı anlatılmaktadır. Filigran, belgedeki metnin arkasında görüntülenen bir arka plan görüntüsüdür. Filigran, [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) sınıfı tarafından temsil edilen bir metin veya resim içerebilir.

## Belgeye Filigran Ekleme

Microsoft Word 'de Filigran Ekle komutunu kullanarak bir belgeye kolayca filigran eklenebilir. Aspose.Words belgelere filigran eklemek veya kaldırmak için [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) sınıfını sağlar. Aspose.Words çalışmak için üç olası filigran türünü (Metin, Resim ve Hiçbiri) tanımlayan [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/) numaralandırmasını sağlar.

### Metin Filigranı Ekle

Aşağıdaki kod örneği, [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/) yöntemini kullanarak [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) tanımlayarak bir belgeye nasıl metin filigranı ekleneceğini gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Resim Filigranı Ekle

Aşağıdaki kod örneği, [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/) yöntemini kullanarak [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) tanımlayarak bir belgeye resim filigranının nasıl ekleneceğini gösterir.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Filigran, shape sınıfı kullanılarak da eklenebilir. Bir üstbilgi veya altbilgiye herhangi bir şekil veya görüntü eklemek ve böylece akla gelebilecek herhangi bir türde bir filigran oluşturmak çok kolaydır. Aşağıdaki kod örneği, bir Word belgesine filigran ekler.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Bir Belgeden Filigranı Kaldırma

[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) sınıfı, filigranı bir belgeden kaldırmak için kaldır yöntemini sağlar.

Aşağıdaki kod örneği, belgelerden filigranın nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Filigranlar [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) sınıf nesnesi kullanılarak eklenirse, filigranı bir belgeden kaldırmak için ekleme sırasında yalnızca filigran şeklinin adını ayarlamanız ve ardından filigran şeklini atanmış bir adla kaldırmanız gerekir.

Aşağıdaki kod örneği, filigran şeklinin adını nasıl ayarlayacağınızı ve belgeden nasıl kaldıracağınızı gösterir:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Tablo Hücresine Filigran Ekleme

Bazen bir tablonun hücresine filigran / resim eklemeniz ve tablonun dışında görüntülemeniz gerekir, [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) özelliğini kullanabilirsiniz. Bu özellik, şeklin bir tablonun içinde mi yoksa dışında mı görüntülendiğini gösteren bir bayrak alır veya ayarlar. Bu özelliğin yalnızca [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) yöntemini kullanarak belgeyi Microsoft Word 2010 için en iyileştirdiğinizde çalıştığını unutmayın.

Aşağıdaki kod örneği, bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
