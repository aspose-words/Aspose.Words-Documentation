---
title: Seçilen İçeriği Düğüm Arasında Çıkar Java
second_title: Aspose.Words için Java
articleTitle: Bir Belge İçindeki Düğüm Arasında İçerik Çıkartın
linktitle: Düğümler Arasında İçeriği Çıkar
type: docs
description: "Farklı bir tarzda belgenin içeriğini çıkarma Java."
weight: 140
url: /tr/java/extract-selected-content-between-nodes/
---

Bir belge üzerinde çalışırken, bir belgedeki belirli bir aralıktan içeriği kolayca ayıklayabilmek önemlidir. Bununla birlikte, içerik paragraflar, tablolar, resimler vb. gibi karmaşık öğelerden oluşabilir.

İçerik ihtiyaçlarına bakılmaksızın, o içeriği ayıklamak için kullanılan yöntem her zaman içeriği ayıklamak için hangi düğümlerin seçileceğini belirler. Bunlar ya tüm metin gövdeleri ya da basit metin koşuludur.

İçeriği ayıklarken birçok olası durum ve bu nedenle dikkate alınması gereken çok farklı düğüm türü vardır. Örneğin, içeriği ayıklamak isteyebilirsiniz:

- İki spesifik paragraf
- Belirli metinler
- Çeşitli tipte alanlar, örneğin birleştirme alanları
- Bir imzanın veya yorumun başlangıç ve bitiş aralıkları
- Çeşitli metinler, ayrı bölümlere dahil edilmiştir

Bazı durumlarda, paragraf ve bir alan arasında veya bir çalıştırma ve bir yer işareti arasındaki içeriği ayıklamak gibi farklı düğüm türlerini birleştirmeniz gerekebilir.

Bu makale farklı düğümler arasındaki metinleri ayıklamak için kod uygulamasını sağlar ve yaygın senaryoların örneklerini verir.

{{% alert color="primary" %}}

Bu örnekler birçok olasılığın sadece birkaç gösterimidir. Metin ayıklama işlevselliğinin gelecekte halka açık bir API parçası olmasını planlıyoruz ve bu noktada ek kod gerekmeyecek. Bu arada, bu işlevsellik hakkındaki isteklerinizi [Aspose.Words forum](https://forum.aspose.com/c/words/8)'a yayınlamaktan çekinmeyin.

{{% /alert %}}

## İçeriği Neden Çıkartın?

İçeriği ayıklamanın amacı genellikle onu yeni bir belgeye ayrı olarak kopyalamak veya kaydetmektir. Örneğin, içeriği ayarlayabilir ve:

- Bunu ayrı bir belgeye kopyala
- Bir belgeden belirli bir kısmı PDF veya görüntüye dönüştürün
"- Dokümantaki içeriği birçok kez çoğaltın."
- Çıkartılan içeriği diğer tüm belgeyle ayrı olarak çalışın

Bu kolayca Aspose.Words ve aşağıdaki kod uygulaması kullanılarak gerçekleştirilebilir.

## İçerik Çıkarma Algoritması

Bu bölümde yer alan kod, yukarıda tanımlanan olası tüm durumları tek bir genelleştirilmiş ve yeniden kullanılabilir yöntemle ele alır. Bu tekniğin genel kapsamı şu şekildedir:

1. Belirli bir belgeden ayıklanacak içeriğin alanını belirten düğümleri toplayın. Bu düğümleri kullanıcı, istedikleri ayıklanacak şeylere bağlı olarak kodunda alır.
1. Bu düğümleri aşağıda sağlanan **ExtractContent** yöntemine geçirin. Ayrıca bir Boolean parametresini de geçirmelisiniz, bu parametre bu düğümlerin, işaretçiler olarak faaliyet gösterdikleri, ayıklama işleminin bir parçası olup olmamaları gerektiğini belirtir.
1. Alınan bir kopyalanmış içerik listesi (kopya düğümler) belirtilen ayıklama. Bu liste düğümleri herhangi bir uygulanabilir şekilde kullanabilirsiniz, örneğin yalnızca seçilen içeriği içeren yeni bir belge oluşturun.

## İçeriği Nasıl Çıkartılır

Bu makale içinde aşağıda bulunan belge ile çalışacağız. Gördüğünüz gibi belge içerik çeşitliliği içerir. Ayrıca not alın, belgenin ikinci bölümü ilk sayfanın ortasında başlar. Belgenin bir yer imi ve yorumu da var ancak bu ekran görüntüsünde görünmezler.

![extract-content-aspose-words-java](extract-content-from-comment-aspose-words-java-1.png)

İçeriği belgeden ayıklamak için, aşağıdaki `ExtractContent` yöntemini çağırmanız ve uygun parametreleri geçirmeniz gerekir.

Bu yöntemin temelini oluşturan, blok seviyesinde bulunan düğümleri ( Paragraflar ve tablolar ) bulup onları aynısını oluşturmak için klonlamaktır. Geçirilen işaretleyici düğümlerin blok seviyesi ise yöntem basitçe içeriği o seviyede kopyalayıp diziye ekleyebilmektedir.

Ancak, işaretleme düğümleri satır içi (bir paragrafın çocuğu) ise durum daha karmaşık hale gelir çünkü satır içi düğümü, bir çalışma alanı, yer imi alanları vb. Ne olursa olsun paragrafı bölmek gerekmektedir. Klon ebeveyn düğümlerinde bulunan ancak işaretler arasında olmayan içerik kaldırılır. Bu işlem, içeriğin ana paragrafın biçimlendirmesini koruyarak satır içi düğümlerde hala kalmasını sağlamak için kullanılır.

Bu yöntem parametreler olarak geçirilen düğümlerde de denetimleri çalıştıracak ve geçersiz bir düğüm varsa bir özel durum atacaktır. Bu yönteme geçirilecek parametreler şunlardır:

1. **StartNode** ve **EndNode**. İlk iki parametre içeriğin çıkarılması başlamak ve bitmek için sırasıyla tanımlayan düğümlerdir. Bu düğümler hem blok düzeyinde ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)) hem de satır içi düzeyde (örn. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) vb.):
   1. Bir alanı geçmek için, buna karşılık gelen **FieldStart** nesnesini geçmelisiniz.
   1. İşaretlemeleri geçirmek için, **BookmarkStart** ve [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) düğümleri geçirilmelidir.
   1. Yorumlar geçirmek için, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) düğümleri kullanılmalıdır.
