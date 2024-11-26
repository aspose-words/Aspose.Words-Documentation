---
title: C++ içindeki Alanlara Özel Biçimlendirme Uygulama
second_title: Aspose.Words için C++
articleTitle: Alanlara Özel Biçimlendirme Uygulama
linktitle: Alanlara Özel Biçimlendirme Uygulama
description: "Alanların sonucunu C++ kullanarak biçimlendirin ve değerlendirin."
type: docs
weight: 40
url: /tr/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Bazen kullanıcıların alanlara özel biçimlendirme uygulaması gerekir. Bu yazıda, bunun nasıl yapılabileceğine dair birkaç örneğe bakacağız.

Daha fazla seçenek öğrenmek için [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields) içindeki ilgili sınıftaki her alan türü için özelliklerin tam listesine bakın.

## Alan Sonucuna Özel Biçimlendirme Nasıl Uygulanır

Aspose.Words, alanın sonucunun özel biçimlendirilmesi için API sağlar. Alan sonucunun nasıl biçimlendirileceğini denetlemek için [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) arabirimini uygulayabilirsiniz. Sayısal biçim anahtarını uygulayabilirsiniz, yani \# "#.##", tarih / saat biçimi anahtarı, yani \@ "dd.MM.yyyy" ve sayı biçimi anahtarı, yani \* Sıralı.

Aşağıdaki kod örneği, alan sonucu için özel biçimlendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## `IF` koşulu nasıl değerlendirilir

Mail merge'den sonra `IF` koşulunu değerlendirmek istiyorsanız, ifade değerlendirmesinin sonucunu hemen döndüren [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, bu yöntemin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Zaman Alanına Özel Biçimlendirme Nasıl Uygulanır

Varsayılan olarak Aspose.Words, `TIME` alanını geçerli kültür kısa zaman biçimiyle günceller. `TIME` alanını ihtiyacınıza göre biçimlendirmek istiyorsanız, bunu [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider) arayüzünü uygulayarak başarabilirsiniz.

Aşağıdaki kod örnekleri, `TIME` alanına özel biçimlendirmenin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
