---
title: Belge Düğümleri Arasındaki İçeriği Çıkarın
second_title: Python için Aspose.Words
articleTitle: Belgedeki Düğümler Arasındaki İçeriği Çıkarma
linktitle: Düğümler Arasındaki İçeriği Çıkart
description: "Python kullanarak belge içindeki bir aralıktan belirli içerikleri kolayca çıkarma."
type: docs
weight: 140
url: /tr/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Belgelerle çalışırken, belge içindeki belirli bir aralıktan içeriği kolayca çıkarabilmek önemlidir. Ancak içerik paragraf, tablo, resim vb. gibi karmaşık unsurlardan oluşabilir.

Hangi içeriğin çıkarılması gerektiğine bakılmaksızın, bu içeriği çıkarma yöntemi her zaman, aralarında içerik çıkarmak için hangi düğümlerin seçildiğine göre belirlenecektir. Bunlar tüm metin gövdeleri veya basit metin çalıştırmaları olabilir.

İçerik çıkarırken dikkate alınması gereken birçok olası durum ve dolayısıyla birçok farklı düğüm türü vardır. Örneğin, aşağıdakiler arasında içerik çıkarmak isteyebilirsiniz:

- İki özel paragraf
- Belirli metin dizileri
- Birleştirme alanları gibi çeşitli türlerdeki alanlar
- Bir yer işaretinin veya yorumun başlangıç ve bitiş aralıkları
- Ayrı bölümlerde bulunan çeşitli metin gövdeleri

Bazı durumlarda, bir paragraf ile alan arasında veya bir çalıştırma ile yer imi arasında içerik çıkarmak gibi farklı düğüm türlerini birleştirmeniz bile gerekebilir.

Bu makalede, farklı düğümler arasında metin çıkarmaya yönelik kod uygulamasının yanı sıra yaygın senaryo örnekleri de sağlanmaktadır.

{{% alert color="primary" %}}

Bu örnekler birçok olasılığın sadece birkaç gösterimidir. Gelecekte metin çıkarma işlevinin genel API'in bir parçası olmasını planlıyoruz ve ekstra kod gerekmeyecek. Bu arada, bu işlevselliğe ilişkin taleplerinizi [Aspose.Words forumu](https://forum.aspose.com/c/words/8)'ye göndermekten çekinmeyin.

{{% /alert %}}

## Neden İçeriği Çıkartın?

Çoğu zaman içeriği çıkarmanın amacı onu çoğaltmak veya yeni bir belgeye ayrı olarak kaydetmektir. Örneğin, içerik çıkarabilir ve şunları yapabilirsiniz:

- Ayrı bir belgeye kopyalayın
- Belgenin belirli bir bölümünü PDF'ye veya resme dönüştürün
- Belgedeki içeriği birçok kez çoğaltın
- Belgenin geri kalanından ayrı olarak çıkarılan içerikle çalışın

Bu, Aspose.Words ve aşağıdaki kod uygulaması kullanılarak kolayca başarılabilir.

## İçerik Algoritmasını Çıkarma

Bu bölümdeki kod, yukarıda açıklanan tüm olası durumları genelleştirilmiş ve yeniden kullanılabilir bir yöntemle ele almaktadır. Bu tekniğin genel taslağı şunları içerir:

1. Belgenizden çıkarılacak içerik alanını belirleyen düğümleri toplamak. Bu düğümlerin alınması, çıkarmak istedikleri şeye bağlı olarak kullanıcı tarafından kendi kodunda gerçekleştirilir.
1. Bu düğümleri aşağıda verilen **ExtractContent** yöntemine geçirmek. Ayrıca, işaretçi görevi gören bu düğümlerin çıkarma işlemine dahil edilip edilmeyeceğini belirten bir boolean parametresi de iletmelisiniz.
1. Çıkarılması belirtilen klonlanmış içeriğin (kopyalanan düğümler) listesinin alınması. Bu düğüm listesini uygun herhangi bir şekilde kullanabilirsiniz; örneğin yalnızca seçilen içeriği içeren yeni bir belge oluşturmak gibi.

