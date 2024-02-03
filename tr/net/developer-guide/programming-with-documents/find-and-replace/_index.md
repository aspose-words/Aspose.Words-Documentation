---
title: C#'te Bul ve Değiştir
second_title: .NET için Aspose.Words
articleTitle: Bul ve Değiştir
linktitle: Bul ve Değiştir
type: docs
description: "Belgenizde bir dize veya normal ifade modeli bulun ve C#'i kullanarak bunu istediğiniz metinle değiştirin."
weight: 100
url: /tr/net/find-and-replace/
---

Klavye ve fareyi kullanarak belgenizde kolayca gezinebilirsiniz, ancak kaydırılacak çok sayıda sayfanız varsa, uzun bir belgede belirli bir metni bulmak oldukça zaman alacaktır. Belgenizde kullandığınız belirli karakterleri veya kelimeleri değiştirmek istediğinizde daha fazla zaman harcayacaksınız. "Bul ve değiştir" işlevi, bir belgedeki bir karakter dizisini bulmanızı ve bunu başka bir karakter dizisiyle değiştirmenizi sağlar.

Aspose.Words, belgenizde belirli bir dize veya düzenli ifade kalıbı bulmanızı ve Microsoft Word gibi ek uygulamaları yüklemeden ve kullanmadan onu bir alternatifle değiştirmenizi sağlar. Bu, birçok yazma ve biçimlendirme görevini hızlandıracak ve potansiyel olarak saatlerce çalışmanızdan tasarruf etmenizi sağlayacaktır.

Bu makalede, meta karakterlerin desteğiyle dize değişiminin ve normal ifadelerin nasıl uygulanacağı açıklanmaktadır.

## {#ways-to-find-and-replace}'i Bulmanın ve Değiştirmenin Yolları

Aspose.Words, aşağıdakileri kullanarak bul ve değiştir işlemini uygulamak için iki yol sağlar:

1. *Basit dize değiştirme* – belirli bir dizeyi bulmak ve başka bir dizeyle değiştirmek için, tüm oluşumlara göre başka bir belirtilen değiştirme dizesiyle değiştirilecek bir arama dizesi (alfasayısal karakterler) belirtmeniz gerekir. Her iki dize de sembol içermemelidir. Dize karşılaştırmasının büyük/küçük harfe duyarlı olabileceğini veya yazımdan emin olamayabileceğinizi ya da birkaç benzer yazımınız olabileceğini göz önünde bulundurun.
2. *Normal ifadeler* – tam dize eşleşmelerini bulmak ve bunları normal ifadenize göre değiştirmek amacıyla bir normal ifade belirtmek için. Bir kelimenin yalnızca alfasayısal karakterlerden oluştuğu şeklinde tanımlandığını unutmayın. Değiştirme yalnızca tam sözcükler eşleştirilerek yürütülürse ve giriş dizesi simgeler içeriyorsa, hiçbir sözcük öbeği bulunamaz.

Ayrıca, bulma ve değiştirme işlemindeki kesintileri belirtmek için basit dize değiştirme ve normal ifadelere sahip özel meta karakterler kullanabilirsiniz.

Aspose.Words, bulma ve değiştirme işlevini [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/) ad alanıyla sunar. [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) sınıfını kullanarak bulma ve değiştirme işlemi sırasında birçok seçenekle çalışabilirsiniz.

### Basit Dize Değiştirme {#find-and-replace-text-using-simple-string-replacement}'i Kullanarak Metni Bulma ve Değiştirme

Belirli bir dizeyi bulmak veya değiştirmek ve yapılan değişiklik sayısını döndürmek için [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) yöntemlerinden birini kullanabilirsiniz. Bu durumda, değiştirilecek bir dizeyi, tüm oluşumlarının yerini alacak bir dizeyi, değiştirmenin büyük/küçük harfe duyarlı olup olmayacağını ve yalnızca bağımsız sözcüklerin etkilenip etkilenmeyeceğini belirtebilirsiniz.

Aşağıdaki kod örneği, "_CustomerName_" dizesinin nasıl bulunacağını ve onu *"James Bond"* dizesiyle nasıl değiştireceğinizi gösterir

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Basit dize değişimini uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="basit-dize-değiştirmeden önce" style="width:600px"/>

Ve basit dize değişimini uyguladıktan sonra:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="basit dize değişiminden sonra" style="width:600px"/>

### Normal İfadeler {#find-and-replace-text-using-regular-expressions} Kullanarak Metni Bulma ve Değiştirme

Düzenli ifade (regex), belirli bir metin dizisini tanımlayan bir kalıptır. Bir kelimenin tüm çift geçişlerini tek bir sözcük geçişiyle değiştirmek istediğinizi varsayalım. Daha sonra çift sözcük modelini belirtmek için şu normal ifadeyi uygulayabilirsiniz: `([a-zA-Z]+) \1`.

