---
title: C#'e Belge Ekleme ve Ekleme
second_title: .NET için Aspose.Words
articleTitle: Belge Ekleme ve Ekleme
linktitle: Belge Ekleme ve Ekleme
description: "Belgeleri tek bir belgede birleştirin: Bul ve değiştir, alanı birleştir, yer imini kullanarak veya yalnızca C#'teki belgenin sonunu kullanarak bir belgeyi yeni veya mevcut bir belgeye ekleyin veya ekleyin."
type: docs
weight: 80
url: /tr/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Bazen birden fazla belgenin tek bir belgede birleştirilmesi gerekebilir. Bunu manuel olarak yapabileceğiniz gibi Aspose.Words ekleme veya ekleme özelliğini de kullanabilirsiniz.

Ekleme işlemi, önceden oluşturulmuş belgelerin içeriğini yeni veya mevcut bir belgeye eklemenizi sağlar.

Buna karşılık, ekleme özelliği bir belgeyi yalnızca başka bir belgenin sonuna eklemenize olanak tanır.

Bu makalede, bir belgenin diğerine farklı yollarla nasıl ekleneceği veya ekleneceği açıklanmakta ve belge eklerken veya eklerken uygulayabileceğiniz ortak özellikler açıklanmaktadır.

## Belge {#insert-a-document} Ekle

Yukarıda belirtildiği gibi, Aspose.Words'te bir belge bir düğüm ağacı olarak temsil edilir ve bir belgeyi diğerine ekleme işlemi, düğümlerin birinci belge ağacından ikincisine kopyalanmasıdır.

Belgeleri çeşitli konumlara farklı şekillerde ekleyebilirsiniz. Örneğin, bir belgeyi değiştirme işlemi yoluyla, birleştirme işlemi sırasında birleştirme alanıyla veya yer işaretiyle ekleyebilirsiniz.

Ayrıca, Microsoft Word'e belge eklemeye benzer olan [InsertDocument](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) veya [InsertDocumentInline](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertdocumentinline/) yöntemini de, daha önce herhangi bir içe aktarma işlemi yapmadan belgenin tamamını geçerli imleç konumuna eklemek için kullanabilirsiniz.

Aşağıdaki kod örneği, **InsertDocument** yöntemini kullanarak belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

Aşağıdaki kod örneği, **InsertDocumentInline** yöntemini kullanarak belgenin nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Aşağıdaki alt bölümlerde bir belgeyi diğerine ekleyebileceğiniz seçenekler açıklanmaktadır.

### Bul ve Değiştir İşlemi Sırasında Belge Ekleme {#insert-a-document-during-find-and-replace-operation}

Bul ve değiştir işlemlerini gerçekleştirirken belge ekleyebilirsiniz. Örneğin, bir belge [GİRİŞ] ve [SONUÇ] metnini içeren paragraflar içerebilir. Ancak son belgede bu paragrafları başka bir harici belgeden alınan içerikle değiştirmeniz gerekir. Bunu başarmak için, değiştirme olayı için bir işleyici oluşturmanız gerekecektir.

Aşağıdaki kod örneği, değiştirme olayının daha sonra ekleme işleminde kullanılması için bir işleyicinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

