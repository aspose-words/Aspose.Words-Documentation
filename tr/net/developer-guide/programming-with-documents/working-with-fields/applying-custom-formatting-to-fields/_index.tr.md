---
title: C#'teki Alanlara Özel Biçimlendirme Uygula
second_title: .NET için Aspose.Words
articleTitle: Alanlara Özel Biçimlendirme Uygula
linktitle: Alanlara Özel Biçimlendirme Uygula
description: "Alan sonuçlarını C# kullanarak biçimlendirin ve değerlendirin."
type: docs
weight: 40
url: /tr/net/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Bazen kullanıcıların alanlara özel biçimlendirme uygulaması gerekir. Bu yazıda bunun nasıl yapılabileceğine dair birkaç örneğe bakacağız.

Daha fazla seçenek öğrenmek için [Fields ad alanı](https://reference.aspose.com/words/tr/net/aspose.words.fields/)'teki ilgili sınıftaki her alan türüne ilişkin özelliklerin tam listesine bakın.

## Alan Sonucuna Özel Biçimlendirme Nasıl Uygulanır?

Aspose.Words, alan sonucunun özel biçimlendirilmesi için API sağlar. Alan sonucunun nasıl biçimlendirileceğini kontrol etmek için [IFieldResultFormatter](https://reference.aspose.com/words/tr/net/aspose.words.fields/ifieldresultformatter/) arayüzünü uygulayabilirsiniz. \# "#.##" gibi sayısal biçim geçişini, \@ "dd.MM.yyyy" gibi tarih/saat biçimi geçişini ve \* Ordinal gibi sayı biçimi geçişini uygulayabilirsiniz.

Aşağıdaki kod örneği, alan sonucu için özel biçimlendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## `IF` durumu nasıl değerlendirilir?

mail merge'den sonra `IF` durumunu değerlendirmek istiyorsanız ifade değerlendirmesinin sonucunu anında döndüren [EvaluateCondition](https://reference.aspose.com/words/tr/net/aspose.words.fields/fieldif/evaluatecondition/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği bu yöntemin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Zaman Alanına Özel Biçimlendirme Nasıl Uygulanır?

Aspose.Words, varsayılan olarak `TIME` alanını mevcut kültür kısa zaman formatıyla günceller. Microsoft Word biçimlendirmesi ile .NET/Windows biçimlendirmesi arasında ve ayrıca farklı .NET Framework sürümleri arasında bir fark olduğunu anladık. `TIME` alanını ihtiyacınıza göre biçimlendirmek istiyorsanız bunu [IFieldUpdateCultureProvider](https://reference.aspose.com/words/tr/net/aspose.words.fields/ifieldupdatecultureprovider/) arayüzünü uygulayarak sağlayabilirsiniz.

Aşağıdaki kod örnekleri, özel biçimlendirmenin `TIME` alanına nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
