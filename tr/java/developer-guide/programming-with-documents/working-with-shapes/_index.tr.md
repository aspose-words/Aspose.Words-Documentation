---
title: Şekillerle Çalışmak Java'da
second_title: Aspose.Words için Java
articleTitle: Şekillerle Çalışmak
linktitle: Şekillerle Çalışmak
type: docs
description: "Şekil işaretleme diline giriş, farklı türlerde şekiller oluşturma Java ile."
weight: 280
url: /tr/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Bu konu, şekillerle programatik çalışmayı nasıl yapacağınızı tartışır Aspose.Words.

Şekiller, Aspose.Words katmanındaki bir nesneyi, örneğin bir AutoShape, metin kutusu, serbest biçim, OLE nesnesi, ActiveX denetimi veya resim temsil eder. Bir Word belgesi bir ya da daha fazla farklı şekil içerebilir. Dokümantadaki şekiller [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) sınıfı tarafından temsil edilir.

## Document Builder kullanarak şekil ekle

Belirtilen tür ve boyutla yerleşik şekil ve serbest yüzen şekil ile belirtilen konum, boyut ve metin sarma türü bir belgeye [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) yöntemi kullanılarak eklenebilir. **InsertShape** yöntemi, DML şeklini belge modeline eklemeyi sağlar. Belge, DML şeklini destekleyen bir biçimde kaydedilmezse, bu düğümler VML şekli olurken belge kaydetme sırasında dönüştürülür.

Aşağıdaki örnek kod, bu tür şekilleri belgenin içine eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Aspect Ratio Kilitli Ayarlarını Belirle

Kullanarak Aspose.Words, şeklinizin yön oranı kilitli olup olmadığını belirtmek için [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği **AspectRatioLocked** özelliğini nasıl kullanacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Hücre İçinde Şekil Düzeni Ayarla

Şekli bir tabloda mı yoksa dışında mı görüntüleneceğini belirtmek için [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) özelliğini de kullanabilirsiniz.

Aşağıdaki kod örneği, **IsLayoutInCell** özelliğini nasıl kullanacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Kenarları Ekle Kesildi

Bir snip köşe dikdörtgen oluşturmak için Aspose.Words kullanabilirsiniz. Şekil türleri *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded ve *DiagonalCornersRounded.* 'dir

DML şekli bu şekil türleri ile **InsertShape** yöntemini kullanarak oluşturulur. Bu türler VML şekilleri oluşturmak için kullanılamaz. 'Shape' sınıfının kamuya açık oluşturucusunu kullanarak şekil oluşturmaya çalışmak 'NotSupportedException' özel durumuna neden olur.

Aşağıdaki kod örneği bu tür şekilleri belgenin içine nasıl ekleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Asıl Şekil Sınır Noktalarını Al

Aspose.Words API kullanarak, en üstteki şeklin anکر konumuna göre, şekil kapsayıcısının konumunu ve boyutunu noktalar halinde alabilirsiniz. Bunu yapmak için, [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) özelliğini kullanın.

Aşağıdaki kod örneği, **BoundsInPoints** özelliğini nasıl kullanacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Dikey Anahtarı Belirt

Bir şekil içinde metin dikey hizalamasını [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) özelliği kullanarak belirtebilirsiniz.

Aşağıdaki kod örneği nasıl **VerticalAnchor** özelliğini kullanacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## SmartArt Şekli Algıla

Aspose.Words ayrıca şeklin bir `SmartArt` nesnesi olup olmadığını tespit etmenize de izin verir. Bunu yapmak için [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) özelliğini kullanın.

Aşağıdaki örnek kod, nasıl **HasSmartArt** özelliğine çalışılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Yatay Kural Biçimi

Bir belgeye yatay kural şekil [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) yöntemiyle ekleyebilirsiniz.

Aspose.Words API [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) özelliğini yatay çizgi şeklin özelliklerine erişmek için sağlar. [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) sınıfı Yükseklik, Renk, NoShade vb. gibi temel özellikleri açığa çıkarır bir yatay kuralın biçimlendirilmesi için.

Aşağıdaki kod örneği **HorizontalRuleFormat**'i nasıl ayarlayacağını gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