1. **IsInclusive**. Çıkarma işleminde işaretçilerin dahil edilip edilmeyeceğini belirtir. Bu seçenek false olarak ayarlanırsa ve aynı düğüm veya ardışık düğümler geçirilirse boş bir liste döndürülür:

      1. Eğer bir **FieldStart** düğümü geçirilirse, bu seçenek, tüm alanın dahil edilip edilmeyeceğini veya dışlanacağını tanımlar.
      1. Bir **BookmarkStart** veya **BookmarkEnd** düğümü geçilirse, bu seçenek yer iminin dahil edilip edilmeyeceğini veya sadece yer imi aralığındaki içeriklerin dahil edilip edilmeyeceğini tanımlar.
      1. Bir **CommentRangeStart** veya **CommentRangeEnd** düğümü geçirilirse bu seçenek, yorumun kendisi dahil edilip edilmeyeceğini ya da yalnızca yorum aralığındaki içeriğin dahil edilip edilmeyeceğini tanımlar.

Bu yöntem uygulamasını **ExtractContent** bulabilirsiniz [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Bu yöntem bu makalede açıklanan senaryolarda referans verilecektir.

Ekstrakt edilmiş düğümlerden kolayca bir belge oluşturmak için özel bir yöntem tanımlayacağız. Bu yöntem birçok senaryoda kullanılır ve basitçe yeni bir belge oluşturur ve içeriği içeri aktarır.

Aşağıdaki kod örneği, bir düğüm listesi nasıl alınır ve yeni bir belgeye eklenir gösteriyor:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## paragraflar arasındaki içeriği ayıkla

Bu, yukarıdaki yöntemi kullanarak belirli paragraflar arasındaki içeriği nasıl ayıklayacağını göstermektedir. Bu durumda, belgenin ilk yarısındaki bulunan mektubun gövdesini ayıklamak istiyoruz. Bunu 7. ve 11. paragraflar arasında olduğunu söyleyebiliriz.

Aşağıdaki kod bu görevi gerçekleştirir. Uygun paragraflar, belgedeki [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) yöntemini kullanarak ve belirtilen dizinleri geçirerek alınır. Bu düğümler daha sonra **ExtractContent** yöntemine geçirilir ve bunların eklenmesinin belirtildiği söylenir. Bu yöntem, bu düğümler arasındaki kopyalanmış içeriği döndürecektir. Bu içerik daha sonra yeni bir belgeye eklenecektir.

Aşağıdaki kod örneği, yukarıdaki `ExtractContent` yöntemini kullanarak nasıl özel paragraflar arasında içeriği ayıklayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın bu örneğe ait örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'tan indirebilirsiniz.

{{% /alert %}}

Çıkış belgesi, çıkarılan iki paragrafı içerir.

![extract-content-result-aspose-words-java](extract-content-from-comment-aspose-words-java-2.png)

## Farklı Tiplerdeki Düğümler Arasında İçerik Çıkar

Herhangi bir blok düzeyli veya iç içe geçmiş düğümlerin birleşimi arasındaki içeriği ayıklayabiliriz. Aşağıdaki senaryoda, ilk paragraf ve ikinci bölümde bulunan tablo arasında içerik ayıklayacağız dahil olmak üzere. Belirtilen belgeyi almak için [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) ve [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) yöntemini çağırarak uygun **Paragraph** ve **Table** düğümlerini alıyoruz. Hafif bir varyasyon için içeriği kopyalayalım ve orijinalin altında yerleştirelim.

Aşağıdaki kod örneği, bir paragraf ile tablo arasındaki içeriği **ExtractContent** yöntemi kullanarak nasıl ayıklayacağını göstermektedir

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'tan indirebilirsiniz.

{{% /alert %}}

Paragraf ile tablo arasındaki içerik çoğaltılmıştır. Aşağıdaki sonuçtur.

![extract-content-between-paragraphs-aspose-words-java](extract-content-from-comment-aspose-words-java-3.png)

## Stil Tabanlı Paragraflar Arası İçerik Çıkar

Paragraflar içinde içerik ayıklamak için aynı veya farklı stillerde paragraflar arasında, örneğin başlık stilleriyle işaretlenmişler arasında ihtiyacınız olabilir.

Aşağıdaki kod bu şekilde elde edilebileceğini gösterir. Bu, "Heading 1" ve "Header 3" stillerinin arasındaki içeriği ayıklamak için bir örnektir, başlıkları da ayıklamaz. Bunu yapmak için son parametreyi false olarak ayarlıyoruz, böylece işaretleyici düğümlerin dahil edilmemesi gerektiğini belirtiriz.

Doğru bir uygulamada, bu tüm bu stillerin paragraflar arasındaki içeriği belgeye eklemek için döngüde çalıştırılmalıdır. Ayıklanan içerik yeni bir belgenin içine kopyalanır.

Aşağıdaki kod örneği **ExtractContent** yöntemini kullanarak paragraflar arasındaki içeriği nasıl ayıklayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

Bu örnek için örnek dosyayı [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx) 'den indirebilirsiniz.

{{% /alert %}}

Aşağıda önceki işlemin sonucu yer almaktadır.

![extract-content-between-paragraph-style-aspose-words-java](extract-content-from-comment-aspose-words-java-4.png)

## Belirli Çalışmalar Arasında İçeriği Çıkar

Bir satır içi düğümleri gibi, bir **Run** arasında yer alan içeriği de ayıklayabilirsiniz. Farklı paragraflar için işaretçiler olarak **Runs** geçilebilir. Aşağıdaki kod, aynı **Paragraph** düğümü arasında belirli metinlerin nasıl ayıklanacağını gösterir.

Aşağıdaki kod örneği, aynı paragrafta belirli çalıştırmalar arasında içeriği nasıl ayıklayacağınızı gösterir **ExtractContent** yöntemi:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın bu örneğe ait örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'dan indirebilirsiniz.

{{% /alert %}}

Ayıklanan metin konsola gösterilir

![extract-content-between-runs-aspose-words-java](extract-content-from-comment-aspose-words-java-5.png)

## İçeriği Bir Alan Kullanarak Ayıkla

Bir alanı bir işaretçi olarak kullanmak için `FieldStart` düğümü geçirilmelidir. `ExtractContent` yönteminin son parametresi, tüm alanın dahil edilip edilmeyeceğini tanımlamalıdır. Bir belge içinde "FullName" birleştirme alanı ve bir paragraf arasındaki içeriği ayıklayalım. Bu, [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String) sınıfının [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) yönteminin **FieldStart** düğümünü adından geçiren bir yöntemdir.

Eğer bizim durumumuz için son parametreyi **ExtractContent** yöntemine geçirilen false'e ayarlayalım ve alanı ayıklamayı hariç tutalım. Ayıklanan içeriği PDF olarak sunacağız.

Aşağıdaki kod örneğinde, **ExtractContent** yöntemini kullanarak belge içinde belirli bir alan ve paragraf arasındaki içeriği nasıl ayıklayacağınız gösterilmiştir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

Bu örnek için örnek dosyayı [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'dan indirebilirsiniz.

{{% /alert %}}

Alan ve paragraf arasındaki ayıklanan içerik, alan ve paragraf işareti düğümleri pdf olarak oluşturulmuş.

![extract-content-using-field-aspose-words-java](extract-content-from-comment-aspose-words-java-6.png)

## Bir İşaretçiden İçeriği Çıkar

Bir belgede, bir işaretleyici içinde tanımlanan içerik `BookmarkStart` ve BookmarkEnd düğümleri tarafından kapsüllenir. Bu iki düğüm arasındaki bulunan içerik işaretleyiciyi oluşturur. Başlangıç işaretçisi ile bitiş işaretçisi arasında yer alan her işaretçi, başka bir işaretliğin işaretçisi olarak geçebilir, hatta farklı işaretleyicilerde olabilirler, ancak başlangıç işaretçisi bitiş işaretçisinden önce belgede görünecek.

Örnek belge içinde, "Bookmark1" adlı bir imzajız var. Bu imzanın içeriği belgemizdeki vurgulanan içeriktir:

![extract-content-from-bookmark-aspose-words-java-1](extract-content-from-comment-aspose-words-java-7.png)

Aşağıdaki kod kullanarak bu içeriği yeni bir belgeye ayıklayacağız. **IsInclusive** parametre seçeneği, yer imlerini nasıl tutacağınızı veya atacağınızı gösterir.

Aşağıdaki kod örneği, bir yer iminin içeriğini **ExtractContent** yöntemini kullanarak nasıl ayıklayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın bu örneğe ait örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'dan indirebilirsiniz.

{{% /alert %}}

Ayıklanan çıktı `IsInclusive` parametresi ile true olarak ayarlandı. Kopyada yer işareti de korunacak.

![extract-content-from-bookmark-aspose-words-java-2](extract-content-from-comment-aspose-words-java-8.png)

Çıkarılan çıktı ile **IsInclusive** parametresi false'e ayarlanmış. Kopyası içeriği içerir ama ekleme işaretlemesi olmadan.

![extract-content-from-bookmark-aspose-words-java-3](extract-content-from-comment-aspose-words-java-9.png)

## Yorumdan İçeriği Çıkar

Bir açıklama KommentRangeStart, KommentRangeEnd ve Komment düğümlerinden oluşur. Tüm bu düğümler dizedir. İlk iki düğüm yorum yapılan belgenin içeriğini kapsülleyen düğümlerdir, bunun ekran görüntüsü aşağıda gösterilmiştir.

**Comment** düğümü kendisinin bir [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) olarak paragraflar ve bölümler içerebilir. İnceleme penceresinde yorum kabarcığı olarak görülen mesajı temsil eder. Bu düğüm satır içi ve bir gövdenin nesnesi olduğu için bu mesaj içindeki içeriği de ayıklayabilirsiniz.

Aletimizde bir yorumumuz var. İnceleme sekmesinde gösterilen mark-up ile görüntüleyelim:

![extract-content-from-comment-aspose-words-java-1](extract-content-from-comment-aspose-words-java-10.png)

Yoruma başlık, ilk paragraf ve ikinci bölümde bulunan tablo kapsüllenir. Bu yorumu yeni bir belgeye ayıklayalım. **IsInclusive** seçeneği yorumun kendisinin korunup korunmayacağını belirtir.

Aşağıdaki kod örneğinin bunu nasıl yapılacağını gösterdiğini gösteriyor:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

Örnek dosyanın bu örneğe ait örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)'dan indirebilirsiniz.

{{% /alert %}}

İlk olarak, parametre ayarı `IsInclusive` ile çıkarılan çıktı true'e. Kopyası, yorumu da içerecek.

![extract-content-from-comment-aspose-words-java-2](extract-content-from-comment-aspose-words-java-11.png)

İkinci olarak, **İnclusive** ayarlanmış ekstra çıktı false. Kopyası içerik içerir ancak yorum olmadan.

![extract-content-from-comment-aspose-words-java-12](extract-content-from-comment-aspose-words-java-12.png)

## DocumentVisitor kullanarak İçeriği Çıkar

Aspose.Words yalnızca dinamik olarak oluşturma veya şablonları veri ile birleştirme yoluyla Microsoft Word belgeleri oluşturmak için değil, aynı zamanda başlıklar, altbilgiler, paragraflar, tablolar, resimler ve diğerleri gibi ayrı belge öğelerini ayıklamak için ayrıştırmak üzere de kullanılabilir. Başka bir mümkün görev tüm özel biçimlendirme veya stil içeren metinleri bulmaktır.

Bu kullanım durumunu uygulamak için [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) sınıfını kullanın. Bu sınıf iyi bilinen Ziyaretçi tasarım desenine karşılık gelir. [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) ile, belge ağacında yineleme gerektiren özel işlemleri tanımlayabilir ve uygulayabilirsiniz.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) belirli bir belge öğesi (düğüm) karşılaştığında çağrılan bir dizi **VisitXXX** yöntemini sağlar. Örneğin, "[VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph)" bir metin paragrafının başlangıcını bulduğunda ve "[VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph)" bir metin paragrafının bitişini bulduğunda çağrılır. Her **DocumentVisitor.VisitXXX** yöntemi karşılaştığı ilgili nesneyi kabul eder böylece ihtiyacınız olan şekilde kullanabilirsiniz (örneğin biçimlendirmeyi al) örneğin hem [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) hem de [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) bir [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) nesnesini kabul eder.

