---
title: C#'te Düzen Seçeneklerini Belirleyin
second_title: .NET için Aspose.Words
articleTitle: Düzen Seçeneklerini Belirleyin
linktitle: Düzen Seçeneklerini Belirleyin
description: "C#'i kullanarak çeşitli belge düzenleri için Düzen Seçeneklerini belirtin."
type: docs
weight: 10
url: /tr/net/specify-layout-options/
---

Aspose.Words, [LayoutOptions](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/) sınıfının özelliklerinde belirtilen parametrelere bağlı olarak çeşitli düzenlerde çıktı belgeleri oluşturmanıza olanak sağlar. Bu özelliklerin bazıları Microsoft Word kullanıcı arayüzü menü seçeneklerinin bazılarına benzemektedir; bunlar bu makalede açıklanacaktır.

Sayfa numaralandırmayı yeniden başlatan sürekli bir bölümdeki sayfa numaralarını hesaplamak için [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) veya "Belgeyi düzenlemek için yazıcı ölçümlerini kullan" uyumluluk seçeneğini yok saymak için [IgnorePrinterMetrics](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) gibi parametrelerin tam listesi için [LayoutOptions](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/) sınıfı sayfasına bakın.

## Biçimlendirme İşaretleri

Aspose.Words, aşağıdaki özellikleri kullanarak biçimlendirme işaretlerini yönetmeye olanak tanır:

- [ShowHiddenText](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/showhiddentext/) – gizli metnin oluşturulup oluşturulmayacağını belirten bir `Boolean` değeri.
- [ShowParagraphMarks](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – paragraf işareti karakterlerinin oluşturulup oluşturulmayacağını belirten bir `Boolean` değeri.

Aşağıdaki örnekte gösterilen sayfa üç paragraf içermektedir. İkincisi gizlidir. Kullanıcı bu gizli metni sayfada görüntülemek için **ShowHiddenText** seçeneğini değiştirebilir. Ayrıca her paragrafın sonunda bir paragraf işareti bulunur. **ShowParagraphMarks** özelliği onu oluşturacak şekilde ayarlanmadığı sürece paragraf işareti genellikle görünmez.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word'te bu parametreler "Dosya → Seçenekler → Görüntüle" iletişim kutusu kullanılarak aşağıdaki gibi ayarlanır:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Yorumlar ve Düzeltmeler

Aspose.Words ile, Microsoft Word'dekiyle aynı görünecek belge yorumlarını oluşturabilirsiniz. Yorumların oluşturulup oluşturulmayacağını belirtmek için [CommentDisplayMode](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/commentdisplaymode/) özelliğini kullanın.

Microsoft Word'te bu parametre, aşağıda gösterildiği gibi "Değişiklikleri İzle Seçenekleri" iletişim kutusu kullanılarak ayarlanır:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Ayrıca Aspose.Words, bir belgedeki revizyonları görüntülemenize olanak tanır. Belge revizyonlarının görüntülenip görüntülenmeyeceğini tanımlamak için **LayoutOptions** sınıfının [RevisionOptions](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/revisionoptions/) özelliğini kullanın. Görünümlerini kontrol etmek için (revizyon vurgulama rengi, revizyon çubuğu rengi vb.) [RevisonOptions](https://reference.aspose.com/words/tr/net/aspose.words.layout/revisionoptions/) sınıfını kullanın.

Ayrıca revizyonların içeriğe yorum olarak görüntülenmesini de sağlayabilirsiniz. Bu amaçla [CommentDisplayMode](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/commentdisplaymode/) özelliğini ve [ShowInBalloons](https://reference.aspose.com/words/tr/net/aspose.words.layout/commentdisplaymode/) değerini kullanın.

Aşağıdaki kod örneği, düzeltme görünümünün nasıl özelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

Aşağıdaki resimde Aspose.Words'in yorumları ve Düzeltmeleri sil'i nasıl oluşturduğu gösterilmektedir:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Gelişmiş Tipografi Oluşturma için Metin Şekillendirici

[TextShaperFactory](https://reference.aspose.com/words/tr/net/aspose.words.layout/layoutoptions/textshaperfactory/) özelliği, metin şekillendirme işlevinin yanı sıra `OpenType` özellikleri desteğini de ayarlamanıza olanak tanır.

Aşağıdaki ana durumlarda belge işleme için metin şekillendirmeyi kullanın:

- Bir belgede Karakter Aralığı, Sayı Şekillendirme, Sayı Biçimleri veya Bitişik Harfler kullanılıyor.
- Bir belgede Arapça, Khmer, Tayca vb. gibi Karmaşık Komut Dosyaları kullanılıyor.

{{% alert color="primary" %}}

Metin şekillendirme yalnızca bir belge PDF veya XPS'e aktarılırken etkinleştirilecektir.

{{% /alert %}}
