---
title: Insert ve Append belgeleri Java
second_title: Aspose.Words için Java
articleTitle: Ekle ve Ekle Belgeleri
linktitle: Ekle ve Ekle Belgeleri
description: "Birleştir belgeler bir tanesine: yeni veya mevcut bir belgeye belge eklemek veya eklemek için bul ve değiştir, birleştir alan, yer imi, ya da basitçe Java bitişinde belge sonuna bir belge ekleyin."
type: docs
weight: 80
url: /tr/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Bazen birkaç belgeyi tek bir belgeden birleştirmeniz gerekir. Bunu elle yapabilir ya da Aspose.Words ekle veya ilave et özelliğini kullanabilirsiniz.

Ekle işlemi, daha önce oluşturulan belgelerden yeni veya mevcut bir belgeye içeriği eklemenizi sağlar.

Sonra ekleme özelliği başka bir belgeyi yalnızca başka bir belgenin sonuna eklemenize izin verir.

Bu makale, farklı yollarla bir belgeyi başka bir belgeye nasıl ekleyeceğinizi veya ekleyebileceğinizi açıklar ve eklerken ya da eklerken uygulayabileceğiniz yaygın özellikleri tanımlar.

## Bir belge ekleyin

Yukarıda belirtildiği gibi, Aspose.Words 'de bir belge düğümlerin bir ağacı olarak temsil edilir ve bir belgenin diğerine eklenmesi ilk belgedeki düğümleri ikinci belgeye kopyalamak demektir.

Farklı konumlara çeşitli şekillerde belgeleri ekleyebilirsiniz. Örneğin bir belgeyi, bir birleştirme işlemi sırasında bir birleştirme alanı aracılığıyla veya bir yer işareti aracılığıyla ekleyebilirsiniz.

Bunun yerine belgenin bir kısmını veya tamamını almak için [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) veya [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) yöntemini, benzer şekilde bir belgeyi Microsoft Word'ye ekleyerek geçerli fare konumuna eklemek, daha önceki herhangi bir içeri aktarma olmadan kullanılabilir.

Aşağıdaki kod örneği, **InsertDocument** yöntemini kullanarak bir belge nasıl ekleyileceğini göstermektedir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

Aşağıdaki kod örneği, bir belgeyi **InsertDocumentInline** yöntemiyle nasıl ekleyeceğini gösterir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Aşağıdaki alt bölümler, bir belgenin diğerine yerleştirilebileceği seçenekleri açıklar.

### Bul ve Değiştir İşlemi Sırasında Bir Belge Ekle {#insert-a-document-during-find-and-replace-operation}

Bul ve değiştir işlemlerini gerçekleştirirken belgeler ekleyebilirsiniz. Örneğin, bir belge [GİRİŞ] metni ve [SONUÇ] paragrafı içerebilir. Ama nihai belgede, başka bir harici belgeden elde edilen içeriği kullanarak bu paragrafları değiştirmelisiniz. Bunu başarmak için, değiştirme olayı için bir işleyici oluşturmanız gerekir.

Aşağıdaki kod örneği, daha sonra ekleme sürecinde kullanılmak üzere değiştirme olayı için bir işleyici oluşturmayı gösterir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

