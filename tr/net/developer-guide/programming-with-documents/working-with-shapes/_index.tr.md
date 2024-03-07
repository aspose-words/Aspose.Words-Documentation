---
title: C#'te Şekillerle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Şekillerle Çalışmak
linktitle: Şekillerle Çalışmak
description: "Şekil işaretleme diline giriş, C# kullanarak farklı türde şekiller oluşturma."
type: docs
weight: 280
url: /tr/net/working-with-shapes/
---

Bu konu, Aspose.Words kullanarak şekillerle programlı olarak nasıl çalışılacağını anlatmaktadır.

Aspose.Words'teki şekiller çizim katmanındaki Otomatik Şekil, metin kutusu, serbest biçim, OLE nesnesi, ActiveX denetimi veya resim gibi bir nesneyi temsil eder. Bir Word belgesi bir veya daha fazla farklı şekil içerebilir. Aspose.Words'teki şekiller [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) sınıfı tarafından temsil edilir.

## Belge Oluşturucuyu Kullanarak Şekil Ekleme

[InsertShape](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertshape/) yöntemini kullanarak bir belgeye, belirtilen tür ve boyutta satır içi şekil ve belirtilen konum, boyut ve metin sarma türüyle serbest kayan şekil ekleyebilirsiniz. **InsertShape** yöntemi, belge modeline DML şeklinin eklenmesine olanak sağlar. Belgenin DML şekillerini destekleyen formatta kaydedilmesi gerekir, aksi takdirde bu tür düğümler belge kaydedilirken VML şekline dönüştürülür.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## En Boy Oranını Kilitli Olarak Ayarla

Aspose.Words'i kullanarak şeklin en boy oranının [AspectRatioLocked](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapebase/aspectratiolocked/) özelliği aracılığıyla kilitlenip kilitlenmeyeceğini belirtebilirsiniz.

Aşağıdaki kod örneği, **AspectRatioLocked** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Hücredeki Şekil Düzenini Ayarla

[IsLayoutInCell](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapebase/islayoutincell/) özelliğini kullanarak şeklin tablonun içinde mi yoksa dışında mı görüntüleneceğini de belirleyebilirsiniz.

Aşağıdaki kod örneği, **IsLayoutInCell** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Alıntı Köşesi Dikdörtgeni Oluştur

Aspose.Words'i kullanarak bir kesme köşesi dikdörtgeni oluşturabilirsiniz. Şekil türleri şunlardır: *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* ve *DiagonalCornersRounded.*

Bu şekil türleri ile **InsertShape** yöntemi kullanılarak DML şekli oluşturulur. Bu türler VML şekilleri oluşturmak için kullanılamaz. "Shape" sınıfının ortak yapıcısını kullanarak şekil oluşturma girişimi "NotSupportedException" istisnasına neden olur.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Gerçek Şekil Sınır Noktalarını Alın

Aspose.Words API'yi kullanarak, en üstteki şeklin bağlantısına göre, blok içeren şeklin konumunu ve boyutunu noktalar halinde alabilirsiniz. Bunu yapmak için [BoundsInPoints](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapebase/boundsinpoints/) özelliğini kullanın.

Aşağıdaki kod örneği, **BoundsInPoints** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Dikey Bağlantıyı Belirtin

[VerticalAnchor](https://reference.aspose.com/words/tr/net/aspose.words.drawing/textbox/verticalanchor/) özelliğini kullanarak bir şeklin içindeki metnin dikey hizalamasını belirleyebilirsiniz.

Aşağıdaki kod örneği, **VerticalAnchor** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## SmartArt Şeklini Algıla

Aspose.Words ayrıca Shape'in bir `SmartArt` nesnesine sahip olup olmadığını tespit etmeye de olanak tanır. Bunu yapmak için [HasSmartArt](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/hassmartart/) özelliğini kullanın.

Aşağıdaki kod örneği, **HasSmartArt** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Belgeye Yatay Cetvel Ekle

[InsertHorizontalRule](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/inserthorizontalrule/) yöntemini kullanarak bir belgeye yatay kural şekli ekleyebilirsiniz.

Aşağıdaki kod örneği bunun nasıl yapılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API, yatay kural şeklinin özelliklerine erişim için [HorizontalRuleFormat](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/horizontalruleformat/) özelliğini sağlar. [HorizontalRuleFormat](https://reference.aspose.com/words/tr/net/aspose.words.drawing/horizontalruleformat/) sınıfı, yatay bir kuralın biçimlendirmesi için Yükseklik, Renk, NoShade vb. gibi temel özellikleri ortaya çıkarır.

Aşağıdaki kod örneği **HorizontalRuleFormat**'in nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Matematik XML'li Şekilleri Şekiller olarak DOM'e aktarın

EquationXML içeren şekilleri Office Math nesnelerine dönüştürmek için [ConvertShapeToOfficeMath](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) özelliğini kullanabilirsiniz. Bu özelliğin varsayılan değeri Microsoft Word davranışına karşılık gelir; yani XML denklemine sahip şekiller Office matematik nesnelerine dönüştürülmez.

Aşağıdaki kod örneği, şekillerin Office Math nesnelerine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
