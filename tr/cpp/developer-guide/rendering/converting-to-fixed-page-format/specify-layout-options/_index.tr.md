---
title: Düzen Seçeneklerini C++ içinde Belirtin
second_title: Aspose.Words için C++
articleTitle: Düzen Seçeneklerini Belirtin
linktitle: Düzen Seçeneklerini Belirtin
description: "Çeşitli belge düzenleri için Düzen Seçeneklerini belirleyin."
type: docs
weight: 20
url: /tr/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, **Document** öğesinin [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) özelliğinde belirtilen parametrelere bağlı olarak çeşitli mizanpajlara sahip çıktı belgeleri oluşturmanıza olanak tanır. Bu özellik, bu makalede açıklanan Microsoft Word kullanıcı arabirimi menü seçeneklerinden bazılarına benzer.

Sayfa numaralandırmayı yeniden başlatan sürekli bir bölümdeki sayfa numaralarını hesaplamak için [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) veya "Belgeyi düzenlemek için yazıcı metriklerini kullan" uyumluluk seçeneğini yoksaymak için [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) gibi parametrelerin tam listesi için bkz. [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) sınıf sayfası.

## Biçimlendirme işaretleri

Aspose.Words aşağıdaki özellikleri kullanarak biçimlendirme işaretlerini yönetmeye izin verir:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - gizli metnin işlenip işlenmediğini belirten bir `Boolean` değeri.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/) - paragraf işareti karakterlerinin oluşturulup oluşturulmadığını belirten bir `Boolean` değeri.

Aşağıdaki örnekte gösterilen sayfa üç paragraf içermektedir. İkincisi gizlidir. Bir kullanıcı bu gizli metni sayfada görüntülemek için **ShowHiddenText** seçeneğini değiştirebilir. Ayrıca, her paragrafın sonunda bir paragraf işareti vardır. **ShowParagraphMarks** özelliği onu oluşturmak üzere ayarlanmadıkça paragraf işareti genellikle görünmez.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

Microsoft Word 'da, bu parametreler aşağıdaki gibi "Dosya → Seçenekler → Görüntüle" iletişim kutusu kullanılarak ayarlanır:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Yorumlar ve Revizyonlar

Aspose.Words ile, Microsoft Word'deki gibi görünecek belge yorumları oluşturabilirsiniz. Yorumların işlenip işlenmeyeceğini belirtmek için [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/) özelliğini kullanın.

Microsoft Word 'da, bu parametre aşağıda gösterildiği gibi "Değişiklik Seçeneklerini İzle" iletişim kutusu kullanılarak ayarlanır:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Ayrıca, Aspose.Words bir belgedeki revizyonları görüntülemenizi sağlar. Belge revizyonlarının görüntülenip görüntülenmeyeceğini tanımlamak için **LayoutOptions** sınıfının [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) özelliğini kullanın. Görünümlerini kontrol etmek için (revizyon vurgulama rengi, revizyon çubuğu rengi vb.), [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) sınıfını kullanın.

İçeriğe yorum olarak görüntülenen revizyonları da yapabilirsiniz. Bu amaçla [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) özelliğini ve [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/) değerini kullanın.

Aşağıdaki kod örneği, revizyonların nasıl özelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

Aşağıdaki resim, Aspose.Words 'ın yorumları nasıl oluşturduğunu ve revizyonları nasıl sildiğini göstermektedir:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Gelişmiş Tipografi Oluşturma için Metin Şekillendirici

[TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) özelliği, metin şekillendirme işlevinin yanı sıra `OpenType` özellikler desteğini ayarlamanıza olanak tanır.

Aşağıdaki ana durumlarda belge işleme için metin şekillendirmeyi kullanın:

- Belge karakter Aralığı, Sayı Şekillendirme, Sayı Formları veya Bitişik Harfler kullanır.
- Bir belge Arapça, Kmerce, Tayca vb. Gibi Karmaşık Komut Dosyaları kullanır.

{{% alert color="primary" %}}

Metin şekillendirme, yalnızca bir belgeyi PDF veya XPS öğesine dışa aktarırken etkinleştirilecektir.

{{% /alert %}}
