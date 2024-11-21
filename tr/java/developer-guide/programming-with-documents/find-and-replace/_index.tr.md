---
title: Bul ve Değiştir Java
second_title: Aspose.Words için Java
articleTitle: Arama ve Değiştir
linktitle: Arama ve Değiştir
type: docs
description: "Bir belge içinde bir dizge veya normal ifade deseni bulun ve bunu istediğiniz metinle Java'i kullanarak değiştirin."
weight: 100
url: /tr/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Bir belgeyi kolayca bir klavye ve fare kullanarak gezinebilirsiniz, ancak birçok sayfayı kaydırmanız gerekiyorsa uzun bir belgedeki belirli metni bulmak oldukça zaman alacaktır. Belirli karakterleri veya bir belgede kullandığınız kelimeleri değiştirmek istediğinizde daha fazla zaman alacaktır. 'Bul ve değiştir' işlevi, bir belge içinde karakter dizisini başka bir karakter dizisiyle değiştirebileceğinizi gösterir.

Bu Aspose.Words sizin belgenizde belirli bir dizeyi veya düzenli ifade desenini bulmanıza ve onu ekstra uygulamalar gibi Microsoft Word yüklemeden ve kullanmadan alternatifle değiştirmenize izin verir. Bu yazma ve biçimlendirme görevlerini hızlandıracak, muhtemelen size saatlerce iş kurtaracak.

Bu makale, meta karakter desteğiyle normal ifadeler kullanarak string değiştirme yöntemini açıklamaktadır.

## Bulmak ve Değiştirmek İçin Yollar {#ways-to-find-and-replace}

Aspose.Words aşağıdaki seçenekleri kullanarak bul ve değiştir işlemini uygulamak için iki yol sağlar:

1. *Basit dize değiştirme* – belirli bir dizeyi başka bir dize ile değiştirmek için arama dizesini (alfanümerik karakterler) belirtmeniz gerekir ki bu, başka bir belirtilen değiştirme dizesiyle tüm oluşumları değiştirerek değiştirilir. Her iki dizede de semboller içermemelidir. Dikkat edin ki dize karşılaştırması büyük/küçük harfe duyarlı olabilir ya da imla konusunda emin olmayabilirsiniz veya birkaç benzer yazımınız olabilir.
2. *Düzenli ifadeler* - tam eşleşmeleri bulmak ve bunları düzenli ifadelerinize göre değiştirmek için bir düzenli ifade belirtin. Bir kelimenin yalnızca alfanümerik karakterler oluşturduğu not alın. Tam eşleşmelerle değiştirilen bir yedekleme gerçekleştirilirse ve giriş dizesi herhangi bir sembol içeriyorsa hiçbir cümle bulunmaz.

Ayrıca, basit dizgi değiştirme ve düzenli ifadeler kullanarak özel metakarakterleri belirtebilirsiniz. "Bul ve Değiştir" işleminde kesintiler oluşturabilirsiniz.

