---
title: Python'te Şekillerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Şekillerle Çalışmak
linktitle: Şekillerle Çalışmak
description: "Python kullanarak bir belgede şekiller ve ole nesneleri oluşturun ve yönetin."
type: docs
weight: 280
url: /tr/python-net/working-with-shapes/
---

Bu konu, Aspose.Words kullanarak şekillerle programlı olarak nasıl çalışılacağını anlatmaktadır.

Aspose.Words'teki şekiller çizim katmanındaki Otomatik Şekil, metin kutusu, serbest biçim, OLE nesnesi, ActiveX denetimi veya resim gibi bir nesneyi temsil eder. Bir Word belgesi bir veya daha fazla farklı şekil içerebilir. Belgenin şekilleri [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfı tarafından temsil edilir.

## Belge Oluşturucuyu Kullanarak Şekil Ekleme

[insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) yöntemini kullanarak bir belgeye belirtilen tür ve boyutta satır içi şekil ve belirtilen konum, boyut ve metin sarma türüyle serbest kayan şekil ekleyebilirsiniz. [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) yöntemi, belge modeline DML şeklinin eklenmesine olanak sağlar. Belgenin DML şekillerini destekleyen formatta kaydedilmesi gerekir, aksi takdirde bu tür düğümler belge kaydedilirken VML şekline dönüştürülür.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## En Boy Oranını Kilitli Olarak Ayarla

Aspose.Words'i kullanarak şeklin en boy oranının [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) özelliği aracılığıyla kilitlenip kilitlenmeyeceğini belirtebilirsiniz.

Aşağıdaki kod örneği, **AspectRatioLocked** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Hücredeki Şekil Düzenini Ayarla

[is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) özelliğini kullanarak şeklin tablonun içinde mi yoksa dışında mı görüntüleneceğini de belirleyebilirsiniz.

Aşağıdaki kod örneği, **IsLayoutInCell** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Alıntı Köşesi Dikdörtgeni Oluştur

Aspose.Words'i kullanarak bir kesme köşesi dikdörtgeni oluşturabilirsiniz. Şekil türleri [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) ve [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded)'dir.

Bu şekil türleri ile [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) yöntemi kullanılarak DML şekli oluşturulur. Bu türler VML şekilleri oluşturmak için kullanılamaz. [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sınıfının genel yapıcısını kullanarak şekil oluşturma girişimi "NotSupportedException" istisnasına neden olur.

Aşağıdaki kod örneği, bu tür şekillerin belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Gerçek Şekil Sınır Noktalarını Alın

Aspose.Words API'yi kullanarak, en üstteki şeklin bağlantısına göre, blok içeren şeklin konumunu ve boyutunu noktalar halinde alabilirsiniz. Bunu yapmak için [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) özelliğini kullanın.

Aşağıdaki kod örneği, **BoundsInPoints** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Dikey Bağlantıyı Belirtin

[vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) özelliğini kullanarak bir şeklin içindeki metnin dikey hizalamasını belirleyebilirsiniz.

Aşağıdaki kod örneği, **VerticalAnchor** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## SmartArt Şeklini Algıla

Aspose.Words ayrıca Shape'in bir `SmartArt` nesnesine sahip olup olmadığını tespit etmeye de olanak tanır. Bunu yapmak için [has_smart_art özelliği](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) özelliğini kullanın.

Aşağıdaki kod örneği, **HasSmartArt** özelliğiyle nasıl çalışılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Belgeye Yatay Cetvel Ekle

[insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) yöntemini kullanarak bir belgeye yatay kural şekli ekleyebilirsiniz.

Aşağıdaki kod örneği bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API, yatay kural şeklinin özelliklerine erişim için [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) özelliğini sağlar. [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) sınıfı, yatay bir kuralın formatlanması için [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) vb. gibi temel özellikleri ortaya çıkarır.

Aşağıdaki kod örneği [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/)'in nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## OLE Nesnesini Simge Olarak Ekle

Aspose.Words API, gömülü veya bağlantılı bir OLE nesnesini belgeye simge olarak eklemek için **Shape.insert_ole_object_as_icon** işlevi sağlar. Bu işlev, simge dosyasının ve başlığın belirlenmesine olanak sağlar. `OLE` nesne türü, dosya uzantısı kullanılarak algılanacaktır.

Aşağıdaki kod örneği, OLE nesnesini belgeye Simge olarak eklemenin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Doğru görüntü için simgenin maksimum boyutu 32x32 olmalıdır.

{{% /alert %}}

## Matematik XML'li Şekilleri Şekiller olarak DOM'e aktarın

EquationXML içeren şekilleri Office Math nesnelerine dönüştürmek için [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) özelliğini kullanabilirsiniz. Bu özelliğin varsayılan değeri MS Word davranışına karşılık gelir; yani denklem XML'sine sahip şekiller Office matematik nesnelerine dönüştürülmez.

Aşağıdaki kod örneği, şekillerin Office Math nesnelerine nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
