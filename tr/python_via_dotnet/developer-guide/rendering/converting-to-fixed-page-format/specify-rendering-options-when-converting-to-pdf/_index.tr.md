---
title: PDF'ye Dönüştürürken Seçenekler
second_title: Python via .NET için Aspose.Words
articleTitle: PDF'ye Dönüştürürken İşleme Seçeneklerini Belirtin
linktitle: PDF'ye Dönüştürürken İşleme Seçeneklerini Belirtin
description: "Python'i kullanarak gelişmiş seçeneklerle bir belgeyi PDF'ye dönüştürün. Bir belgeyi PDF biçiminde kaydetmenin sonucunu değiştirmek için PdfSaveOptions'ı kullanın."
type: docs
weight: 20
url: /tr/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF formatı, kullanıcılar arasında çok popüler olan ve çeşitli uygulamalar tarafından yaygın olarak desteklenen sabit sayfalı bir formattır, çünkü PDF belgesi her cihazda aynı görünür. Bu nedenle PDF'ye dönüştürmek Aspose.Words'in önemli bir özelliğidir.

PDF karmaşık bir formattır. Bir belgeyi PDF'ye dönüştürme sürecinde, mizanpaj hesaplaması da dahil olmak üzere birkaç hesaplama aşaması gerekir. Bu aşamalar karmaşık hesaplamalar içerdiğinden zaman alıcıdır. Ayrıca PDF formatı kendi başına oldukça karmaşıktır. Belirli bir dosya yapısına, grafik modeline ve yazı tipi yerleştirmeye sahiptir. Ayrıca belge yapısı etiketleri, şifreleme, dijital imzalar ve düzenlenebilir formlar gibi bazı karmaşık çıktı işlevlerine sahiptir.

Aspose.Words düzen motoru, Microsoft Word'nin sayfa düzeni motorunun çalışma şeklini taklit eder. Bu nedenle Aspose.Words, PDF çıktı belgelerinin Microsoft Word'de gördüklerinize mümkün olduğunca yakın görünmesini sağlar. Bazen bir belgeyi PDF formatında kaydetmenin sonucunu etkileyebilecek ek seçeneklerin belirtilmesi gerekebilir. Bu seçenekler, PDF çıktısının nasıl görüntüleneceğini belirleyen özellikleri içeren [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) sınıfı kullanılarak belirtilebilir.

[PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) kullanımına ilişkin bazı örnekler aşağıda verilmiştir.

{{% alert color="primary" %}}

Şu anda PDF/A-1 ve PDF/A-2 formatlarında da kaydedebilirsiniz. PDF/A formatında çıktı dosyasının boyutunun normal PDF dosyası boyutundan daha büyük olduğunu unutmayın.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) ve [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) eski olarak işaretlendi.

PDF/A hakkında daha fazla bilgi için "PDF/A'ya Dönüştürmenin Özelliklerini Öğrenin" başlıklı sonraki makaleye bakın.

{{% /alert %}}

## Doldurulabilir Formlarla PDF Belgesi Oluşturma

Doldurulabilir formları bir Microsoft Word belgesinden, düz metin yerine doldurulabilir formlar içeren çıktı PDF'sine aktarmak da mümkündür. Bir belgeyi doldurulabilir formlarla PDF olarak kaydetmek için [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) özelliğini kullanın.

Microsoft Word'in aksine, PDF formatının düzenlenebilir formlar için metin kutusu, birleşik giriş kutusu ve onay kutusu gibi sınırlı sayıda seçeneğe sahip olduğunu unutmayın. Microsoft Word'te takvim tarihi seçici gibi daha fazla form türü bulunur. Genellikle PDF'de Microsoft Word davranışını tam olarak taklit etmek mümkün değildir. Bu nedenle bazı karmaşık durumlarda PDF çıktısı, Microsoft Word'te gördüğünüzden farklı olabilir.

Aşağıdaki kod örneği, bir belgenin belirtilen Jpeg sıkıştırması ve kalitesiyle doldurulabilir formlarla PDF olarak nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Belge Yapısını ve Özel Özellikleri Dışa Aktarma

[export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) özelliği, belge yapısını PDF çıktısına aktarmanıza olanak tanır.

PDF mantıksal yapı olanakları, belge içerik yapısına ilişkin bilgilerin bir PDF dosyasına dahil edilmesi için bir mekanizma sağlar. Aspose.Words, bir Microsoft Word belgesindeki yapı hakkındaki paragraflar, listeler, tablolar, dipnotlar/son notlar vb. gibi bilgileri korur.

Aşağıdaki örnek, belge yapısını koruyarak bir belgenin PDF formatında nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words ayrıca aşağıdaki örnekte gösterildiği gibi belgenin özel özelliklerini PDF'ye aktarmanıza da olanak tanır:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Çıktı PDF'sindeki Yer İşaretlerinden ve Başlıklardan Anahatları Dışa Aktarma

