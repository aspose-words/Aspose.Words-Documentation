---
title: Layout Seçeneklerini Java'da Belirtin
second_title: Aspose.Words için Java
articleTitle: Düzen Seçeneklerini Belirt
linktitle: Düzen Seçeneklerini Belirt
description: "Farklı düzenlere sahip çıktı belgelerini oluşturmak için, belge içinde belirtilen parametrelere göre Java'i kullanın."
type: docs
weight: 10
url: /tr/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words sizin çeşitli düzenlere sahip çıktı belgeler oluşturmanıza olanak tanır, **Document** özelliğinin [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)'inde belirtilen parametrelere bağlı olarak. Bu özellik bu makalede açıklanan bazı Microsoft Word kullanıcı arayüzü menü seçeneklerine benzer.

Sayfa numaralarının kesintisiz bir bölümde sayfa numaralandırmasını yeniden başlatarak hesaplanması için parametrelerin tam listesi gibi [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) ya da "Baskıya uygun olarak belgenin düzenlenmesi" uyumluluk seçeneğini yoksaymak için [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) görmek için sınıf sayfasını [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Biçimlendirme İşaretleri

Aspose.Words biçimlendirme işaretlerini yönetmek için aşağıdaki özellikleri kullanmaya izin verir:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – bir `Boolean` değeri, gizli metnin gösterilip gösterilmeyeceğini belirler.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – bir `Boolean` değeri, paragraf işaretleri karakterlerin gösterilip gösterilmeyeceğini belirtir.

Aşağıdaki örnekte tasvir edilen sayfa üç paragraf içermektedir. İkinci tane saklı. Kullanıcı bu gizli metni sayfada görüntülemek için **ShowHiddenText** seçeneğini değiştirebilir. Ayrıca her paragrafın sonunda bir paragraf imlası vardır. Paragraf işareti genellikle **ShowParagraphMarks** özelliği ayarlanmadıkça görünür değildir.

![formatting_marks_example_aspose_words_java](specify-layout-options-1.png)

Bu parametreler, Microsoft Word 'de şu şekilde "Dosya → Seçenekler → Görüntüleme" iletişim kutusu kullanılarak ayarlanır":

![formatting_marks_ms_word_aspose_words_java](specify-layout-options-3.png)

## Yorumlar ve Revizyonlar

Aspose.Words ile, Microsoft Word'de olduğu gibi görünen belge yorumlarını oluşturabilirsiniz. Yorumların ne zaman gösterileceğini belirtmek için [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) özelliğini kullanın.

Bu parametre, aşağıda gösterildiği gibi "Değişiklik İzleme Seçenekleri" iletişim kutusu kullanılarak Microsoft Word içinde ayarlanır

![comments_and_revisions_ms_word_aspose_words_java](specify-layout-options-4.png)

Ayrıca, Aspose.Words bir belge içinde revizyonları görüntülemenizi sağlar. Belge revizyonlarının görüntülenip görüntülenmeyeceğini belirtmek için [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) özelliğini **LayoutOptions** sınıfında kullanın. Görünümlerini kontrol etmek için (yeni rev vurgulama rengi, yeni rev çubuk rengi vb.), [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) sınıfını kullanın.

İçeriğe yorum olarak revizyonları da gösterebilirsin. Bu amaçla, [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) özelliğini ve [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) değerini kullanın.

Aşağıdaki kod örneği revizyonların nasıl özelleştirileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

Aşağıdaki görüntü, Aspose.Words'in yorumları nasıl işlediğini ve revizyonları nasıl sildiğini gösterir:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Gelişmiş Yazı Tipi Çizimi için Metin Şekillendirici

Sertifika [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) özelliği, metin şekillendirme işlevselliğini ayarlamanızı sağlar, ayrıca `OpenType` özellikler desteği.

Aşağıdaki başlıca durumlarda belge işleme için metin şekillendirme kullanın":

- Bir belge Kerning, Sayı Biçimlendirme, Sayı Formları veya Ligature kullanır.
- Bir belge, Arapça gibi karmaşık betikler kullanır, Khmer, Tayland vb.

{{% alert color="primary" %}}

Metin şekillendirme yalnızca bir belgeyi PDF olarak dışa aktardığında XPS etkinleştirilecektir.

{{% /alert %}}