## İçerik Nasıl Çıkarılır

İçeriği belgenizden çıkarmak için aşağıdaki **extract_content** yöntemini çağırmanız ve uygun parametreleri iletmeniz gerekir. Bu yöntemin temelindeki temel, blok düzeyindeki düğümlerin (paragraflar ve tablolar) bulunmasını ve bunların aynı kopyaları oluşturacak şekilde klonlanmasını içerir. Geçilen işaretleyici düğümler blok düzeyindeyse, yöntem yalnızca bu düzeydeki içeriği kopyalayabilir ve diziye ekleyebilir.

Bununla birlikte, eğer işaretleyici düğümler satır içi ise (paragrafın çocuğu) bu durumda durum daha karmaşık hale gelir, çünkü paragrafı satır içi düğümde bölmek gerekir (bir çalıştırma, yer imi alanları vb. olsun). Klonlanmış ana düğümlerdeki içerik, İşaretleyiciler arasında mevcut olanlar kaldırılır. Bu işlem, satır içi düğümlerin hala ana paragrafın biçimlendirmesini koruyacağından emin olmak için kullanılır. Yöntem aynı zamanda parametre olarak iletilen düğümler üzerinde de denetimler çalıştıracak ve düğümlerden herhangi birinin geçersiz olması durumunda bir istisna oluşturacaktır. Bu yönteme iletilecek parametreler şunlardır:

1. **startNode** ve **bitiş düğümü**. İlk iki parametre, içeriğin çıkarılmasının sırasıyla nerede başlayacağını ve nerede biteceğini tanımlayan düğümlerdir. Bu düğümler hem blok düzeyinde ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) hem de satır içi düzeyde (örn. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) vb.) olabilir):
   1. Bir alanı iletmek için ilgili [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) nesnesini iletmelisiniz.
   1. Yer işaretlerini iletmek için [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) düğümlerinin iletilmesi gerekir.
   1. Yorumları iletmek için [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) ve [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) düğümleri kullanılmalıdır.
1.**herşey dahil**. İşaretleyicilerin ekstraksiyona dahil edilip edilmeyeceğini tanımlar. Bu seçenek false olarak ayarlanırsa ve aynı düğüm veya ardışık düğümler aktarılırsa boş bir liste döndürülür:
   1. Bir [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) düğümü aktarılırsa bu seçenek tüm alanın dahil edileceğini veya hariç tutulacağını tanımlar.
   1. Bir [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) veya [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) düğümü aktarılırsa bu seçenek, yer iminin mi yoksa yalnızca yer imi aralığı arasındaki içeriğin mi dahil edileceğini tanımlar.
   1. Bir [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) veya [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) düğümü aktarılırsa bu seçenek, yorumun kendisinin mi yoksa yalnızca yorum aralığındaki içeriğin mi dahil edileceğini tanımlar.

**extract_content** yönteminin uygulanmasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py)'de bulabilirsiniz. Bu makaledeki senaryolarda bu yönteme değinilecektir.

Çıkarılan düğümlerden kolayca belge oluşturmak için özel bir yöntem de tanımlayacağız. Bu yöntem aşağıdaki senaryoların çoğunda kullanılır ve yalnızca yeni bir belge oluşturur ve çıkarılan içeriği bu belgeye aktarır.

Aşağıdaki kod örneği, düğüm listesinin nasıl alınacağını ve bunların yeni bir belgeye nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Paragraflar Arasındaki İçeriği Çıkartın

Bu, belirli paragraflar arasındaki içeriği çıkarmak için yukarıdaki yöntemin nasıl kullanılacağını gösterir. Bu durumda belgenin ilk yarısında bulunan mektubun gövdesini çıkarmak istiyoruz. Bunun 7. ve 11. paragraflar arasında olduğunu söyleyebiliriz.

