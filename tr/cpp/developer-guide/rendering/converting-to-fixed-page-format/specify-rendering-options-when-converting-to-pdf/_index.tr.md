---
title: PDF'a Dönüştürürken Oluşturma Seçeneklerini Belirtin
second_title: Aspose.Words için C++
articleTitle: PDF'a Dönüştürürken Oluşturma Seçeneklerini Belirtin
linktitle: PDF'a Dönüştürürken Oluşturma Seçeneklerini Belirtin
description: "C++ kullanarak gelişmiş seçeneklerle bir belgeyi PDF'e dönüştürün. Belgeyi kaydetme sonucunu PDF biçimine değiştirmek için PdfSaveOptions öğesini kullanın."
type: docs
weight: 30
url: /tr/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF biçimi, kullanıcılar arasında çok popüler olan ve çeşitli uygulamalar tarafından yaygın olarak desteklenen sabit sayfalı bir biçimdir, çünkü PDF belgesi herhangi bir cihazda aynı görünür. Bu nedenle, PDF 'e dönüştürmek Aspose.Words'ın önemli bir özelliğidir.

PDF karmaşık bir formattır. Düzen hesaplaması da dahil olmak üzere bir belgeyi PDF 'a dönüştürme sürecinde birkaç hesaplama aşaması gerekir. Bu aşamalar karmaşık hesaplamaları içerdiğinden zaman alıcıdır. Ayrıca, PDF biçimi kendi başına oldukça karmaşıktır. Belirli bir dosya yapısına, grafik modeline ve yazı tipi yerleştirmesine sahiptir. Ayrıca, belge yapısı etiketleri, şifreleme, dijital imzalar ve düzenlenebilir formlar gibi bazı karmaşık çıktı işlevlerine sahiptir.

Aspose.Words düzen motoru, Microsoft Word 'in sayfa düzeni motorunun çalışma şeklini taklit eder. Bu nedenle, Aspose.Words, PDF çıktı belgelerinin Microsoft Word 'de görebildiğinize mümkün olduğunca yakın görünmesini sağlar. Bazen bir belgenin PDF biçimine kaydedilmesinin sonucunu etkileyebilecek ek seçenekler belirtmek gerekir. Bu seçenekler, PDF çıktısının nasıl görüntüleneceğini belirleyen özellikleri içeren [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members) sınıfının kullanılmasıyla belirtilebilir.

**PdfSaveOptions** kullanmanın bazı örnekleri aşağıda verilmiştir.

{{% alert color="primary" %}}

Şu anda, aşağıdakilere kaydedebilirsiniz PDF 1.7, PDF 2.0, PDF/A-1 a, PDF/A-1b, PDF/A- 2a, PDF/A-2u ve PDF/UA-1 biçimleri. PDF standartlara uygunluk düzeyini ayarlamak için [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) numaralandırmasını kullanın. PDF/A biçiminde, çıktı dosyası boyutunun normal PDF dosya boyutundan daha büyük olduğunu unutmayın.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) ve [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) geçersiz olarak işaretlenmiştir.

PDF/A hakkında daha fazla bilgi için, "PDF/A'a Dönüştürmenin Özelliklerini Öğrenin" başlıklı sonraki makaleye bakın.

{{% /alert %}}

## Doldurulabilir Formlarla PDF Belge Oluşturma

Doldurulabilir formları bir Microsoft Word belgeden, düz metin yerine doldurulabilir formları olan PDF çıktısına dışa aktarmak da mümkündür. Bir belgeyi doldurulabilir formlarla PDF olarak kaydetmek için [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) özelliğini kullanın.

Microsoft Word'ın aksine, PDF biçiminin düzenlenebilir formlar için textbox, combobox ve checkbox gibi sınırlı sayıda seçeneği olduğunu unutmayın. Microsoft Word, takvim tarihi seçici gibi daha fazla form türüne sahiptir. Genel olarak, PDF içindeki Microsoft Word davranışını tam olarak taklit etmek mümkün değildir. Bu nedenle, bazı karmaşık durumlarda, PDF çıktısı Microsoft Word 'da gördüğünüzden farklı olabilir.

Aşağıdaki kod örneği, belirtilen Jpeg sıkıştırması ve kalitesine sahip doldurulabilir formlarla bir belgenin PDF olarak nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Belge Yapısını ve Özel Özellikleri Dışa Aktarma

[ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) özelliği, belge yapısını PDF çıktısına vermenizi sağlar.

PDF mantıksal yapı olanakları, belge içerik yapısıyla ilgili bilgileri bir PDF dosyasına dahil etmek için bir mekanizma sağlar. Aspose.Words paragraflar, listeler, tablolar, dipnotlar / sonnotlar vb. Gibi bir Microsoft Word belgesindeki yapıyla ilgili bilgileri korur.

Aşağıdaki örnek, belge yapısını koruyarak bir belgenin PDF biçimine nasıl kaydedileceğini göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words ayrıca, belge özel özelliklerini aşağıdaki örnekle gösterilen PDF öğesine dışa aktarmanıza da olanak tanır:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## PDF Çıktısındaki Yer İmlerinden ve Başlıklardan Anahatları Dışa Aktarma