Yer işaretlerini çıktı PDF'sinde ana hatlar olarak dışa aktarmak istiyorsanız [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) özelliğini kullanabilirsiniz. Bu özellik, belge anahattında Microsoft Word yer imlerinin görüntülendiği varsayılan düzeyi belirtir. Belge, belgenin üstbilgisinde/altbilgisinde yer imleri içeriyorsa bunların çıktı PDF'sinde nasıl dışa aktarılacağını belirtmek için [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) özelliğini [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) veya [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) olarak ayarlayabilirsiniz. [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/)'in değeri [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none) olduğunda üstbilgi/altbilgilerdeki yer imleri dışa aktarılmaz.

Aşağıdaki kod örneği, bir bölümün ilk üstbilgisinden/altbilgisinden yer işaretlerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Bu örneğin çıktı PDF'si aşağıda gösterilmiştir:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

[header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/), [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) olarak ayarlandığında ve belgede çift ve tek üstbilgiler/altbilgiler veya farklı bir ilk sayfa üstbilgisi/altbilgisi varsa, bir bölümdeki ilk benzersiz üstbilgiler/altbilgiler için yer işaretleri dışa aktarılır.

Ayrıca [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) özelliğini kullanarak çıktı PDF'sindeki başlıkları da dışa aktarabilirsiniz. Bu özellik, belge taslağına kaç düzeyde başlık ekleneceğini belirtir.

Aşağıdaki kod örneği, başlıkların üç düzeyde nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Bu örneğin çıktı PDF'si aşağıda gösterilmektedir:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Bir yer işareti veya başlık gezintisi, çeşitli PDF görüntüleyicilerde farklı görünümlere sahip olabilir. Ayrıca bazı uygulamalarda yer imleri ve başlık navigasyonu kullanıcı arayüzünde mevcut değildir.

{{% /alert %}}

## Belge Boyutunu Küçültmek için Görüntüleri Alt Örnekleme

Aspose.Words, [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) özelliğini kullanarak çıktı PDF boyutunu küçültmek amacıyla görüntüleri alt örnekleme yeteneği sağlar. Aşağı örnekleme, [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) özelliğinde varsayılan olarak etkindir.

[resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) özelliğinde belirli bir çözünürlük veya [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) özelliğinde bir çözünürlük eşiği ayarlamanın da mümkün olduğunu unutmayın. İkinci durumda ise görüntü çözünürlüğü eşik değerinden küçükse altörnekleme uygulanmayacaktır.

Aşağıdaki kod örneği, çıktı PDF belgesindeki görüntülerin çözünürlüğünün nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

Çözünürlük, sayfadaki gerçek görüntü boyutuna göre hesaplanır.

## Yazı Tiplerini Adobe PDF Formatına Gömme

Aspose.Words ayrıca yazı tiplerinin ortaya çıkan PDF belgelerine nasıl gömüleceğini de kontrol etmenizi sağlar. Belgenin herhangi bir makinede doğru şekilde oluşturulabilmesini sağlamak için yazı tiplerinin herhangi bir Adobe PDF belgesine gömülmesi gerekir (yazı tipi oluşturma hakkında daha fazla ayrıntı için [TrueType Yazı Tiplerini Kullanma](/words/tr/python-net/using-truetype-fonts/) bölümünde bakın). Aspose.Words, varsayılan olarak belgede kullanılan yazı tiplerinin bir alt kümesini oluşturulan PDF'ye gömer. Bu durumda yalnızca belgede kullanılan glyph'ler (karakterler) PDF'ye kaydedilir.

### Tam Yazı Tipleri Ne Zaman Kullanılmalı ve Ne Zaman Alt Kümelenmeli

Aspose.Words'in tam yazı tiplerini gömmesi için bir seçenek belirtmenin bir yolu vardır. Her ayarın bazı avantaj ve dezavantajlarının yanı sıra daha fazla ayrıntı aşağıdaki tabloda açıklanmaktadır.

| Yazı Tiplerini Göm Modu |  Avantajları | Dezavantajları |
|  :-  |  :-  |  :-  |
|  `Full`  | Ortaya çıkan PDF'yi daha sonra metni ekleyerek veya değiştirerek düzenlemek istediğinizde kullanışlıdır. Tüm yazı tipleri dahildir, dolayısıyla tüm glyph'ler mevcuttur. | Bazı yazı tipleri büyük olduğundan (birkaç megabayt), bunları alt kümeleme olmadan gömmek, büyük çıktı dosyalarıyla sonuçlanabilir. |
|  `Subset`  | Çıktı dosyasının boyutunu daha küçük tutmak istiyorsanız alt kümeleme kullanışlıdır. | <p>Kullanıcı, çıktı PDF belgesindeki alt kümelenmiş yazı tipini kullanarak metni tam olarak ekleyemez veya düzenleyemez. Bunun nedeni, yazı tipinin tüm glyph'lerinin mevcut olmamasıdır.</p>