Aşağıdaki kod bu görevi yerine getirir. Uygun paragraflar belge üzerinde [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) yöntemi kullanılarak ve belirtilen indekslerden geçirilerek çıkarılır. Daha sonra bu düğümleri **extract_content** yöntemine aktarıyoruz ve bunların da ekstraksiyona dahil edilmesi gerektiğini belirtiyoruz. Bu yöntem, daha sonra yeni bir belgeye eklenen bu düğümler arasında kopyalanan içeriği döndürür.

Aşağıdaki kod örneği, yukarıdaki **extract_content** yöntemini kullanarak belirli paragraflar arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Farklı Düğüm Türleri Arasında İçerik Çıkarma

Blok düzeyi veya satır içi düğümlerin herhangi bir kombinasyonu arasından içerik çıkarabiliriz. Aşağıdaki bu senaryoda, ilk paragraf ile ikinci bölümdeki tablo arasındaki içeriği kapsamlı bir şekilde çıkaracağız. Uygun [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) ve [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) düğümlerini almak için belgenin ikinci bölümünde [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) ve [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) yöntemini çağırarak işaretçi düğümlerini alıyoruz. Küçük bir değişiklik için bunun yerine içeriği kopyalayıp orijinalin altına ekleyelim.

Aşağıdaki kod örneği, **extract_content** yöntemini kullanarak bir paragraf ile tablo arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Stile Göre Paragraflar Arasındaki İçeriği Çıkarın

Başlık stilleriyle işaretlenmiş paragraflar arasında olduğu gibi, aynı veya farklı stildeki paragraflar arasındaki içeriği çıkarmanız gerekebilir.

Aşağıdaki kod bunun nasıl başarılacağını gösterir. "Başlık 1" ve "Başlık 3" stillerinin ilk örneği arasındaki içeriği, başlıkları da çıkarmadan çıkaracak basit bir örnektir. Bunu yapmak için son parametreyi, işaretleyici düğümlerin dahil edilmemesi gerektiğini belirten false olarak ayarladık.

Uygun bir uygulamada, bu stillerin tüm paragrafları arasındaki içeriği belgeden çıkarmak için bu bir döngü içinde çalıştırılmalıdır. Çıkarılan içerik yeni bir belgeye kopyalanır.

Aşağıdaki kod örneği, **extract_content** yöntemini kullanarak belirli stillere sahip paragraflar arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Belirli Çalıştırmalar Arasında İçerik Çıkarma

