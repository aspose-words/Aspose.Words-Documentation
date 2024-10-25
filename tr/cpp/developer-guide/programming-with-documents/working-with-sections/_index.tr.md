---
title: C++ içindeki Bölümlerle Çalışma
second_title: Aspose.Words için C++
articleTitle: Bölümlerle Çalışmak
linktitle: Bölümlerle Çalışmak
description: "C++ kullanarak belge bölümü kavramlarını ve manipülasyon uygulamalarını anlama. Bir belgeye bölüm ekle C++. C++ bölümünü kaldırın. Belgeler arasında bölümleri kopyalayın."
type: docs
weight: 120
url: /tr/cpp/working-with-sections/
---

Bazen tüm sayfalarda aynı biçimlendirmeye sahip olmayan bir belge istersiniz. Örneğin, sayfa numarası biçimlerini değiştirmeniz, farklı sayfa boyutuna ve yönüne sahip olmanız veya ilk belge sayfasını numaralandırmadan kapak sayfası olarak almanız gerekebilir. Bunu bölümlerle başarabilirsiniz.

Bölümler, üstbilgileri ve altbilgileri, yönlendirmeyi, sütunları, kenar boşluklarını, sayfa numarası biçimlendirmesini ve diğerlerini kontrol eden düzey düğümlerdir.

Aspose.Words bölümleri yönetmenize, bir belgeyi bölümlere ayırmanıza ve yalnızca belirli bir bölüm için geçerli biçimlendirme değişiklikleri yapmanıza olanak tanır. Aspose.Words üstbilgi ve altbilgi, sayfa yapısı ve sütun ayarları gibi bölüm biçimlendirmesi hakkındaki bilgileri bölüm sonunda saklar.

Bu makalede, bölümler ve bölüm sonları ile nasıl çalışılacağı açıklanmaktadır.

## Bölüm ve Bölüm Sonu Nedir

Belge bölümleri [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) ve [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) sınıfları tarafından temsil edilir. Section nesneleri [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) düğümünün hemen alt öğeleridir ve [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) özelliği aracılığıyla erişilebilir. Bu düğümleri aşağıdaki gibi bazı yöntemler kullanarak yönetebilirsiniz [Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), ve diğerleri.

Bölüm sonu, belge sayfalarını özelleştirilebilir düzenlere sahip bölümlere ayıran bir seçenektir.

## Bölüm Sonu Türleri

Aspose.Words [BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/) numaralandırmasının farklı bölüm sonlarını kullanarak belgeleri bölmenize ve biçimlendirmenize olanak tanır:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/) numaralandırmasını yalnızca aşağıdaki gibi ilk bölüm için geçerli olan bir kesme türü seçmek için de kullanabilirsiniz NewColumn, NewPage, EvenPage, ve OddPage.

## Bir Bölümü Yönetme

Bir bölüm normal bir bileşik düğüm olduğundan, tüm düğüm manipülasyonu API bölümleri işlemek için kullanılabilir: bölümler üzerinde ekleme, kaldırma ve diğer işlemler. Düğümler hakkında daha fazla bilgiyi makalede okuyabilirsiniz [Aspose.Words Belge Nesne Modeli (DOM)](/words/cpp/aspose-words-document-object-model/).

Öte yandan, bölümlerle çalışmak için `DocumentBuilder` API 'i de kullanabilirsiniz. Bu yazıda, bölümlerle çalışmanın bu özel yoluna odaklanacağız.

## Bölüm Sonu Ekleme veya Kaldırma

Aspose.Words [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/) yöntemini kullanarak metne bir bölüm sonu eklemenizi sağlar.

Aşağıdaki kod örneği, bir belgeye bölüm sonu nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