<p>Birden fazla PDF, alt kümelenmiş yazı tipleriyle kaydedilir ve bir araya getirilirse, birleştirilmiş PDF belgesinde birçok gereksiz alt küme içeren bir yazı tipi bulunabilir.</p> |

### PDF'ye Tam Yazı Tiplerini Gömme

[embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) özelliği, Aspose.Words'nin yazı tiplerini çıktı PDF belgesine nasıl gömeceğini belirlemenizi sağlar.

- Tam yazı tiplerini çıktı PDF belgesine gömmek için [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/)'i *True* olarak ayarlayın
- PDF'ye kaydederken yazı tiplerini alt kümelemek için [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/)'i *False* olarak ayarlayın

Aşağıdaki örnek, tam yazı tiplerinin çıktı PDF belgesine nasıl gömüleceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

Aşağıdaki örnek, Aspose.Words'in çıktı PDF'sindeki yazı tiplerini alt kümeye nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Bu örneklere ait şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Gömülü Çekirdek Yazı Tiplerini ve Windows Standart Yazı Tiplerini Kontrol Etme

Çekirdek yazı tipleri ve Windows Standart yazı tipleri, genellikle hedef makinede bulunan veya belge okuyucu tarafından sağlanan "standart" yazı tipleridir, bu nedenle çıktı PDF'sine gömülmeleri gerekmez. Bu yazı tiplerini gömmeyerek, oluşturulan PDF belgelerinin boyutunu azaltabilir ve yine de taşınabilirliği koruyabilirsiniz.

Aspose.Words, yazı tiplerinin PDF'ye nasıl aktarılacağını seçmeye yönelik seçenekler sunar. Temel ve standart yazı tiplerini çıktı PDF'sine gömmeyi veya bunları gömmeyi atlayıp bunun yerine hedef makinede standart çekirdek PDF yazı tiplerini veya sistem yazı tiplerini kullanmayı seçebilirsiniz. Bu seçeneklerden herhangi birinin kullanılması normalde Aspose.Words tarafından oluşturulan PDF belgelerinin dosya boyutunun önemli ölçüde azalmasına neden olur.

- Bu seçenekler birbirini dışladığı için bir kerede yalnızca birini seçmelisiniz.
- PDF/A-1 uyumluluğuyla kaydederken kullanılan tüm yazı tipleri PDF belgesine gömülmelidir. Bu uyumlulukla kaydederken [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) özelliğinin *False*, [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) özelliğinin ise [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all) olarak ayarlanması gerekir.

### Temel Fontları Gömme

Çekirdek yazı tiplerini gömme seçeneği [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) özelliği kullanılarak etkinleştirilebilir veya devre dışı bırakılabilir. true olarak ayarlandığında, aşağıdaki en popüler "True Type" yazı tipleri (Temel 14 yazı tipleri) çıktı PDF belgesine gömülmez:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Bu yazı tipleri, PDF açıldığında okuyucu tarafından sağlanan ilgili temel Tip 1 yazı tipleriyle değiştirilir.

Aşağıda verilen örnek, Aspose.Words'in çekirdek yazı tiplerini gömmeyi önleyecek ve okuyucunun bunları PDF Tip 1 yazı tipleriyle değiştirmesine izin verecek şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

{{% /alert %}}

PDF görüntüleyiciler desteklenen herhangi bir platformda temel yazı tipleri sağladığından, bu seçenek daha fazla belge taşınabilirliği gerektiğinde de kullanışlıdır. Ancak çekirdek yazı tipleri sistem yazı tiplerinden farklı görünebilir.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metni için çalışır. ANSI olmayan bir metni PDF'ye yazmak her zaman karşılık gelen yazı tiplerinin gömülmesini gerektirir.

{{% /alert %}}

### Sistem Yazı Tiplerini Gömme

Bu seçenek [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) kullanılarak etkinleştirilebilir veya devre dışı bırakılabilir. Bu özellik [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard) olarak ayarlandığında "Arial" ve "Times New Roman" true tipi yazı tipleri PDF belgesine gömülmez. Bu durumda istemci görüntüleyici, istemcinin işletim sisteminde yüklü olan yazı tiplerine güvenir. [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) özelliği [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none) olarak ayarlandığında, Aspose.Words herhangi bir yazı tipini gömmez.

Aşağıdaki örnek, Aspose.Words'in Arial ve Times New Roman yazı tiplerini bir PDF belgesine gömmeyi atlayacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Bu mod, çıktı PDF'sindeki yazı tiplerinin tam görünümünü koruyarak belgelerinizi aynı platformda görüntülemek istediğinizde çok kullanışlıdır.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metni için çalışır. ANSI olmayan bir metni PDF'ye yazmak, ilgili yazı tipinin gömülmesini gerektirir.

{{% /alert %}}
