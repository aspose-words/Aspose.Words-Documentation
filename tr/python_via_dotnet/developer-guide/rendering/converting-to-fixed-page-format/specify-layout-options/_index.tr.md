---
title: Python'te Düzen Seçeneklerini Belirleyin
second_title: Python via .NET için Aspose.Words
articleTitle: Düzen Seçeneklerini Belirleyin
linktitle: Düzen Seçeneklerini Belirleyin
description: "Python'i kullanarak çeşitli belge düzenleri için Düzen Seçeneklerini belirtin."
type: docs
weight: 10
url: /tr/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words, [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) sınıfının özelliklerinde belirtilen parametrelere bağlı olarak çeşitli düzenlerde çıktı belgeleri oluşturmanıza olanak sağlar. Bu özelliklerin bazıları Microsoft Word kullanıcı arayüzü menü seçeneklerinin bazılarına benzemektedir; bunlar bu makalede açıklanacaktır.

Sayfa numaralandırmayı yeniden başlatan sürekli bir bölümdeki sayfa numaralarını hesaplamak için [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) veya "Belgeyi düzenlemek için yazıcı ölçümlerini kullan" uyumluluk seçeneğini yok saymak için [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) gibi parametrelerin tam listesi için [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) sınıfı sayfasına bakın.

## Biçimlendirme İşaretleri

Aspose.Words, aşağıdaki özellikleri kullanarak biçimlendirme işaretlerini yönetmeye olanak tanır:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – gizli metnin oluşturulup oluşturulmayacağını belirten bir `Boolean` değeri.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – paragraf işareti karakterlerinin oluşturulup oluşturulmayacağını belirten bir `Boolean` değeri.

Aşağıdaki örnekte gösterilen sayfa üç paragraf içermektedir. İkincisi gizlidir. Kullanıcı bu gizli metni sayfada görüntülemek için [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) seçeneğini değiştirebilir. Ayrıca her paragrafın sonunda bir paragraf işareti bulunur. [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) özelliği onu oluşturacak şekilde ayarlanmadığı sürece paragraf işareti genellikle görünmez.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Microsoft Word'te bu parametreler "Dosya → Seçenekler → Görüntüle" iletişim kutusu kullanılarak aşağıdaki gibi ayarlanır:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Yorumlar ve Düzeltmeler

Aspose.Words ile, Microsoft Word'dekiyle aynı görünecek belge yorumlarını oluşturabilirsiniz. Yorumların oluşturulup oluşturulmayacağını belirtmek için [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) özelliğini kullanın.

Microsoft Word'te bu parametre, aşağıda gösterildiği gibi "Değişiklikleri İzle Seçenekleri" iletişim kutusu kullanılarak ayarlanır:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Ayrıca Aspose.Words, bir belgedeki revizyonları görüntülemenize olanak tanır. Belge revizyonlarının görüntülenip görüntülenmeyeceğini tanımlamak için [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) sınıfının [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) özelliğini kullanın. Görünümlerini kontrol etmek için (revizyon vurgulama rengi, revizyon çubuğu rengi vb.) [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) sınıfını kullanın.

Ayrıca revizyonların içeriğe yorum olarak görüntülenmesini de sağlayabilirsiniz. Bu amaçla [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) özelliğini ve [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) değerini kullanın.

Aşağıdaki kod örneği, revizyon görünümünün nasıl özelleştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Aşağıdaki resimde Aspose.Words'in yorumları ve Düzeltmeleri sil'i nasıl oluşturduğu gösterilmektedir:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