Aspose.Words bulma ve değiştirme işlevselliğini sunar [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Birden çok seçeneği bulma ve değiştirme işlemi sırasında [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) sınıfı kullanarak çalışabilirsiniz.

### Basit Basınım Değiştirme ile Metin Bul ve Değiştir {#find-and-replace-text-using-simple-string-replacement}

Belirli bir dizeyi bulmak veya değiştirmek için [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) yönteminden birini kullanabilirsiniz ve yapılan değişikliklerin sayısını döndürün. Bu durumda, değiştirilecek olan dize, tüm oluşumları değiştirecek olan dize, büyük/küçük harf duyarlılığı ve yalnızca ayrı duran kelimelerin etkilenip etkilenmeyeceği belirtilebilir.

Aşağıdaki kod örneği, "_MüşteriAdı_" dizgisini nasıl bulacağını ve onu "*"James Bond*"" dizgisiyle değiştireceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Basit dize değiştirmeden önce belge arasındaki farkı fark edebilirsiniz:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Basit dizgi değiştirme uyguladıktan sonra:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Düzenli İfadelerle Metin Bul ve Değiştir {#find-and-replace-text-using-regular-expressions}

Bir normal ifade (regex) belirli bir metin dizisini tanımlayan bir kalıptır. Şunu varsayın, bir sözcüğün çift oluşumlarını tek bir oluşumla değiştirmek istiyorsunuz. Bu durumda, çift sözcük kalıbını belirtmek için aşağıdaki normal ifadeyi uygulayabilirsiniz: `([a-zA-Z]+) \1`.

Arama ve belirli karakter kombinasyonlarını değiştirme için diğer [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) yöntemini kullanın ve eşleşmeleri bulmak için normal ifade deseni olarak `Regex` parametresini ayarlayın.

Aşağıdaki kod örneği, bir normal ifade kalıbıyla eşleşen dizeleri belirtilen bir değiştirme dizesiyle nasıl değiştireceğinizi gösterir:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Düzenli ifadelerle string değiştirme uygulamasından önce belgenin farkını fark edebilirsiniz:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Düzenli ifadelerle dize değiştirme uyguladıktan sonra:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Metakarakterler Kullanılarak Bul ve Değiştir String {#find-and-replace-text-using-metacharacters}

Bir paragraf, bölüm veya sayfa içeren belirli bir metin veya ifadeyi aramak için arama dizesinde veya değiştirme dizesinde metakarakterleri kullanabilirsiniz. Bazı metakarakterler arasında bir paragraf kırılması için **&p**, bir bölüm kırılması için **&b**, bir sayfa kırılması için **&m** ve bir satır kırılması için **&l** bulunur.

{{% alert color="primary" %}}

Notun, meta karakteri **&&** **&**'a eşittir. Örneğin, eğer bir paragraf aralığı olmayan **&p** için metin bulmanız gerekiyorsa, o zaman **&&p** kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, paragraf ve sayfa aralığı ile metin değiştirmenin nasıl yapılacağını göstermektedir:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Bir belgedeki Başlık/Altbilgide Bir Dize Bul ve Değiştir {#find-and-replace-string-in-header-or-footer-of-a-document}

Word belgesi üstbilgi/altbilgi bölümündeki metinleri bulup değiştirebilirsiniz [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) sınıfı.

Aşağıdaki kod örneği belgenizin başlık bölümünde yer alan metni nasıl değiştireceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Başlık dizesi değiştirme uygulandıktan sonraki belge arasındaki farkı gözlemleyebilirsiniz:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Ve üstbilgi dizesi değiştirme uyguladıktan sonra:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Koddaki örneği, belgenizin altbilgisi bölümünün metnini değiştirmek için, önceki başlık kodu örneğine çok benziyor. Tek yapmanız gereken iki satırı değiştirmektir:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Aşağıdaki ile beraber:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Başlatmadan önce belge arasındaki farkı görebilirsiniz:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Ve altbilgi dizesi değiştirme uygulandıktan sonra:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Bul ve Değiştir Sırasında Metin İhmal Et {#ignore-text-during-find-and-replace}

Bul ve değiştir işlemini uygularken, metnin belirli bölümlerini göz ardı edebilirsin. Böylece, metnin bazı bölümleri aranmaktan çıkarılabilir ve bul ve değiştir yalnızca kalan parçalara uygulanabilir.

Aspose.Words [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) ve [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)' gibi metni göz ardı etmek için birçok bul ve değiştir özelliği sağlar.

Aşağıdaki kod örneğinde, silme revizyonları içindeki metin nasıl görmezden gelindiğini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Arama ve Değiştirme Operasyonunu Özelleştir {#customize-find-and-replace-operation}

Aspose.Words birçok farklı [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/)'i bulmak ve değiştirmek için sağlar metin, örneğin belirli bir biçimle [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) ve [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) özellikleri uygulayarak, değiştirme desenlerinde [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) özelliğine sahip yer tutucuları kullanarak ve diğerleri.

Aşağıdaki kod örneği, belgenizdeki belirli bir kelimeyi nasıl vurgulayacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words size, bir değiştirmek için bir özel yöntem oluşturmak ve çağırmak için [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) arayüzünü kullanmanızı sağlar. Bulma ve değiştirme işlemini özelleştirmek istediğiniz bazı kullanım durumları olabilir örneğin bir düzenli ifadeyle belirtilen metni HTML etiketleriyle değiştirmek, bu nedenle temelde HTML ekleyerek değiştirme uygulayacaksınız.

Bir dizeyi bir HTML etiketiyle değiştirmek zorunda kalırsanız, bul ve değiştir işlemini özelleştirmek için **IReplacingCallback** arayüzünü uygulayın böylece eşleşme sizin belgenizdeki eşleşme düğümü ile bir koşulun başında başlar. Birkaç **IReplacingCallback** kullanım örneği sağlayalım.

Aşağıdaki kod örneği, belirtilen metin ile HTML'yi nasıl değiştireceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Aşağıdaki kod örneği yeşil renk ile pozitif sayıları ve kırmızı renk ile negatif sayıları nasıl vurgulayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Aşağıdaki kod örneği, her satıra bir satır numarası eklemeyi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
