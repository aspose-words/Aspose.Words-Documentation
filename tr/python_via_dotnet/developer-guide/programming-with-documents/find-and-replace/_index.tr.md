---
title: Python'te Bul ve Değiştir
second_title: Python via .NET için Aspose.Words
articleTitle: Bul ve Değiştir
linktitle: Bul ve Değiştir
type: docs
description: "Belgenizde bir dize veya normal ifade modeli bulun ve Python'i kullanarak bunu istediğiniz metinle değiştirin."
weight: 100
url: /tr/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Klavye ve fareyi kullanarak belgenizde kolayca gezinebilirsiniz, ancak kaydırılacak çok sayıda sayfanız varsa, uzun bir belgede belirli bir metni bulmak oldukça zaman alacaktır. Belgenizde kullandığınız belirli karakterleri veya kelimeleri değiştirmek istediğinizde daha fazla zaman harcayacaksınız. "Bul ve değiştir" işlevi, bir belgedeki bir karakter dizisini bulmanızı ve bunu başka bir karakter dizisiyle değiştirmenizi sağlar.

Aspose.Words, belgenizde belirli bir dize veya düzenli ifade kalıbı bulmanızı ve Microsoft Word gibi ek uygulamaları yüklemeden ve kullanmadan onu bir alternatifle değiştirmenizi sağlar. Bu, birçok yazma ve biçimlendirme görevini hızlandıracak ve potansiyel olarak saatlerce çalışmanızdan tasarruf etmenizi sağlayacaktır.

Bu makalede, meta karakterlerin desteğiyle dize değişiminin ve normal ifadelerin nasıl uygulanacağı açıklanmaktadır.

## {#ways-to-find-and-replace}'i Bulmanın ve Değiştirmenin Yolları

Aspose.Words, aşağıdakileri kullanarak bul ve değiştir işlemini uygulamak için iki yol sağlar:

1. *Basit dize değiştirme* – belirli bir dizeyi bulmak ve başka bir dizeyle değiştirmek için, tüm oluşumlara göre başka bir belirtilen değiştirme dizesiyle değiştirilecek bir arama dizesi (alfasayısal karakterler) belirtmeniz gerekir. Her iki dize de sembol içermemelidir. Dize karşılaştırmasının büyük/küçük harfe duyarlı olabileceğini veya yazımdan emin olamayabileceğinizi veya birkaç benzer yazımınız olabileceğini göz önünde bulundurun.
2. *Normal ifadeler* – tam dize eşleşmelerini bulmak ve bunları normal ifadenize göre değiştirmek amacıyla bir normal ifade belirtmek için. Bir kelimenin yalnızca alfanümerik karakterlerden oluştuğu şeklinde tanımlandığını unutmayın. Değiştirme yalnızca tam sözcükler eşleştirilerek yürütülürse ve giriş dizesi simgeler içeriyorsa, hiçbir sözcük öbeği bulunamaz.

Ayrıca, bulma ve değiştirme işlemindeki kesintileri belirtmek için basit dize değiştirme ve normal ifadelere sahip özel meta karakterler kullanabilirsiniz.

Aspose.Words, bul ve değiştir işlevini [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/) modülüyle sunar. [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) sınıfını kullanarak bulma ve değiştirme işlemi sırasında birçok seçenekle çalışabilirsiniz.

### Basit Dize Değiştirme {#find-and-replace-text-using-simple-string-replacement}'i Kullanarak Metni Bulma ve Değiştirme

Belirli bir dizeyi bulmak veya değiştirmek ve yapılan değişiklik sayısını döndürmek için [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) ve [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) yöntemlerinden birini kullanabilirsiniz. Bu durumda, değiştirilecek bir dizeyi, tüm oluşumlarının yerini alacak bir dizeyi, değiştirmenin büyük/küçük harfe duyarlı olup olmayacağını ve yalnızca bağımsız sözcüklerin etkilenip etkilenmeyeceğini belirtebilirsiniz.

Aşağıdaki kod örneği, "_CustomerName_" dizesinin nasıl bulunacağını ve onu *"James Bond"* dizesiyle nasıl değiştireceğinizi gösterir

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Basit dize değişimini uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="basit-dize-değiştirmeden önce" style="width:600px"/>

Ve basit dize değişimini uyguladıktan sonra:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="basit dize değişiminden sonra" style="width:600px"/>