Eşleşmeleri bulmak için `Regex` parametresini normal ifade modeli olarak ayarlayarak belirli karakter birleşimlerini aramak ve değiştirmek için diğer [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) yöntemini kullanın.

Aşağıdaki kod örneği, normal ifade düzeniyle eşleşen dizelerin belirtilen değiştirme dizesiyle nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Düzenli ifadelerle dize değişimini uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="normal-ifadelerle-değiştirilmeden önce" style="width:600px"/>

Ve normal ifadelerle dize değişimini uyguladıktan sonra:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="normal-ifadelerle-değiştirme sonrasında" style="width:600px"/>

### Meta Karakterler {#find-and-replace-text-using-metacharacters}'i Kullanarak Dizeyi Bulma ve Değiştirme

Belirli bir metin veya tümcecik birden fazla paragraf, bölüm veya sayfadan oluşuyorsa, arama dizesinde veya değiştirme dizesinde meta karakterler kullanabilirsiniz. Meta karakterlerden bazıları paragraf sonu için **&amp;P**'i, bölüm sonu için **&amp;B**'yi, sayfa sonu için **&amp;M**'i ve satır sonu için **&amp; ben**'i içerir.

{{% alert color="primary" %}}

**&&** meta karakterinin **&**'ye eşit olduğunu unutmayın. Örneğin, **&amp;P** için paragraf sonu olmayan bir metin bulmanız gerekiyorsa **&amp;&amp;P**'i kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, metnin paragraf ve sayfa sonuyla nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Bir Belge {#find-and-replace-string-in-header-or-footer-of-a-document}'in Üstbilgi/Altbilgisindeki Dizeyi Bulma ve Değiştirme

[HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) sınıfını kullanarak bir Word belgesinin üstbilgi/altbilgi bölümündeki metni bulabilir ve değiştirebilirsiniz.

Aşağıdaki kod örneği, belgenizdeki başlık bölümünün metninin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Başlık dizesini değiştirmeden önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="uygulamadan önce-başlık-dizi-değiştirme" style="width:600px"/>

Ve başlık dizesi değişimini uyguladıktan sonra:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="uygulandıktan sonra-başlık-dizesi-değiştirilmesi" style="width:600px"/>

Belgenizdeki alt bilgi bölümünün metnini değiştirmeye yönelik kod örneği, önceki başlık kodu örneğine çok benzer. Tek yapmanız gereken aşağıdaki iki satırı değiştirmek:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Takip ederek:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Altbilgi dizesini değiştirmeden önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="uygulamadan önce altbilgi-dizesini-değiştirmeden" style="width:600px"/>

Altbilgi dizesinin değiştirilmesini uyguladıktan sonra:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="uygulamadan sonra-altbilgi-dize-değiştirme" style="width:600px"/>

## {#ignore-text-during-find-and-replace} Bul ve Değiştir Sırasında Metni Yoksay

Bul ve değiştir işlemini uygularken metnin belirli bölümlerini göz ardı edebilirsiniz. Böylece metnin belirli bölümleri aramanın dışında tutulabilir ve bul ve değiştir işlemi yalnızca geri kalan bölümlere uygulanabilir.

Aspose.Words, metni yok saymak için [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) ve [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/) gibi birçok bul ve değiştir özelliği sağlar.

Aşağıdaki kod örneği, silme düzeltmelerinin içindeki metnin nasıl yoksayılacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## {#customize-find-and-replace-operation} Bul ve Değiştir İşlemini Özelleştirme

Aspose.Words, metni bulmak ve değiştirmek için [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) ve [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) özellikleriyle belirli formatı uygulamak, [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) özelliğiyle değiştirme modellerinde ikameleri kullanmak ve diğerleri gibi birçok farklı [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) sağlar.

Aşağıdaki kod örneği, belgenizdeki belirli bir sözcüğün nasıl vurgulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words, değiştirme işlemi sırasında özel bir yöntem oluşturmak ve çağırmak için [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) arayüzünü kullanmanıza olanak tanır. Normal ifadeyle belirtilen metni HTML etiketleriyle değiştirmek gibi bulma ve değiştirme işlemini özelleştirmeniz gereken bazı kullanım durumlarınız olabilir, bu nedenle temel olarak değiştirmeyi HTML ekleyerek uygulayacaksınız.

Bir dizeyi bir HTML etiketiyle değiştirmeniz gerekiyorsa, bulma ve değiştirme işlemini özelleştirmek için **IReplacingCallback** arayüzünü uygulayın; böylece eşleşme, belgenizin eşleşme düğümüyle bir çalıştırmanın başlangıcında başlar. **IReplacingCallback** kullanımına ilişkin birkaç örnek verelim.

Aşağıdaki kod örneği, HTML ile belirtilen metnin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Aşağıdaki kod örneği, pozitif sayıların yeşil renkle ve negatif sayıların kırmızı renkle nasıl vurgulanacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Aşağıdaki kod örneği, her satırın başına satır numarasının nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