Aşağıdaki kod örneği, bul ve değiştir işlemi sırasında bir belgenin içeriğinin diğerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Mail Merge İşlemi Sırasında Belge Ekleme {#insert-a-document-during-mail-merge-operation}

mail merge işlemi sırasında birleştirme alanına belge ekleyebilirsiniz. Örneğin, bir mail merge şablonu [Özet] gibi bir birleştirme alanı içerebilir. Ancak son belgede, başka bir harici belgeden elde edilen içeriği bu birleştirme alanına eklemeniz gerekir. Bunu başarmak için birleştirme olayı için bir işleyici oluşturmanız gerekecektir.

Aşağıdaki kod örneği, birleştirme olayının daha sonra ekleme işleminde kullanması için bir işleyicinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

Aşağıdaki kod örneği, oluşturulan işleyiciyi kullanarak birleştirme alanına nasıl belge ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### {#insert-a-document-at-bookmark} Yer İşaretine Bir Belge Ekleme

Bir metin dosyasını bir belgeye aktarabilir ve belgede tanımladığınız yer işaretinin hemen sonrasına ekleyebilirsiniz. Bunu yapmak için belgenin eklenmesini istediğiniz yere yer imli bir paragraf oluşturun.

Aşağıdaki kodlama örneği, bir belgenin içeriğinin başka bir belgedeki yer imine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Yer iminin, nihai belgenizde görünmesini istediğiniz birden fazla paragrafı veya metni içermemesi gerektiğini unutmayın.

{{% /alert %}}

## Bir Belge {#append-a-document} Ekleme

Bir belgeden mevcut bir belgenin sonuna kadar ek sayfalar eklemenizi gerektiren bir kullanım durumunuz olabilir. Bunu yapmak için, bir belgeyi diğerinin sonuna eklemek için [AppendDocument](https://reference.aspose.com/words/tr/net/aspose.words/document/appenddocument/) yöntemini çağırmanız yeterlidir.

{{% alert color="primary" %}}

[AppendChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/appendchild/)'in bir belge içindeki düğüm düzeyinde bir yöntem olduğunu unutmayın. Örneğin, bir paragraf oluşturabilir, biçimlendirme özelliklerini ayarlayabilir ve ardından **AppendChild** yöntemini kullanarak onu alt öğe olarak gövdeye ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgenin başka bir belgenin sonuna nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Düğümleri Manuel Olarak İçe Aktarma ve Ekleme {#import-and-insert-nodes-manually}

Aspose.Words, önceden herhangi bir içe aktarma gereksinimi olmadan belgeleri otomatik olarak eklemenize ve eklemenize olanak tanır. Ancak belgenize bölüm veya paragraf gibi belirli bir düğüm eklemeniz veya eklemeniz gerekiyorsa, önce bu düğümü manuel olarak içe aktarmanız gerekir.

Bir bölümü veya paragrafı diğerine eklemeniz veya eklemeniz gerektiğinde, esasen ilk belge düğüm ağacının düğümlerini [ImportNode](https://reference.aspose.com/words/tr/net/aspose.words/nodeimporter/importnode/) yöntemini kullanarak ikinciye aktarmanız gerekir. Düğümlerinizi içe aktardıktan sonra, referans düğümün arkasına/öncesine yeni bir düğüm eklemek için [InsertAfter](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/insertbefore/) yöntemini kullanmanız gerekir. Bu, bir belgeden düğümleri içe aktarıp belirli konumlara ekleyerek ekleme işlemini özelleştirmenize olanak tanır.

Örneğin, içeriği bölüm düzeyi yerine paragraf düzeyinde eklemek istiyorsanız, alt düğümler listesinin sonuna yeni bir belirtilen düğüm eklemek için [AppendChild](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/appendchild/) yöntemini de kullanabilirsiniz.

Aşağıdaki kod örneği, düğümlerin manuel olarak nasıl içe aktarılacağını ve bunların **InsertAfter** yöntemini kullanarak belirli bir düğümden sonra nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

İçe aktarma, orijinal düğümün kopyası olan ve hedef belgeye eklenmeye uygun yeni bir düğüm oluşturur.

{{% /alert %}}

İçerik, hedef belgeye bölüm bölüm içe aktarılır; bu, sayfa düzeni ve üstbilgiler veya altbilgiler gibi ayarların içe aktarma sırasında korunduğu anlamına gelir. İki belgenin nasıl bir araya getirileceğini belirlemek için bir belge eklediğinizde veya eklerken biçimlendirme ayarlarını tanımlayabileceğinizi de unutmamakta fayda var.

## Belge Eklemek ve Eklemek için Ortak Özellikler {#common-properties-for-insert-and-append-documents}

Hem [InsertDocument](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertdocument/) hem de [AppendDocument](https://reference.aspose.com/words/tr/net/aspose.words/document/appenddocument/) yöntemleri, giriş parametreleri olarak [ImportFormatMode](https://reference.aspose.com/words/tr/net/aspose.words/importformatmode/) ve [ImportFormatOptions](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/)'i kabul eder. **ImportFormatMode**, [UseDestinationStyles](https://reference.aspose.com/words/tr/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/tr/net/aspose.words/importformatmode/) ve [KeepDifferentStyles](https://reference.aspose.com/words/tr/net/aspose.words/importformatmode/) gibi farklı format modlarını seçerek bir belgeden diğerine içerik aktardığınızda belge formatının nasıl birleştirileceğini kontrol etmenize olanak tanır. **ImportFormatOptions**, [IgnoreHeaderFooter](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/mergepastedlists/) ve [SmartStyleBehavior](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/smartstylebehavior/) gibi farklı içe aktarma seçeneklerini seçmenize olanak tanır.

Aspose.Words, [Section](https://reference.aspose.com/words/tr/net/aspose.words/section/) ve [PageSetup](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/pagesetup/) özelliklerini kullanarak bir ekleme veya ekleme işleminde iki belge birbirine eklendiğinde ortaya çıkan belgenin görselleştirmesini ayarlamanıza olanak tanır. **PageSetup** özelliği bir bölümün [SectionStart](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/orientation/) ve diğerleri gibi tüm niteliklerini içerir. En yaygın kullanım durumu, eklenen içeriğin aynı sayfada mı görüneceğini yoksa yeni bir sayfaya mı bölüneceğini tanımlamak için **SectionStart** özelliğini ayarlamaktır.

{{% alert color="primary" %}}

**Section** ve **PageSetup** özelliklerinin iki belgenin birbirine nasıl eklendiğini/eklendiğini denetlemediğini unutmayın. Yalnızca sonuç belgenizin görünümünü değiştirmenize izin verirler.

{{% /alert %}}

Aşağıdaki kod örneği, içeriğin iki sayfaya bölünmesini önlerken bir belgenin diğerine nasıl ekleneceğini gösterir:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