Bölüm sonunu silmek için [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/) yöntemini kullanın. Belirli bir bölüm sonunu kaldırmanız ve bunun yerine o bölümün içeriğini silmeniz gerekmiyorsa [ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, bölüm sonlarının nasıl kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

Bölüm sonunun, kendisinden sonra gelen bölüm hakkında değil, kendisinden önceki bölüm hakkında bilgi içerdiğini unutmayın. Bu nedenle, bir bölüm sonunu kaldırırsanız, kaldırılan aradan önceki metin, onu takip eden bölüm sonunun özelliklerini alır. Bu, belgenin tamamının yatay olmasına veya üstbilgi ve altbilgilerin değişmesine veya tamamen kaybolmasına neden olabilir.

{{% /alert %}}

## Bir Bölümü Taşıma

Belgenizdeki bir bölümü bir konumdan diğerine taşımak istiyorsanız, o bölümün dizinini almanız gerekir. Aspose.Words, [SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/) 'den bir bölüm pozisyonu almanızı sağlar. Belgenizdeki tüm bölümleri almak için [Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/) özelliğini kullanabilirsiniz. Ancak yalnızca ilk bölümü almak istiyorsanız [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) özelliğini kullanabilirsiniz.

Aşağıdaki kod örneği, ilk bölüme nasıl erişileceğini ve bileşik düğümün alt öğelerinde nasıl yineleneceğini gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## Bir Bölüm Düzeni Belirtin

Bazen farklı belge bölümleri için yaratıcı düzenler oluşturarak belgenizin daha iyi görünmesini istersiniz. Geçerli bölüm kılavuzunun türünü belirtmek isterseniz, [SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/) numaralandırmasını kullanarak bir bölüm düzeni modu seçebilirsiniz:

- Varsayılan
- Izgara
- LineGrid
- SnapToChars

Aşağıdaki kod örneği, her sayfanın sahip olabileceği satır sayısını nasıl sınırlayacağınızı gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## Bir Bölümü Düzenleme

Belgenize yeni bir bölüm eklediğinizde, düzenleyebileceğiniz bir gövde veya paragraf olmayacaktır. Aspose.Words, bir bölümün [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/) yöntemini kullanarak en az bir paragraf içeren bir gövde içerdiğini garanti etmenizi sağlar – belgeye otomatik olarak bir Gövde (veya HeaderFooter) düğümü ekler ve ardından ona bir Paragraf ekler.

Aşağıdaki kod örneği, **EnsureMinimum** kullanarak yeni bir bölüm düğümünün nasıl hazırlanacağını gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### İçerik Ekleme veya Ekleme

Bir bölümün başına / sonuna bir şekil çizmek veya metin veya resim eklemek istiyorsanız, [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) sınıfının [AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/) ve [PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/) yöntemlerini kullanabilirsiniz.

Aşağıdaki kod örneği, varolan bir bölümün içeriğinin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### Bir Bölümü Klonla

Aspose.Words, [Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/) yöntemini kullanarak bir bölümün tam bir kopyasını oluşturarak bir bölümü çoğaltmanıza olanak tanır.

Aşağıdaki kod örneği, belgenizdeki ilk bölümün nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### Belgeler arasında Bölümleri Kopyalama

Bazı durumlarda, çok sayıda bölümü olan büyük belgeleriniz olabilir ve bir bölümün içeriğini bir belgeden diğerine kopyalamak isteyebilirsiniz.

Aspose.Words, [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/) yöntemini kullanarak belgeler arasındaki bölümleri kopyalamanıza izin verir.

Aşağıdaki kod örneği, belgeler arasında bölümlerin nasıl kopyalanacağını gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### Bölüm Üstbilgisi ve Altbilgisi ile çalışın

Her bölüm için bir üstbilgi veya altbilgi görüntülemenin temel kuralları oldukça basittir:

1. Bölümün belirli bir türde kendi üstbilgileri / altbilgileri yoksa, önceki bölümden alınır.
2. Sayfada görüntülenen üstbilgi / altbilgi türü, "Farklı İlk Sayfa" ve "Farklı Tek ve Çift sayfalar" bölüm ayarları tarafından kontrol edilir – devre dışı bırakılırlarsa bölümün kendi başlıkları yok sayılır.

Aşağıdaki kod örneği, farklı başlıklara sahip 2 bölümlerin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

Belgenizdeki [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) nesneleri kaldırmadan üstbilgi ve altbilgi metnini kaldırmak istiyorsanız, [ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/) yöntemini kullanabilirsiniz. Ayrıca, belgenizdeki üstbilgi ve altbilgilerdeki tüm şekilleri kaldırmak için [DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, bir bölümdeki tüm üstbilgi ve altbilgilerin içeriğinin nasıl temizleneceğini gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

Aşağıdaki kod örneği, bir bölümdeki tüm üstbilgi altbilgilerinden tüm şekillerin nasıl kaldırılacağı:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## Bir Bölümdeki Sayfa Özelliklerini Özelleştirme

Bir sayfayı veya belgeyi yazdırmadan önce, tek bir sayfanın veya belgenin tamamının boyutunu ve düzenini özelleştirmek ve değiştirmek isteyebilirsiniz. Sayfa yapısı ile, farklı ilk sayfaları veya tek sayfaları yazdırmak için kenar boşlukları, yönlendirme ve boyut gibi belge sayfalarının ayarlarını değiştirebilirsiniz.

Aspose.Words, [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) sınıfını kullanarak sayfa ve bölüm özelliklerini özelleştirmenize olanak tanır.

Aşağıdaki kod örneği, geçerli bölüm için sayfa boyutu ve yönlendirme gibi özelliklerin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

Aşağıdaki kod örneği, tüm bölümlerdeki sayfa özelliklerinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## Ayrıca bakınız

- [Bir Belgedeki Düğümlerin Mantıksal Düzeyleri](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [Belge Ekleme ve Ekleme](/words/cpp/insert-and-append-documents/)