Yer imlerini PDF çıktısında anahat olarak dışa aktarmak istiyorsanız, [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/) özelliğini kullanabilirsiniz. Bu özellik, belge anahattında Microsoft Word yer imlerinin görüntülendiği varsayılan düzeyi belirtir. Belge, belgenin üstbilgisinde/altbilgisinde yer imleri içeriyorsa, bunların PDF çıktısında nasıl dışa aktarılacağını belirtmek için [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) özelliğini [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) veya [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) olarak ayarlayabilirsiniz. **HeaderFooterBookmarksExportMode** değeri [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) olduğunda üstbilgilerdeki/ altbilgilerdeki yer imleri dışa aktarılmaz.

Aşağıdaki kod örneği, bir bölümün ilk üstbilgisinden / altbilgisinden yer imlerinin nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Bu örneğin PDF çıktısı aşağıda gösterilmiştir:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

**HeaderFooterBookmarksExportMode** İlk olarak ayarlandığında ve belgede çift ve tek üstbilgiler / altbilgiler veya farklı bir ilk sayfa üstbilgisi / altbilgisi olduğunda, bir bölümdeki ilk benzersiz üstbilgiler / altbilgiler için yer imleri dışa aktarılır.

[HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/) özelliğini kullanarak PDF çıktısındaki başlıkları da dışa aktarabilirsiniz. Bu özellik, belge anahattında kaç başlık düzeyinin bulunduğunu belirtir.

Aşağıdaki kod örneği, üç seviyeli başlıkların nasıl dışa aktarılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Bu örneğin PDF çıktısı aşağıda gösterilmiştir:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Bir yer imi veya başlık gezintisi, çeşitli PDF görüntüleyicilerde farklı görünümlere sahip olabilir. Ayrıca, bazı uygulamalarda yer imleri ve başlık navigasyonu UI 'de mevcut değildir.

{{% /alert %}}

## Belge Boyutunu Küçültmek için Görüntüleri Altörnekleme

Aspose.Words, [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/) özelliğini kullanarak çıktı PDF boyutunu küçültmek için görüntüleri altörnekleme yeteneği sağlar. Altörnekleme [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/) özelliğinde varsayılan olarak etkindir.

[Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) özelliğinde belirli bir çözünürlük veya [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/) özelliğinde bir çözünürlük eşiği ayarlamanın da mümkün olduğunu unutmayın. İkinci durumda, görüntü çözünürlüğü eşik değerinden düşükse, altörnekleme geçerli olmaz.

Aşağıdaki kod örneği, çıktı PDF belgesindeki görüntülerin çözünürlüğünün nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Çözünürlük, sayfadaki gerçek görüntü boyutuna göre hesaplanır.

## Yazı Tiplerini Adobe PDF Biçiminde Gömme

Aspose.Words ayrıca, ortaya çıkan PDF belgelere yazı tiplerinin nasıl gömüldüğünü kontrol etmenizi sağlar. Belgenin herhangi bir makinede doğru şekilde işlenebildiğinden emin olmak için yazı tiplerinin herhangi bir Adobe PDF belgesine gömülmesi gerekir (bölümdeki yazı tipi oluşturma hakkında daha fazla ayrıntıya bakın [TrueType Yazı Tiplerini Kullanma](/words/cpp/using-truetype-fonts/)). Varsayılan olarak, Aspose.Words belgede kullanılan yazı tiplerinin bir alt kümesini oluşturulan PDF öğesine gömer. Bu durumda, yalnızca belgede kullanılan glifler (karakterler) PDF değerine kaydedilir.

### Tam Yazı Tiplerini Ne Zaman Kullanmalı ve Ne Zaman Alt Kümelenmeli

Tam yazı tiplerini gömmek için Aspose.Words için bir seçenek belirlemenin bir yolu vardır. Her bir ayarın bazı avantajları ve dezavantajları ile birlikte daha fazla ayrıntı aşağıdaki tabloda açıklanmıştır.

| Yazı Tiplerini Göm Modu | Avantajlar | Dezavantajlar |
| :- | :- | :- |
| `Full` | Metni ekleyerek veya değiştirerek elde edilen PDF değerini daha sonra düzenlemek istediğinizde kullanışlıdır. Tüm yazı tipleri dahil edilmiştir, dolayısıyla tüm glifler mevcuttur. | Bazı yazı tipleri büyük olduğundan (birkaç megabayt), bunları alt küme olmadan gömmek büyük çıktı dosyalarına neden olabilir. |
| `Subset` | Çıktı dosyası boyutunu daha küçük tutmak istiyorsanız alt küme kullanışlıdır. | <p>Kullanıcı, çıktı PDF belgesindeki alt kümelenmiş yazı tipini kullanarak metni tam olarak ekleyemez veya düzenleyemez. Bunun nedeni, yazı tipinin tüm gliflerinin mevcut olmamasıdır.</p><p>Alt kümelenmiş yazı tipleriyle birden çok PDFs kaydedilir ve bir araya getirilirse, birleştirilmiş PDF belgesinde birçok gereksiz alt küme içeren bir yazı tipi olabilir.</p> |