Aşağıdaki kod örneği, bir bul ve değiştir işlemi sırasında bir belgeden başka bir belgeye içeriği nasıl ekleyeceğinizi gösterir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Bir Dokümanı Mail Merge Operasyonu Sırasında Ekle {#insert-a-document-during-mail-merge-operation}

Bir mail merge işlemi sırasında bir belgeyi bir birleştirme alanına ekleyebilirsiniz. Örneğin, bir mail merge şablonu [Özet] gibi bir birleştirme alanı içerebilir. Fakat son belgede, başka bir harici belgeyle elde edilen içeriği bu birleştirme alanına eklemeniz gerekir. Bunu yapmak için birleştirme olayına bir işleyici oluşturmanız gerekecek.

Aşağıdaki kod örneği, ekleme sürecinde daha sonra kullanılmak üzere birleştirme olayı için bir işleyicinin nasıl oluşturulacağını göstermektedir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

Aşağıdaki kod örneği, oluşturulan bir işleyicinin kullanılması ile bir belgeyi birleştirme alanına nasıl ekleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Kitap İşareti Olarak Bir Belge Ekle

Bir belgeye metin dosyası aktarabilirsiniz ve bunu bir belgenin içinde tanımladığınız bir işaretçinin hemen sonrasında ekleyebilirsiniz. Bunu yapmak için, eklemek istediğiniz yerde bir işaretlenmiş paragraf oluşturun.

Aşağıdaki kod örneği, bir belgedeki içeriği başka bir belgeye eklemek için nasıl kullanılabileceğini göstermektedir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Notunuzu, son ürününüzde görünmesini istediğiniz birden fazla paragraf veya metin içermemelidir.

{{% /alert %}}

## Bir Doküman Ekle

Bir kullanım durumunuz olabilir ve ekstra sayfaları bir belgeden mevcut bir belgeye dahil etmek isteyebilirsiniz. Bunu yapmak için sadece bir belgeyi diğerinin sonuna eklemek için [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) yöntemini çağırmanız yeterlidir.

{{% alert color="primary" %}}

Bir belge içinde bir düğüm seviyesi yöntemi olan [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node)'e dikkat edin. Örneğin, bir paragraf oluşturabilir, biçimlendirme özelliklerini ayarlayabilir ve ardından bunu **AppendChild** yöntemini kullanarak gövdeye bir alt öğe olarak ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, bir belgeyi başka bir belgenin sonuna eklemeyi gösterir:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Düğümleri El ile İçe Aktar ve Ekle {#import-and-insert-nodes-manually}

Aspose.Words belgeleri otomatik olarak eklemenizi veya eklemenize izin verir herhangi bir ön dışa aktarma gereksinimi olmadan. Bununla birlikte, belirli bir belge düğümünü (örneğin bir bölüm veya paragraf) eklemeniz veya eklemeniz gerekiyorsa önce bu düğümü manuel olarak dışa aktarmanız gerekir.

Bir bölümü veya paragrafı başka birine eklemeniz gerektiğinde, bu işlem için esas olarak ilk belge düğüm ağacındaki düğümleri ikinci birine [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) yöntemiyle aktarmak zorundasınız. Düğümlerinizi aktardıktan sonra yeni bir düğümü referans düğümden önceki/sonraki konumlara eklemek için [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) yöntemini kullanmanız gerekir. Bu, verilen konumlara başka bir belgeden düğümleri aktarıp ekleyerek ekleme işlemini özelleştirmenizi sağlar.

Ayrıca, alt düğümlerin listenin sonuna yeni belirtilen bir düğümü eklemek için [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) yöntemini kullanabilirsiniz, örneğin paragraf düzeyinde yerine bölüm düzeyinde içeriği eklemek istiyorsanız.

Aşağıdaki kod örneğinde, belirli bir düğümden sonra düğümler el ile nasıl içe aktarılacağını ve ekleneceğini gösterir." **InsertAfter** "yöntemi kullanılarak:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

İçe aktarma, orijinal düğümün bir kopyası olan yeni bir düğüm oluşturur ve bu da hedef belgeye eklemek için uygundur.

{{% /alert %}}

İçerik hedef belge bölümüne bölümlere bölünecek şekilde içeri aktarılır ve bu da sayfa düzeni gibi ayarlar dahil olmak üzere içeri aktarma sırasında ayarların korunması anlamına gelir. Ayrıca, iki belgeyi nasıl birleştireceğinizi belirtmek için ekleme veya ekleme yaparken biçimlendirme ayarlarını tanımlamanızın yararlı olduğunu da unutmayın.

## Ekle ve Dokümanları Ekle" için ortak özellikler {#common-properties-for-insert-and-append-documents}

Her iki [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ve [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) yöntemleri [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) ve [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) giriş parametrelerini kabul eder. **ImportFormatMode** farklı format modlarını seçerek bir belgeye başka bir belgeden içeri aktarma işleminde belge biçimlendirmesinin nasıl birleştirileceğini kontrol etmenizi sağlar; örneğin, [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING) ve [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). **ImportFormatOptions** farklı içeri aktarma seçenekleri seçmenize olanak tanır; örneğin, [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists) ve [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words ekleme veya ekleme işlemi sırasında iki belge birleştirildiğinde bir sonuç belgesinin görünümünü ayarlamanızı sağlar. [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) ve [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) özellikleri, **PageSetup** özelliğinin tüm öznitelikleri içerir; örneğin [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation) ve diğerleri. En yaygın kullanım durumu, eklenen içeriğin aynı sayfada mı yoksa yeni bir sayfaya mı ayrılacağını belirlemek için **SectionStart** özelliğini ayarlamaktır.

{{% alert color="primary" %}}

Not edin ki, **Section** ve **PageSetup** özellikleri iki belgeyi bir araya getirme/eşitleme yöntemi üzerinde kontrol etmez. Sadece sonuç belgenizin görünümünü değiştirmenize izin verirler.

{{% /alert %}}

Aşağıdaki kod örneği, iki sayfada bölünecek içeriği koruyarak bir belgeden diğerine ekleme gösteriyor:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