Her **DocumentVisitor.VisitXXX** yöntemi, düğümlerin sıralanmasını kontrol eden bir **VisitorAction** değeri döndürür. Devam etmemeyi, geçerli düğüme atlamayı (ama sıralamanın devam etmesini) veya düğümlerin sıralamasını durdurmayı talep edebilirsiniz.

Bu, programlı olarak bir belgeden çeşitli parçaların belirlenmesi ve çıkarılması için izlenmesi gereken adımlardır:

- [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)'den türetilmiş bir sınıf oluşturun.
- **DocumentVisitor.VisitXXX** yöntemleri için geçersiz kılma ve özel işlemler gerçekleştirmek için bunların bazılarını veya tamamını uygulayın.
- [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor)'den saymaya başlamak istediğiniz düğümde çağrı yapın. Örneğin, tüm belgenin numaralandırılmasını istiyorsanız, [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)'i kullanın.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) tüm **DocumentVisitor.VisitXXX** yöntemleri için varsayılan uygulamalar sağlar. Bu, yeni belge ziyaretçilerinin oluşturulmasını kolaylaştırır çünkü yalnızca belirli bir ziyaretçi için gerekli olan yöntemlerin geçersiz kılınması gerekir. Tüm ziyaretçi yöntemlerinin geçersiz kılınmasına gerek yoktur.