### Tam Yazı Tiplerini PDF içine Gömme

[EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) özelliği, Aspose.Words'in bir çıktı PDF belgesine yazı tiplerini nasıl katıştırdığını belirtmenizi sağlar.

- Çıktı PDF belgesine tam yazı tiplerini gömmek için **EmbedFullFonts** değerini true olarak ayarlayın
- PDF olarak kaydederken yazı tiplerini alt ayarlamak için **EmbedFullFonts** değerini false olarak ayarlayın

Aşağıdaki örnek, çıktı PDF belgesine tam yazı tiplerinin nasıl katıştırılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Aşağıdaki örnek, PDF çıktısındaki yazı tiplerini alt kümelemek için Aspose.Words'ın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Bu örneklerin şablon dosyasını şu adresten indirebilirsiniz [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Çekirdek Yazı Tiplerini ve Windows Standart Yazı Tiplerini Gömme Nasıl Kontrol Edilir

Çekirdek yazı tipleri ve Windows Standart yazı tipleri, genellikle hedef makinede bulunan veya belge okuyucu tarafından sağlanan "standart" yazı tipi kümeleridir, bu nedenle PDF çıktısına gömülmeleri gerekmez. Bu yazı tiplerini katıştırmayarak, işlenen PDF belgelerin boyutunu küçültebilir ve yine de taşınabilirliği koruyabilirsiniz.

Aspose.Words, yazı tiplerinin PDF'e nasıl dışa aktarılacağını seçme seçenekleri sunar. Çekirdek ve standart yazı tiplerini PDF çıktısına gömmeyi veya bunları gömmeyi atlamayı ve bunun yerine hedef makinede standart çekirdek PDF yazı tiplerini veya sistem yazı tiplerini kullanmayı seçebilirsiniz. Bu seçeneklerden herhangi birinin kullanılması normalde Aspose.Words tarafından oluşturulan PDF belgeler için önemli dosya boyutu küçültmesine neden olur.

- Bu seçenekler birbirini dışlayan olduğundan, her seferinde yalnızca birini seçmelisiniz.
- PDF/A-1 uyumluluğuyla kaydederken, kullanılan tüm yazı tiplerinin PDF belgesine katıştırılması gerekir. Bu uyumla kaydederken [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) özelliğinin false, [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) özelliğinin [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) olarak ayarlanması gerekir

### Temel Yazı Tiplerini Gömme

Çekirdek yazı tiplerini gömme seçeneği `UseCoreFonts` özelliği kullanılarak etkinleştirilebilir veya devre dışı bırakılabilir. True olarak ayarlandığında, aşağıdaki en popüler "True Type" yazı tipleri (Temel 14 yazı tipi) çıktı PDF belgesine gömülmez:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Bu yazı tipleri, PDF açıldığında bir okuyucu tarafından sağlanan karşılık gelen çekirdek Türü 1 yazı tipleriyle değiştirilir.

Aşağıda verilen örnek, temel yazı tiplerini yerleştirmekten kaçınmak ve okuyucunun bunları PDF Type 1 yazı tipleriyle değiştirmesine izin vermek için Aspose.Words 'in nasıl ayarlanacağını göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Bu örnek için şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

PDF görüntüleyenler desteklenen herhangi bir platformda temel yazı tipleri sağladığından, bu seçenek daha fazla belge taşınabilirliği gerektiğinde de kullanışlıdır. Ancak, çekirdek yazı tipleri sistem yazı tiplerinden farklı görünebilir.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metni için çalışır. ANSI olmayan bir metni PDF 'e yazmak her zaman karşılık gelen yazı tiplerinin gömülmesini gerektirir.

{{% /alert %}}

### Sistem Yazı Tiplerini Gömme

Bu seçenek [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/) özelliği kullanılarak etkinleştirilebilir veya devre dışı bırakılabilir. Bu özellik [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) olarak ayarlandığında, "Arial" ve "Times New Roman" true type yazı tipleri PDF belgesine gömülmez. Bu durumda, istemci görüntüleyicisi, istemcinin işletim sisteminde yüklü olan yazı tiplerine dayanır. **FontEmbeddingMode** özelliği [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) olarak ayarlandığında, Aspose.Words hiçbir yazı tipini katıştırmayın.

Aşağıdaki örnek, Aspose.Words'ın Arial ve Times New Roman yazı tiplerini PDF belgesine katıştırmayı atlayacak şekilde nasıl ayarlanacağını göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Bu mod, PDF çıktısındaki yazı tiplerinin tam görünümünü koruyarak belgelerinizi aynı platformda görüntülemek istediğinizde en kullanışlıdır.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metni için çalışır. ANSI olmayan bir metni PDF 'e yazmak, karşılık gelen yazı tipinin gömülmesini gerektirir.

{{% /alert %}}
