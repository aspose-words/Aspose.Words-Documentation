---
title: C++ içindeki Şekillerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Şekillerle Çalışma
linktitle: Şekillerle Çalışma
type: docs
description: "Şekil biçimlendirme diline giriş, C++ kullanarak farklı türde şekiller oluşturma."
weight: 280
url: /tr/cpp/working-with-shapes/
---

Bu konuda Aspose.Words kullanarak şekillerle programlı olarak nasıl çalışılacağı anlatılmaktadır.

Aspose.Words içindeki şekiller, çizim katmanındaki AutoShape, metin kutusu, serbest form, OLE nesnesi, ActiveX denetimi veya resim gibi bir nesneyi temsil eder. Bir Word belgesi bir veya daha fazla farklı şekil içerebilir. Belgenin şekilleri [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) sınıfı ile temsil edilir.

## Belge Oluşturucuyu Kullanarak Şekil Ekleme

[InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) yöntemini kullanarak bir belgeye belirtilen tür ve boyutta satır içi şekil ve belirtilen konum, boyut ve metin kaydırma türünde serbest kayan şekil ekleyebilirsiniz. **InsertShape** yöntemi, belge modeline DML şeklinin eklenmesine izin verir. Belge, DML şekilleri destekleyen biçimde kaydedilmelidir, aksi takdirde belge kaydedilirken bu tür düğümler VML şekline dönüştürülür.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## En Boy Oranını Ayarla Kilitli

Aspose.Words kullanarak, şeklin en boy oranının [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) özelliği aracılığıyla kilitlenip kilitlenmediğini belirleyebilirsiniz.

Aşağıdaki kod örneği, **AspectRatioLocked** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Hücrede Şekil Düzenini Ayarlama

[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) özelliğini kullanarak şeklin bir tablonun içinde mi yoksa dışında mı görüntüleneceğini de belirtebilirsiniz.

Aşağıdaki kod örneği, **IsLayoutInCell** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Keskin Nişancı Köşesi Dikdörtgeni Oluştur

Aspose.Words kullanarak bir kesme köşesi dikdörtgeni oluşturabilirsiniz. Şekil türleri *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* ve *DiagonalCornersRounded.* 'dir

DML şekli, bu şekil türleriyle **InsertShape** yöntemi kullanılarak oluşturulur. Bu türler VML şekiller oluşturmak için kullanılamaz. "Shape" sınıfının genel yapıcısını kullanarak şekil oluşturma girişimi "NotSupportedException" istisnasını yükseltir.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Gerçek Şekil Sınır Noktalarını Alın

Aspose.Words API kullanarak, blok içeren şeklin konumunu ve boyutunu, en üstteki şeklin çapasına göre noktalar halinde alabilirsiniz. Bunu yapmak için [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/) özelliğini kullanın.

Aşağıdaki kod örneği, **BoundsInPoints** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Yatay Kural Biçimi

Aspose.Words API yatay kural şeklinin özelliklerine erişmek için [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) özelliğini sağlar. **HorizontalRuleFormat** sınıfı, Yükseklik, Renk, Gölge vb. Gibi temel özellikleri ortaya çıkarır. yatay bir kuralın biçimlendirilmesi için.

Aşağıdaki kod örneği nasıl ayarlanacağını gösterir **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## OLE Nesnesini Simge Olarak Ekle

Aspose.Words API belgeye simge olarak katıştırılmış veya bağlantılı bir OLE nesne eklemek için **Shape** → **InsertOleObjectAsIcon** işlevi sağlar. Bu işlev, simge dosyasının ve başlığın belirtilmesine izin verir. `OLE` nesne türü, dosya uzantısı kullanılarak algılanacaktır.

Aşağıdaki kod örneği, ınsert OLE nesnesinin belgeye Simge olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Doğru görüntü için simgenin maksimum boyutu 32x32 olmalıdır.

{{% /alert %}}