Aşağıdaki örnek, Aspose.Words nesne modeline yeni işlemler eklemek için Ziyaretçi deseninin nasıl kullanılacağını göstermektedir. Bu durumda, basit bir metin biçimine dönüştürmek için bir belge dönüştürücüsü oluşturuyoruz:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Yalnızca Metni Çıkar

Metni belgezdenden almak için yollar şunlardır:

- [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) ile [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)'i düz metin olarak bir dosyaya veya akışa kaydetmek için kullanın
- [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) kullanın ve `SaveFormat.Text` parametresini geçirin. İçsel olarak bu metin olarak kaydetme bir bellek akışına çağrıda bulunur ve sonuçtaki dize döndürülür
- Tüm Microsoft Word denetim karakterleri dahil alan kodlarıyla birlikte metin almak için [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) kullanın
- Özelleştirilmiş bir [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) uygulayın özelleştirilmiş ayıklama yapmak için

### `Node.GetText` ve `Node.ToString` kullanmak

Bir Word belgesinde alan, hücre sonu, bölüm sonu vb. gibi özel öğeleri belirten kontrol karakterleri içerebilir. Olası Word kontrol karakterleri kümesinin tamamı **ControlChar** sınıfında tanımlanmıştır. [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) yöntemi, düğümdeki tüm kontrol karakterlerinin bulunduğu metni döndürür.

Calling ToString döndürür sadece kontrol karakterleri olmadan belge için düz metin gösterimini." "Düz metin olarak dışa aktarma hakkında daha fazla bilgi için **Using SaveFormat.Text** bakın.

Aşağıdaki kod örneği, bir düğümde **GetText** ve [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) yöntemlerini çağırmanın arasındaki farkı göstermektedir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### `SaveFormat.Text` kullanmak

Bu örnek, belgeri şu şekilde kaydeder:

- Alan karakterleri ve alan kodlarını filtreler, şekil, not, sonnot ve yorum referansları
- Paragraflardan [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) karakter, [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) kombinasyon ile değiştirir
- UTF8 kodlamasını kullanır

Aşağıdaki kod örneği bir belgenin TXT formatında nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Şekillerden Görüntü Çıkar

Belge resimlerini ayıklamak bazı görevleri gerçekleştirmek için gerekebilir. Aspose.Words bunu yapmanıza da izin verir.

Aşağıdaki kod örneği bir belgeden nasıl resim ayıklanacağını gösterir:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}