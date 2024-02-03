---
title: Alanları Değiştir Python
second_title: Python via .NET için Aspose.Words
articleTitle: Alanları Statik Metinle Değiştir
linktitle: Alanları Statik Metinle Değiştir
description: "Python'te alanları metinle nasıl değiştireceğinizi öğrenin. Python via .NET API'i kullanarak alanları statik verilerle değiştirin."
type: docs
weight: 37
url: /tr/python-net/replace-fields/
---

Belgenizi statik bir kopya olarak kaydetmek istediğinizde genellikle alanların değiştirilmesi gerekir. Örneğin, bir e-postaya ek olarak gönderirken. `DATE` veya `TIME` gibi alanların statik metne dönüştürülmesi, belgenin gönderildiği tarihle aynı tarihi görüntülemesine olanak tanır. Ayrıca bazı durumlarda koşullu `IF` alanlarını belgenizden kaldırmanız ve bunların yerine en yeni metin sonucuyla değiştirmeniz gerekebilir. Örneğin, `IF` alanının sonucunu statik metne dönüştürmek, böylece belgedeki alanlar güncellendiğinde değerinin artık dinamik olarak değişmemesini sağlamak.

Aşağıdaki şemada `IF` alanının bir belgede nasıl saklandığı gösterilmektedir:

* metin özel alan düğümleriyle çevrilidir – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) ve [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) düğümü alan içindeki metni alan koduna ve alan sonucuna ayırır
* alan kodu alanın genel davranışını tanımlarken alan sonucu, bu alan Microsoft Word veya Aspose.Words kullanılarak güncellendiğinde en son sonucu korur
* alan sonucu, alanda saklanan ve görüntülendiğinde belgede görüntülenen sonuçtur

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Yapı aşağıda [demo projesi *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.* kullanılarak hiyerarşik biçimde de görülebilir

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Metinle Değiştirilemeyen Alanlar

Bir alanı statik metinle değiştirmek, üst bilgi veya alt bilgideki bazı alanlar için düzgün çalışmaz.

Örneğin, üstbilgi veya altbilgideki `PAGE` alanını statik metne dönüştürmeye çalışmak, tüm sayfalarda aynı değerin görüntülenmesiyle sonuçlanacaktır. Bunun nedeni, üstbilgilerin ve altbilgilerin birden çok sayfada tekrarlanması ve alan olarak kaldıklarında, her sayfa için doğru sonucu gösterecek şekilde özel olarak ele alınmasıdır.

Ancak başlıkta `PAGE` alanı, statik metin akışına iyi bir şekilde çevrilir. Bu metin akışı, bölümdeki son sayfaymış gibi değerlendirilecek ve bu, başlıktaki herhangi bir `PAGE` alanının tüm sayfalarda son sayfayı görüntülemesine neden olacaktır.

Aşağıdaki kod örneği, alanın en son sonucuyla nasıl değiştirileceğini gösterir:

ÖRNEK

## Belirli Belge Parçalarındaki Belirli Alan Türlerini Dönüştürme

**ConvertFieldsToStaticText** yöntemi iki parametreyi ([CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) özellikleri ve [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) numaralandırması) kabul ettiğinden, bu yönteme herhangi bir bileşik düğümü geçirmek mümkündür. Bu, alanların yalnızca belgenin belirli bölümlerinde statik metne dönüştürülmesine olanak tanır.

Örneğin, bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesini iletebilir ve belirtilen türdeki alanları belgenin tamamından statik metne dönüştürebilirsiniz veya bir bölümün [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) nesnesini iletebilir ve yalnızca o gövdede bulunan alanları dönüştürebilirsiniz.

{{% alert color="primary" %}}

[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) gibi blok düzeyinde bir düğümü geçerken bazı durumlarda alanların birden fazla paragrafa yayılabileceğini unutmayın. Böyle bir durumda bundan kaçınmak için bileşiğin ebeveyninin iletilmesi önerilir.

{{% /alert %}}

**ConvertFieldsToStaticText** yöntemine iletilen [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) numaralandırması, hangi tür alanların statik metne dönüştürülmesi gerektiğini belirtir. Belgede bulunan diğer alan türleri değişmeden kalacaktır.

Aşağıdaki kod örneği, belirli bir türdeki (belirli bir düğümdeki *targetFieldType*) alanların nasıl seçileceğini ve ardından bunların statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Aşağıdaki kod örneği, bir belgedeki tüm `IF` alanlarının statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin Gövdesindeki tüm `PAGE` alanlarının statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Aşağıdaki kod örneği, son paragraftaki tüm `IF` alanlarının statik metne nasıl dönüştürüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}