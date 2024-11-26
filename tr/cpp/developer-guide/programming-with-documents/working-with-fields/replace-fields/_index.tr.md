---
title: C++ Alanlarını Değiştir
second_title: Aspose.Words için C++
articleTitle: Alanları Statik Metinle Değiştirin
linktitle: Alanları Statik Metinle Değiştirin
description: "C++ içindeki alanları metinle nasıl değiştireceğinizi öğrenin. C++ API kullanarak alanları statik verilerle değiştirin."
type: docs
weight: 37
url: /tr/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Belgenizi statik kopya olarak kaydetmek istediğinizde alanların değiştirilmesi genellikle gereklidir. Örneğin, bir e-postada ek olarak gönderirken. `DATE` veya `TIME` gibi alanları statik metne dönüştürmek, belgenin gönderildiği tarihle aynı tarihi görüntülemesini sağlar. Ayrıca, bazı durumlarda, koşullu `IF` alanlarını belgenizden kaldırmanız ve bunun yerine bunları en son metin sonucuyla değiştirmeniz gerekebilir. Örneğin, `IF` alanının sonucunu statik metne dönüştürmek, böylece belgedeki alanlar güncellendiğinde artık değerini dinamik olarak değiştirmeyecektir.

Aşağıdaki diyagram, `IF` alanının bir belgede nasıl saklandığını göstermektedir:

* metin, özel alan düğümleriyle çevrilidir – [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/) ve [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/) düğümü, alan içindeki metni alan koduna ve alan sonucuna ayırır
* alan kodu, alanın genel davranışını tanımlarken, bu alan Microsoft Word veya Aspose.Words kullanılarak güncellendiğinde alan sonucu en son sonucu korur
* alan sonucu, alanda depolanan ve görüntülendiğinde belgede görüntülenen sonuçtur

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

Yapı, *"DocumentExplorer"* demo projesi kullanılarak hiyerarşik biçimde aşağıda da görülebilir.

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## Metinle Değiştirilemeyen Alanlar

Bir alanı statik metinle değiştirmek, üstbilgi veya altbilgideki bazı alanlar için düzgün çalışmaz.

Örneğin, bir üstbilgi veya altbilgideki `PAGE` alanını statik metne dönüştürmeye çalışmak, tüm sayfalarda aynı değerin görüntülenmesine neden olur. Bunun nedeni, üstbilgilerin ve altbilgilerin birden çok sayfada tekrarlanması ve alan olarak kaldıklarında, özellikle her sayfa için doğru sonucu görüntülemeleri için işlenmeleridir.

Ancak, başlıkta `PAGE` alanı, metnin statik çalışmasına iyi çevrilir. Bu metin çalışması, bölümdeki son sayfaymış gibi değerlendirilecek ve bu, başlıktaki herhangi bir `PAGE` alanının son sayfayı tüm sayfalarda görüntülemesine neden olacaktır.

Aşağıdaki kod örneği, alanın en son sonucuyla nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## Belirli Alan Türlerini Belirli Belge Bölümlerine Dönüştürme

**ConvertFieldsToStaticText** yöntemi iki parametreyi kabul ettiğinden – [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) özellikler ve [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) numaralandırma, herhangi bir bileşik düğümü bu yönteme geçirmek mümkündür. Bu, alanların yalnızca belgenin belirli bölümlerinde statik metne dönüştürülmesine olanak tanır.

Örneğin, bir [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) nesnesini geçirebilir ve belirtilen türdeki alanları belgenin tamamından statik metne dönüştürebilir veya bir bölümün [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) nesnesini geçirebilir ve yalnızca o gövdede bulunan alanları dönüştürebilirsiniz.

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) gibi blok düzeyinde bir düğümü geçirirken, bazı durumlarda alanların birden çok paragrafa yayılabileceğini unutmayın. Bu olursa, bunu önlemek için bileşiğin üst öğesinin geçmesi önerilir.

{{% /alert %}}

**ConvertFieldsToStaticText** yöntemine iletilen [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/) numaralandırma, ne tür alanların statik metne dönüştürülmesi gerektiğini belirtir. Belgede bulunan diğer alan türleri değişmeden kalır.

Aşağıdaki kod örneği, belirli bir düğümdeki – *targetFieldType* belirli bir türdeki alanların nasıl seçileceğini gösterir - *compositeNode* ve ardından bunları statik metne dönüştürün:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

Aşağıdaki kod örneği, bir belgedeki tüm `IF` alanların statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Aşağıdaki kod örneği, bir belgenin Gövdesindeki tüm `PAGE` alanların statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

Aşağıdaki kod örneği, son paragraftaki tüm `IF` alanların statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
