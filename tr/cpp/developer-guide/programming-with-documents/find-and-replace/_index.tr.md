---
title: C++ içinde Bul ve Değiştir
second_title: Aspose.Words için C++
articleTitle: Bul ve Değiştir
linktitle: Bul ve Değiştir
type: docs
description: "Belgenizde bir dize veya normal ifade deseni bulun ve onu C++ kullanarak istediğiniz metinle değiştirin."
weight: 100
url: /tr/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Bir klavye ve fare kullanarak belgenizde kolayca gezinebilirsiniz, ancak kaydırmanız gereken çok sayfanız varsa, uzun bir belgede belirli bir metni bulmak oldukça zaman alacaktır. Belgenizde kullandığınız belirli karakterleri veya sözcükleri değiştirmek istediğinizde daha fazla zaman alacaktır. "Bul ve değiştir" işlevi, bir belgede bir karakter dizisi bulmanızı ve onu başka bir karakter dizisiyle değiştirmenizi sağlar.

Aspose.Words, belgenizde belirli bir dize veya normal ifade deseni bulmanızı ve Microsoft Word gibi ek uygulamalar yüklemeden ve kullanmadan onu bir alternatifle değiştirmenizi sağlar. Bu, birçok yazma ve biçimlendirme görevini hızlandıracak ve potansiyel olarak size çalışma saatleri kazandıracaktır.

Bu makalede, metakarakterlerin desteğiyle dize değiştirme ve normal ifadelerin nasıl uygulanacağı açıklanmaktadır.

## {#ways-to-find-and-replace} Bulma ve Değiştirme Yolları

Aspose.Words aşağıdakileri kullanarak bul ve değiştir işlemini uygulamak için iki yol sağlar:

1. *Simple string replacement* - belirli bir dizeyi başka bir dizeyle bulup değiştirmek için, belirtilen başka bir değiştirme dizesiyle tüm oluşumlara göre değiştirilecek bir arama dizesi (alfasayısal karakterler) belirtmeniz gerekir. Her iki dize de sembol içermemelidir. Dize karşılaştırmasının büyük/ küçük harfe duyarlı olabileceğini veya yazımdan emin olamayacağınızı veya birkaç benzer yazımın olduğunu göz önünde bulundurun.
2. *Regular expressions* - tam dize eşleşmelerini bulmak için bir normal ifade belirtmek ve bunları normal ifadenize göre değiştirmek için. Bir kelimenin yalnızca alfasayısal karakterlerden oluştuğu şeklinde tanımlandığını unutmayın. Yalnızca tüm sözcükler eşleştirilerek bir değiştirme gerçekleştirilirse ve giriş dizesi semboller içeriyorsa, hiçbir sözcük öbeği bulunmaz.

Ayrıca, bul ve değiştir işlemindeki sonları belirtmek için basit dize değiştirme ve normal ifadelere sahip özel meta karakterler kullanabilirsiniz.

Aspose.Words bul ve değiştir işlevini [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing) ad alanıyla sunar. [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/) sınıfını kullanarak bul ve değiştir işlemi sırasında birçok seçenekle çalışabilirsiniz.

### Basit Dize Değiştirme {#find-and-replace-text-using-simple-string-replacement} Kullanarak Metni Bulun ve Değiştirin

Belirli bir dizeyi bulmak veya değiştirmek ve yapılan değiştirme sayısını döndürmek için [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) yöntemlerinden birini kullanabilirsiniz. Bu durumda, değiştirilecek bir dize, tüm oluşumlarının yerini alacak bir dize, değiştirmenin büyük / küçük harfe duyarlı olup olmadığını ve yalnızca tek başına sözcüklerin etkilenip etkilenmeyeceğini belirtebilirsiniz.

Aşağıdaki kod örneği, "_CustomerName_" dizesini nasıl bulacağınızı ve *"James Bond"* dizesiyle nasıl değiştireceğinizi gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Basit dize değiştirmeyi uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

