---
title: Python'te Bölümlerle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Bölümlerle Çalışmak
linktitle: Bölümlerle Çalışmak
description: "Python'i kullanarak bir belgede bölümler ve bölüm sonları oluşturun ve yönetin. Bir belgenin Python'ine bölüm ekleyin. Python bölümünü kaldırın. Belgeler arasında bölümleri kopyalayın."
type: docs
weight: 120
url: /tr/python-net/working-with-sections/
---

Bazen tüm sayfalarda aynı biçimlendirmeye sahip olmayan bir belge istersiniz. Örneğin, sayfa numarası formatlarını değiştirmeniz, farklı sayfa boyutu ve yönüne sahip olmanız veya ilk belge sayfasını numaralandırma olmadan kapak sayfası olarak kullanmanız gerekebilir. Bunu bölümlerle başarabilirsiniz.

Bölümler, üstbilgileri ve altbilgileri, yönlendirmeyi, sütunları, kenar boşluklarını, sayfa numarası biçimlendirmesini ve diğerlerini kontrol eden düzey düğümleridir.

Aspose.Words, bölümleri yönetmenize, bir belgeyi bölümlere ayırmanıza ve yalnızca belirli bir bölüm için geçerli olan biçimlendirme değişiklikleri yapmanıza olanak tanır. Aspose.Words, üstbilgiler ve altbilgiler, sayfa düzeni ve sütun ayarları gibi bölüm biçimlendirmesi hakkındaki bilgileri bölüm sonunda saklar.

Bu makalede bölümler ve bölüm sonlarıyla nasıl çalışılacağı açıklanmaktadır.

## Bölüm ve Bölüm Sonu Nedir?