[Run](https://reference.aspose.com/words/python-net/aspose.words/run/) gibi satır içi düğümler arasında da içerik çıkarabilirsiniz. Farklı paragraflardaki çalıştırmalar işaretçi olarak aktarılabilir. Aşağıdaki kod, aynı [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) düğümü arasında belirli bir metnin nasıl çıkarılacağını gösterir.

Aşağıdaki kod örneği, **extract_content** yöntemini kullanarak aynı paragrafın belirli çalıştırmaları arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Alanı Kullanarak İçeriği Çıkarma

Bir alanı işaretleyici olarak kullanmak için [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) düğümünün iletilmesi gerekir. **extract_content** yönteminin son parametresi tüm alanın dahil edilip edilmeyeceğini tanımlayacaktır. Belgedeki "Tam Ad" birleştirme alanı ile bir paragraf arasındaki içeriği çıkaralım. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfının [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) yöntemini kullanıyoruz. Bu, kendisine iletilen birleştirme alanının adından [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) düğümünü döndürecektir.

Bizim durumumuzda alanı çıkarma işleminin dışında bırakmak için **extract_content** yöntemine iletilen son parametreyi `False` olarak ayarlayalım. Çıkarılan içeriği PDF'ye dönüştüreceğiz.

Aşağıdaki kod örneği, **extract_content** yöntemini kullanarak belgedeki belirli bir alan ile paragraf arasındaki içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Yer İminden İçerik Çıkarma

Bir belgede, bir yer imi içinde tanımlanan içerik, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ve [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) düğümleri tarafından kapsüllenir. Bu iki düğüm arasında bulunan içerik yer imini oluşturur. Başlangıç işaretçisi belgedeki bitiş işaretçisinden önce göründüğü sürece, bu düğümlerden herhangi birini, farklı yer imlerinden olanlar da dahil olmak üzere herhangi bir işaretçi olarak geçirebilirsiniz. Aşağıdaki kodu kullanarak bu içeriği yeni bir belgeye çıkaracağız. **herşey dahil** parametre seçeneği, yer iminin nasıl korunacağını veya atılacağını gösterir.

Aşağıdaki kod örneği, **extract_content** yöntemini kullanarak bir yer işaretine başvurulan içeriğin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Yorumdan İçerik Çıkarma

Bir yorum [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) ve [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) düğümlerinden oluşur. Bu düğümlerin tümü satır içidir. İlk iki düğüm, aşağıdaki ekran görüntüsünde görüldüğü gibi, yorumun referans verdiği belgedeki içeriği kapsar. [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) düğümünün kendisi paragraflar ve çalıştırmalar içerebilen bir [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/)'dir. İnceleme bölmesinde bir yorum balonu olarak görülen yorumun mesajını temsil eder. Bu düğüm satır içi olduğundan ve bir gövdenin soyundan geldiğinden, içeriği bu mesajın içinden de çıkarabilirsiniz.

Yorum, başlığı, ilk paragrafı ve ikinci bölümdeki tabloyu kapsar. Bu yorumu yeni bir belgeye çıkaralım. **herşey dahil** seçeneği, yorumun kendisinin tutulacağını veya atılacağını belirler.

Aşağıdaki kod örneği bunun nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Yalnızca Metin Nasıl Çıkarılır

Belgeden metin almanın yolları şunlardır:

- Bir dosyaya veya akışa düz metin olarak kaydetmek için [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)'i kullanın
- [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) kullanın ve [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) parametresini iletin. Dahili olarak bu, bir bellek akışına metin olarak kaydetmeyi çağırır ve elde edilen dizeyi döndürür
- Alan kodları dahil tüm Microsoft Word kontrol karakterlerini içeren metni almak için [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/)'i kullanın

### Node.get_text ve Node.to_string'i kullanma

Bir Word belgesi, alan, hücre sonu, bölüm sonu vb. gibi özel öğeleri belirten kontrol karakterlerini içerebilir. Olası Word kontrol karakterlerinin tam listesi [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) sınıfında tanımlanır. [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) yöntemi, düğümde bulunan tüm kontrol karakter karakterlerini içeren metni döndürür.

[to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/)'in çağrılması, belgenin yalnızca kontrol karakterleri olmadan düz metin gösterimini döndürür. Düz metin olarak dışa aktarma hakkında daha fazla bilgi için bkz. [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) Kullanımı

Aşağıdaki kod örneği, bir düğümde [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) ve [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) yöntemlerini çağırmak arasındaki farkı gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### `SaveFormat.Text`'i kullanma

Bu örnek belgeyi şu şekilde kaydeder:

- Alan karakterlerini ve alan kodlarını, şekli, dipnotu, son notu ve yorum referanslarını filtreler
- Paragraf sonu **ControlChar.Cr** karakterlerini **ControlChar.CrLf** kombinasyonlarıyla değiştirir
- UTF8 kodlamasını kullanır

Aşağıdaki kod örneği, bir belgenin TXT biçiminde nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Şekillerden Görüntü Çıkarma

Bazı görevleri gerçekleştirmek için belge resimlerini çıkarmanız gerekebilir. Aspose.Words bunu da yapmanıza olanak sağlar.

Aşağıdaki kod örneği, bir belgeden görüntülerin nasıl çıkarılacağını gösterir:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
