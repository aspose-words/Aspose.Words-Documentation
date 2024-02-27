---
title: C#'te Filigranla Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Filigranla Çalışmak
linktitle: Filigranla Çalışmak
description: "C# kullanarak filigran manipülasyonunu belgeleyin."
type: docs
weight: 340
url: /tr/net/working-with-watermark/
---

Bu konu, Aspose.Words kullanarak filigranla programlı olarak nasıl çalışılacağını açıklamaktadır. Filigran, bir belgedeki metnin arkasında görüntülenen bir arka plan resmidir. Filigran, [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) sınıfı tarafından temsil edilen bir metin veya resim içerebilir.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ücretsiz çevrimiçi belge filigranı](https://products.aspose.app/words/watermark)'imizle deneyebilirsiniz.

{{% /alert %}}

## Belgeye Filigran Ekleme

Microsoft Word'te, Filigran Ekle komutunu kullanarak bir belgeye kolayca filigran eklenebilir. Aspose.Words, belgelere filigran eklemek veya kaldırmak için [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) sınıfını sağlar. Aspose.Words, üzerinde çalışılacak üç olası filigran türünü (Metin, Resim ve Yok) tanımlayan [Filigran Türü](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeration'ı sağlar

### Metin Filigranı Ekle

Aşağıdaki kod örneği, [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) yöntemini kullanarak [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/)'i tanımlayarak bir belgeye metin filigranının nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Resim Filigranı Ekle

Aşağıdaki kod örneği, [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) yöntemini kullanarak [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/)'i tanımlayarak bir belgeye görüntü filigranının nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Filigran aynı zamanda şekil sınıfı kullanılarak da eklenebilir. Herhangi bir şekli veya görüntüyü üstbilgi veya altbilgiye eklemek ve böylece akla gelebilecek herhangi bir türde filigran oluşturmak çok kolaydır.

Aşağıdaki kod örneği, bir Word belgesine filigran ekler:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}


## Belgeden Filigranı Kaldırma

[Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) sınıfı, filigranı bir belgeden kaldırmak için kaldırma yöntemini sağlar.

Aşağıdaki kod örneği, filigranın belgelerden nasıl kaldırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Filigranlar [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) sınıfı nesnesi kullanılarak eklenirse, filigranı bir belgeden kaldırmak için, ekleme sırasında yalnızca filigran şeklinin adını ayarlamanız ve ardından filigran şeklini atanan bir adla kaldırmanız gerekir.

Aşağıdaki kod örneği, filigran şeklinin adını nasıl ayarlayacağınızı ve onu belgeden nasıl kaldıracağınızı gösterir:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Tablo Hücresine Filigran Ekleme

Bazen bir tablonun hücresine filigran/görüntü eklemeniz ve bunu tablonun dışında görüntülemeniz gerekebilir, [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) özelliğini kullanabilirsiniz. Bu özellik, şeklin tablonun içinde mi yoksa dışında mı görüntüleneceğini belirten bir bayrak alır veya ayarlar. Bu özelliğin yalnızca belgeyi [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) yöntemini kullanarak Microsoft Word 2010 için optimize ettiğinizde çalıştığını unutmayın.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