Belge bölümleri [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ve [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) sınıflarıyla temsil edilir. Bölüm nesneleri, [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) düğümünün doğrudan alt öğeleridir ve bunlara [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) özelliği aracılığıyla erişilebilir. Bu düğümleri [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node), [Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node), [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) ve diğerleri gibi bazı yöntemleri kullanarak yönetebilirsiniz.

Bölüm sonu, belge sayfalarını özelleştirilebilir düzenlerle bölümlere ayıran bir seçenektir.

## Bölüm Sonu Türleri

Aspose.Words, [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) numaralandırmasının farklı bölüm sonlarını kullanarak belgeleri bölmenize ve biçimlendirmenize olanak tanır:

- BölümBreakSürekli
- BölümBreakNewColumn
- BölümBreakNewPage
- BölümBreakEvenPage
- BölümBreakOddPage

NewColumn, NewPage, EvenPage ve OddPage gibi yalnızca ilk bölüm için geçerli olan bir kesme türü seçmek için [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) numaralandırmasını da kullanabilirsiniz.

## Bir Bölümü Yönetme

Bir bölüm normal bir bileşik düğüm olduğundan, API düğüm manipülasyonunun tamamı bölümleri değiştirmek için kullanılabilir: bölümler eklemek, kaldırmak ve bölümler üzerindeki diğer işlemler için. Düğümler hakkında daha fazla bilgiyi [Aspose.Words Document Object Model (DOM)](/words/tr/python-net/aspose-words-document-object-model/) makalesinde okuyabilirsiniz.

Öte yandan bölümlerle çalışmak için `DocumentBuilder` API'yi de kullanabilirsiniz. Bu makalede bölümlerle çalışmanın bu özel yoluna odaklanacağız.

## Bölüm Sonu Ekleme veya Kaldırma

Aspose.Words, [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) yöntemini kullanarak metne bölüm sonu eklemenizi sağlar.

Aşağıdaki kod örneği, bir belgeye bölüm sonunun nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

Bölüm sonunu silmek için [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) yöntemini kullanın. Belirli bir bölüm sonunu kaldırmanız gerekmiyor ve bunun yerine o bölümün içeriğini silmek istiyorsanız [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği bölüm sonlarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

Bölüm sonunun, kendisinden sonra gelen bölümle değil, kendisinden önceki bölümle ilgili bilgi içerdiğini unutmayın. Dolayısıyla, bir bölüm sonunu kaldırırsanız, kaldırılan sondan önceki metin, onu takip eden bölüm sonunun özelliklerini alır. Bu, belgenin tamamının yatay hale gelmesine veya üstbilgilerin ve altbilgilerin değişmesine veya tamamen kaybolmasına neden olabilir.

{{% /alert %}}

## Bir Bölümü Taşı

Belgenizde bir bölümü bir konumdan diğerine taşımak istiyorsanız o bölümün dizinini almanız gerekir. Aspose.Words, [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/)'den bölüm konumu almanızı sağlar. Belgenizdeki tüm bölümleri almak için [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) özelliğini kullanabilirsiniz. Ancak yalnızca ilk bölümü almak istiyorsanız [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, ilk bölüme nasıl erişileceğini ve bileşik düğümün alt öğelerinin nasıl yineleneceğini gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## Bir Bölüm Düzeni Belirtin

Bazen farklı belge bölümleri için yaratıcı düzenler oluşturarak belgenizin daha iyi görünmesini istersiniz. Geçerli bölüm ızgarasının türünü belirtmek istiyorsanız [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) numaralandırmasını kullanarak bir bölüm düzeni modu seçebilirsiniz:

- Varsayılan
- Kafes
- Çizgi Izgarası
- SnapToChar'lar

Aşağıdaki kod örneği, her sayfanın sahip olabileceği satır sayısının nasıl sınırlandırılacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## Bir Bölümü Düzenleme

Belgenize yeni bir bölüm eklediğinizde düzenleyebileceğiniz herhangi bir gövde veya paragraf olmayacaktır. Aspose.Words, [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) yöntemini kullanarak bir bölümün en az bir paragraf içeren bir gövde içerdiğini garanti etmenize olanak tanır; belgeye otomatik olarak bir Gövde (veya HeaderFooter) düğümü ekleyecek ve ardından ona bir Paragraf ekleyecektir.

Aşağıdaki kod örneği, **EnsureMinimum** kullanarak yeni bir bölüm düğümünün nasıl hazırlanacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### İçeriği Ekle veya Başına Ekle

Bir bölümün başına/sonuna şekil çizmek veya metin veya resim eklemek istiyorsanız [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) sınıfının [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) ve [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) yöntemlerini kullanabilirsiniz.

Aşağıdaki kod örneği, mevcut bir bölümün içeriğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### Bir Bölümü Klonla

Aspose.Words, [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) yöntemini kullanarak bir bölümün tam kopyasını oluşturarak bir bölümü çoğaltmanıza olanak tanır.

Aşağıdaki kod örneği, belgenizdeki ilk bölümün nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### Belgeler Arasında Bölümleri Kopyalama

Bazı durumlarda, birçok bölümü olan büyük belgeleriniz olabilir ve bir bölümün içeriğini bir belgeden diğerine kopyalamak isteyebilirsiniz.

Aspose.Words, [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) yöntemini kullanarak belgeler arasında bölümleri kopyalamanıza olanak tanır.

Aşağıdaki kod örneği, bölümlerin belgeler arasında nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### Bölüm Üstbilgisi ve Altbilgisiyle Çalışma

Her bölüm için üstbilgi veya altbilgiyi görüntülemeye ilişkin temel kurallar oldukça basittir:

1. Bölümün belirli bir türde kendi üstbilgisi/altbilgisi yoksa önceki bölümden alınır.
2. Sayfada görüntülenen üstbilgi/altbilgi türü, "Farklı İlk Sayfa" ve "Farklı Tek ve Çift Sayfalar" bölüm ayarları tarafından kontrol edilir; bunlar devre dışı bırakılırsa bölümün kendi başlıkları göz ardı edilir.

Aşağıdaki kod örneği, farklı başlıklara sahip 2 bölümün nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

Belgenizdeki [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) nesnelerini kaldırmadan üst bilgi ve alt bilgi metinlerini kaldırmak istiyorsanız [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) yöntemini kullanabilirsiniz. Ayrıca belgenizdeki üstbilgi ve altbilgilerdeki tüm şekilleri kaldırmak için [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, bir bölümdeki tüm üstbilgi ve altbilgilerin içeriğinin nasıl temizleneceğini gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

Aşağıdaki kod örneği, bir bölümdeki tüm üst bilgi alt bilgilerinden tüm şekillerin nasıl kaldırılacağı:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## Bir Bölümdeki Sayfa Özelliklerini Özelleştirme

Bir sayfayı veya belgeyi yazdırmadan önce, tek bir sayfanın veya tüm belgenin boyutunu ve düzenini özelleştirmek ve değiştirmek isteyebilirsiniz. Sayfa düzeni ile, farklı ilk sayfaları veya tek sayfaları yazdırmak için belge sayfalarının kenar boşlukları, yön ve boyut gibi ayarlarını değiştirebilirsiniz.

Aspose.Words, [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) sınıfını kullanarak sayfa ve bölüm özelliklerini özelleştirmenize olanak tanır.

Aşağıdaki kod örneği, geçerli bölüm için sayfa boyutu ve yönlendirme gibi özelliklerin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

Aşağıdaki kod örneği, tüm bölümlerde sayfa özelliklerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## Ayrıca bakınız

- [Bir Belgedeki Düğümlerin Mantıksal Düzeyleri](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [Belge Ekleme ve Ekleme](/words/tr/python-net/insert-and-append-documents/)
