---
title: Belge Ekleme ve Ekleme
second_title: Python via .NET için Aspose.Words
articleTitle: Belge Ekleme ve Ekleme
linktitle: Belge Ekleme ve Ekleme
description: "Belgeleri tek bir belgede birleştirin: Bul ve değiştir, alanı birleştir, yer imini kullanarak veya yalnızca Python'teki belgenin sonunu kullanarak bir belgeyi yeni veya mevcut bir belgeye ekleyin veya ekleyin."
type: docs
weight: 80
url: /tr/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Bazen birden fazla belgenin tek bir belgede birleştirilmesi gerekebilir. Bunu manuel olarak yapabileceğiniz gibi Aspose.Words ekleme veya ekleme özelliğini de kullanabilirsiniz.

Ekleme işlemi, önceden oluşturulmuş belgelerin içeriğini yeni veya mevcut bir belgeye eklemenizi sağlar.

Buna karşılık, ekleme özelliği bir belgeyi yalnızca başka bir belgenin sonuna eklemenize olanak tanır.

Bu makalede, bir belgenin diğerine farklı yollarla nasıl ekleneceği veya ekleneceği açıklanmakta ve belge eklerken veya eklerken uygulayabileceğiniz ortak özellikler açıklanmaktadır.

## Belge Ekle

Yukarıda belirtildiği gibi, Aspose.Words'te bir belge bir düğüm ağacı olarak temsil edilir ve bir belgeyi diğerine ekleme işlemi, düğümlerin birinci belge ağacından ikincisine kopyalanmasıdır.

Belgeleri çeşitli konumlara farklı şekillerde ekleyebilirsiniz. Örneğin, bir belgeyi değiştirme işlemi aracılığıyla, birleştirme işlemi sırasında birleştirme alanı yoluyla veya yer işareti aracılığıyla ekleyebilirsiniz.

Ayrıca, Microsoft Word'e belge eklemeye benzer olan [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) veya [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) yöntemini de, daha önce herhangi bir içe aktarma işlemi yapmadan belgenin tamamını geçerli imleç konumuna eklemek için kullanabilirsiniz.

Aşağıdaki kod örneği, **insert_document** yöntemini kullanarak belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Aşağıdaki kod örneği, **insert_document_inline** yöntemini kullanarak belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Aşağıdaki alt bölümlerde bir belgeyi diğerine ekleyebileceğiniz seçenekler açıklanmaktadır.

### Yer İşaretine Bir Belge Ekleme

Bir metin dosyasını bir belgeye aktarabilir ve belgede tanımladığınız yer işaretinin hemen sonrasına ekleyebilirsiniz. Bunu yapmak için belgenin eklenmesini istediğiniz yere yer imli bir paragraf oluşturun.

Aşağıdaki kodlama örneği, bir belgenin içeriğinin başka bir belgedeki yer imine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Yer iminin, nihai belgenizde görünmesini istediğiniz birden fazla paragrafı veya metni içermemesi gerektiğini unutmayın.

{{% /alert %}}

## Belge Ekle

Bir belgeden mevcut bir belgenin sonuna kadar ek sayfalar eklemenizi gerektiren bir kullanım durumunuz olabilir. Bunu yapmak için, bir belgeyi diğerinin sonuna eklemek için [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) yöntemini çağırmanız yeterlidir.

{{% alert color="primary" %}}

[append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/)'in bir belge içindeki düğüm düzeyinde bir yöntem olduğunu unutmayın. Örneğin, bir paragraf oluşturabilir, biçimlendirme özelliklerini ayarlayabilir ve ardından [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) yöntemini kullanarak bunu alt öğe olarak gövdeye ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin başka bir belgenin sonuna nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Düğümleri Manuel Olarak İçe Aktarma ve Ekleme

Aspose.Words, önceden herhangi bir içe aktarma gereksinimi olmadan belgeleri otomatik olarak eklemenize ve eklemenize olanak tanır. Ancak belgenize bölüm veya paragraf gibi belirli bir düğüm eklemeniz veya eklemeniz gerekiyorsa, önce bu düğümü manuel olarak içe aktarmanız gerekir.

Bir bölümü veya paragrafı diğerine eklemeniz veya eklemeniz gerektiğinde, esasen ilk belge düğüm ağacının düğümlerini [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/) yöntemini kullanarak ikinciye aktarmanız gerekir. Düğümlerinizi içe aktardıktan sonra, referans düğümün arkasına/öncesine yeni bir düğüm eklemek için [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) yöntemini kullanmanız gerekir. Bu, bir belgeden düğümleri içe aktarıp belirli konumlara ekleyerek ekleme işlemini özelleştirmenize olanak tanır.

Örneğin, içeriği bölüm düzeyi yerine paragraf düzeyinde eklemek istiyorsanız, alt düğümler listesinin sonuna yeni bir belirtilen düğüm eklemek için [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) yöntemini de kullanabilirsiniz.

Aşağıdaki kod örneği, düğümlerin manuel olarak nasıl içe aktarılacağını ve bunların [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/) yöntemini kullanarak belirli bir düğümden sonra nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

İçe aktarma, orijinal düğümün kopyası olan ve hedef belgeye eklenmeye uygun yeni bir düğüm oluşturur.

{{% /alert %}}

İçerik, hedef belgeye bölüm bölüm içe aktarılır; bu, sayfa düzeni ve üstbilgiler veya altbilgiler gibi ayarların içe aktarma sırasında korunduğu anlamına gelir. İki belgenin nasıl bir araya getirileceğini belirlemek için bir belge eklediğinizde veya eklerken biçimlendirme ayarlarını tanımlayabileceğinizi de unutmamakta fayda var.

## Belge Eklemek ve Eklemek için Ortak Özellikler

Hem [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) hem de [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) yöntemleri, giriş parametreleri olarak [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) ve [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/)'i kabul eder. [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/), [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) ve [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles) gibi farklı format modlarını seçerek bir belgeden diğerine içerik aktardığınızda belge formatının nasıl birleştirileceğini kontrol etmenize olanak tanır. [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/), [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) ve [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/) gibi farklı içe aktarma seçeneklerini seçmenize olanak tanır.

Aspose.Words, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ve [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) kullanılarak bir ekleme veya ekleme işleminde iki belge birbirine eklendiğinde ortaya çıkan belgenin görselleştirmesini ayarlamanıza olanak tanır. [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) özelliği bir bölümün [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) ve diğerleri gibi tüm niteliklerini içerir. En yaygın kullanım durumu, eklenen içeriğin aynı sayfada mı görüneceğini yoksa yeni bir sayfaya mı bölüneceğini tanımlamak için [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) özelliğini ayarlamaktır.

{{% alert color="primary" %}}

[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ve [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/)'nin iki belgenin birbirine nasıl eklendiğini/eklendiğini kontrol etmediğini unutmayın. Yalnızca sonuç belgenizin görünümünü değiştirmenize izin verirler.

{{% /alert %}}

Aşağıdaki kod örneği, içeriğin iki sayfaya bölünmesini önlerken bir belgenin diğerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