### Normal İfadeler {#find-and-replace-text-using-regular-expressions} Kullanarak Metni Bulma ve Değiştirme

Düzenli ifade, belirli bir metin dizisini tanımlayan bir kalıptır. Bir kelimenin tüm çift geçişlerini tek bir sözcük geçişiyle değiştirmek istediğinizi varsayalım. Daha sonra çift sözcük modelini belirtmek için şu normal ifadeyi uygulayabilirsiniz: `([a-zA-Z]+) \1`.

Eşleşmeleri bulma modeli olarak normal ifade parametresini ayarlayarak belirli karakter birleşimlerini aramak ve değiştirmek için [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) yöntemini kullanın.

Aşağıdaki kod örneği, normal ifade düzeniyle eşleşen dizelerin belirtilen değiştirme dizesiyle nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Düzenli ifadelerle dize değişimini uygulamadan önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="normal-ifadelerle-değiştirilmeden önce" style="width:600px"/>

Ve normal ifadelerle dize değişimini uyguladıktan sonra:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="normal-ifadelerle-değiştirme sonrasında" style="width:600px"/>

### Metacharacters {#find-and-replace-text-using-metacharacters}'i kullanarak Dizeyi Bulun ve Değiştirin

Belirli bir metin veya tümcecik birden fazla paragraf, bölüm veya sayfadan oluşuyorsa, arama dizesinde veya değiştirme dizesinde meta karakterleri kullanabilirsiniz. Meta karakterlerden bazıları paragraf sonu için **&amp;P**'i, bölüm sonu için **&amp;B**'yi, sayfa sonu için **&amp;M**'i ve satır sonu için **&amp; ben**'i içerir.

{{% alert color="primary" %}}

**&&** meta karakterinin **&**'ye eşit olduğunu unutmayın. Örneğin, **&amp;P** için paragraf sonu olmayan bir metin bulmanız gerekiyorsa **&amp;&amp;P**'i kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, metnin paragraf ve sayfa sonuyla nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Bir Belge {#find-and-replace-string-in-header-or-footer-of-a-document}'in Üstbilgi/Altbilgisindeki Dizeyi Bulma ve Değiştirme

[HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) sınıfını kullanarak bir Word belgesinin üstbilgi/altbilgi bölümündeki metni bulabilir ve değiştirebilirsiniz.

Aşağıdaki kod örneği, belgenizdeki başlık bölümünün metninin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Başlık dizesini değiştirmeden önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="uygulamadan önce-başlık-dizi-değiştirme" style="width:600px"/>

Ve başlık dizesi değişimini uyguladıktan sonra:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="uygulandıktan sonra-başlık-dizesi-değiştirilmesi" style="width:600px"/>

Belgenizdeki alt bilgi bölümünün metnini değiştirmeye yönelik kod örneği, önceki başlık kodu örneğine çok benzer. Tek yapmanız gereken aşağıdaki iki satırı değiştirmek:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Takip ederek:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Altbilgi dizesini değiştirmeden önce belge arasındaki farkı fark edebilirsiniz:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="uygulamadan önce altbilgi-dizesini-değiştirmeden" style="width:600px"/>

Altbilgi dizesinin değiştirilmesini uyguladıktan sonra:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="uygulamadan sonra altbilgi dizesini değiştirme" style="width:600px"/>

## {#ignore-text-during-find-and-replace} Bul ve Değiştir Sırasında Metni Yoksay

Bul ve değiştir işlemini uygularken metnin belirli bölümlerini göz ardı edebilirsiniz. Böylece metnin belirli bölümleri aramanın dışında tutulabilir ve bul ve değiştir yalnızca geri kalan bölümlere uygulanabilir.

Aspose.Words, [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) ve [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/) gibi metni yok saymak için birçok bul ve değiştir özelliği sağlar.

Aşağıdaki kod örneği, silme düzeltmelerinin içindeki metnin nasıl yoksayılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## {#customize-find-and-replace-operation} Bul ve Değiştir İşlemini Özelleştirme

Aspose.Words, metni bulmak ve değiştirmek için [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) ve [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/) özellikleriyle belirli bir format uygulamak, değiştirme modellerinde [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) özelliğiyle ikameleri kullanmak ve diğerleri gibi birçok farklı özellik sağlar.

Aşağıdaki kod örneği, belgenizdeki belirli bir sözcüğün nasıl vurgulanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