Ve basit dize değiştirme uyguladıktan sonra:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Normal İfadeleri Kullanarak Metni Bulun ve Değiştirin {#find-and-replace-text-using-regular-expressions}

Normal ifade (normal ifade), belirli bir metin dizisini tanımlayan bir kalıptır. Bir sözcüğün tüm çift oluşumlarını tek bir sözcük oluşumuyla değiştirmek istediğinizi varsayalım. Ardından, çift kelime desenini belirtmek için aşağıdaki normal ifadeyi uygulayabilirsiniz: `([a-zA-Z]+) \1`.

Eşleşmeleri bulmak için `Regex` parametresini normal ifade deseni olarak ayarlayarak belirli karakter kombinasyonlarını aramak ve değiştirmek için diğer [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) yöntemini kullanın.

Aşağıdaki kod örneği, normal ifade deseniyle eşleşen dizelerin belirtilen bir değiştirme dizesiyle nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Normal ifadelerle dize değiştirme uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

Ve normal ifadelerle dize değiştirme uyguladıktan sonra:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### {#find-and-replace-text-using-metacharacters} Meta Karakterlerini Kullanarak Dizeyi Bulun ve Değiştirin

Belirli bir metin veya tümcecik birden çok paragraf, bölüm veya sayfadan oluşuyorsa, arama dizesindeki meta karakterleri veya değiştirme dizesini kullanabilirsiniz. Meta karakterlerden bazıları paragraf sonu için **&p**, bölüm sonu için **&b**, sayfa sonu için **&m** ve satır sonu için **&l** içerir.

{{% alert color="primary" %}}

Meta karakterinin **&&**, **&** değerine eşit olduğunu unutmayın. Örneğin, paragraf sonu olmayan **&p** için metin bulmanız gerekiyorsa, **&&p** kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, metnin paragraf ve sayfa sonu ile nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Bir Belgenin Üstbilgisinde / Altbilgisinde Dizeyi Bulun ve Değiştirin {#find-and-replace-string-in-header-or-footer-of-a-document}

[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) sınıfını kullanarak bir Word belgesinin üstbilgi/altbilgi bölümündeki metni bulabilir ve değiştirebilirsiniz.

Aşağıdaki kod örneği, belgenizdeki üstbilgi bölümünün metninin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Üstbilgi dizesi değiştirmeyi uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Ve başlık dizesi değiştirme uygulandıktan sonra:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Belgenizdeki altbilgi bölümünün metnini değiştirmek için kullanılan kod örneği, önceki üstbilgi kodu örneğine çok benzer. Tek yapmanız gereken aşağıdaki iki satırı değiştirmek:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Aşağıdakilerle:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Altbilgi dizesi değiştirmeyi uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

Ve altbilgi dizesini değiştirdikten sonra:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## {#ignore-text-during-find-and-replace} Bul ve Değiştir Sırasında Metni Yoksay

Bul ve değiştir işlemini uygularken metnin belirli bölümlerini yoksayabilirsiniz. Bu nedenle, metnin belirli bölümleri aramadan çıkarılabilir ve bul ve değiştir yalnızca kalan kısımlara uygulanabilir.

Aspose.Words metni yok saymak için aşağıdaki gibi birçok bul ve değiştir özelliği sağlar [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), ve [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Aşağıdaki kod örneği, düzeltmeleri sil içindeki metnin nasıl yoksayılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Bul ve Değiştir İşlemini Özelleştir {#customize-find-and-replace-operation}

Aspose.Words, metni bulmak ve değiştirmek için [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) ve [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) özellikleriyle belirli bir biçim uygulamak, [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) özelliğine sahip değiştirme kalıplarındaki ikameleri kullanmak ve diğerleri gibi birçok farklı [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) sağlar.

Aşağıdaki kod örneği, belgenizdeki belirli bir sözcüğün nasıl vurgulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words değiştirme işlemi sırasında özel bir yöntem oluşturmak ve çağırmak için [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) arabirimini kullanmanıza izin verir. Normal ifadeyle belirtilen metni HTML etiketleriyle değiştirmek gibi bul ve değiştir işlemini özelleştirmeniz gereken bazı kullanım durumlarınız olabilir, bu nedenle temel olarak HTML ekleyerek değiştir'i uygulayacaksınız.

Bir dizeyi HTML etiketiyle değiştirmeniz gerekirse, bul ve değiştir işlemini özelleştirmek için **IReplacingCallback** arabirimini uygulayın, böylece eşleşme, belgenizin eşleşme düğümüyle çalışmanın başında başlar. **IReplacingCallback** kullanmanın birkaç örneğini verelim.

Aşağıdaki kod örneği, HTML ile belirtilen metnin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Aşağıdaki kod örneği, yeşil renkli pozitif sayıların ve kırmızı renkli negatif sayıların nasıl vurgulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Aşağıdaki kod örneği, her satıra bir satır numarasının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
