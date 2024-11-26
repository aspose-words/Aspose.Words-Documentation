---
title: PDF'ye Dönüştürürken Görüntüleme Seçeneklerini Belirtin
second_title: Aspose.Words için Java
articleTitle: PDF'ye Dönüştürürken Görüntüleme Seçeneklerini Belirtin
linktitle: PDF'ye Dönüştürürken Görüntüleme Seçeneklerini Belirtin
description: "Gelişmiş seçeneklerle bir belgeyi pdf olarak dönüştürün. Java kullanarak bir belgeyi PDF biçiminde kaydetme sonucunu değiştirin."
type: docs
weight: 20
url: /tr/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF formatı, kullanıcılar arasında çok popüler olan ve çeşitli uygulamalar tarafından geniş çapta desteklenen sabit sayfa formatıdır çünkü bir PDF belgesi herhangi bir cihazda aynı görünür. Bunun için PDF'e dönüştürmek Aspose.Words için önemli bir özelliğidir.

PDF karmaşık bir formattır. Bir belgeyi PDF dosyasına dönüştürürken düzen hesaplamalarını içeren bir dizi hesaplama gereklidir. Bu aşamalar karmaşık hesaplamalar içerdiğinden, bunlar zaman alıcıdır. Ayrıca, PDF biçimi kendine göre oldukça karmaşıktır. Onun belirli bir dosya yapısı var, grafik modeli ve yazı tipi gömme. Ayrıca, belge yapısı etiketleri, şifreleme, dijital imzalar ve düzenlenebilir formlar gibi bazı karmaşık çıktı işlevselliği vardır.

Aspose.Words düzen motoru, Microsoft Word'nin sayfa düzeni motorunun nasıl çalıştığını taklit eder. Böylece Aspose.Words, PDF çıktı belgelerini mümkün olduğunca yakın bir şekilde görselleştirmek için Microsoft Word'de ne görebileceğinize benzer hale getirir. Bazen ek seçenekleri belirtmek gereklidir, bu da bir belgeyi PDF biçimine kaydetmenin sonucunu etkileyebilir. Bu seçenekler bir [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) sınıfı kullanılarak belirtilebilir, bu sınıfın özellikleri PDF çıktısının nasıl görüntüleneceğini belirten özelliklere sahiptir.

**PdfSaveOptions**'ı kullanmanın bazı örnekleri aşağıda verilmiştir.

{{% alert color="primary" %}}

Şu anda, 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u ve PDF/UA-1 formatlarına kaydedebilirsiniz. PDF standart uyum düzeyini ayarlamak için [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) numaralandırmasını kullanın. Not et ki, PDF/A formatında bir çıktı dosyası boyutu normal bir PDF dosyasından daha büyüktür.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) ve [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) eski olarak işaretlendi.

PDF/A hakkında daha fazla bilgi için, "PDF/A'ya Dönüştürmenin Özelliklerini Öğrenmek" başlıklı sonraki makaleye bakın.

{{% /alert %}}

## Doldurulabilir Formlarla Bir PDF Belgesi Oluşturma

Bir Microsoft Word belgeden doldurulabilir formları dışarı aktarmak da mümkündür, bunun yerine düz metin olan yerine doldurulan formlara sahip çıktı PDF dosyası. Bir belgeyi doldurulabilir formlarla birlikte PDF olarak kaydetmek için [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) özelliğini kullanın.

Şunu unutmayın ki, Microsoft Word ile karşılaştırıldığında PDF formatı, düzenlenebilir formlar için sınırlı sayıda seçeneğe sahiptir, örneğin metin kutusu, kombinasyon kutusu ve onay kutusu. Microsoft Word'ta daha çok form türü vardır, örneğin takvim tarih seçicisi. Genellikle, Microsoft Word davranışını PDF içinde tamamen taklit etmek mümkün değildir. Bu nedenle, bazı karmaşık durumlarda, PDF çıktısı gördüklerinizden farklı olabilir. Microsoft Word

Aşağıdaki kod örneğinde, belirtilen jpeg sıkıştırma ve kalite ile doldurulabilir formlarla birlikte bir belgeyi pdf olarak kaydetmenin nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Belge Yapısı ve Özel Özellikleri Dışarı Aktarma

[ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) özelliği, belge yapısını PDF çıktısına aktarmayı mümkün kılar.

PDF mantıksal yapı araçları, bir belge içeriği yapısı ile ilgili bilgilere ilişkin bir PDF dosyasına bilgi ekleme mekanizması sağlar. Aspose.Words, paragraflar, listeler, tablolar, notlar vb. gibi bir Microsoft Word belgesinden yapı bilgilerini korur.

Aşağıdaki örnek bir belgeyi PDF biçiminde kaydetmek için nasıl yapılacağını göstermektedir, belge yapısını korur:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words aynı zamanda belge özel özelliklerini PDF olarak dışa aktarmanızı sağlar, bunun bir örneği aşağıda gösterilmiştir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Çıktıda Kitap Çubukları ve Başlıkları Dışa Aktarma

Çıktı olarak PDF'ye dış hatlar olarak yer imlerini aktarmak istiyorsanız, bunu yapmak için [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) özelliğini kullanabilirsiniz. Bu özellik, belgedeki belge özetinde varsayılan seviyeyi belirtir, burada Microsoft Word yer imleri görüntülenir. Belgenin başlık veya altbilgiye yer imleri varsa, çıktı PDF'e dışarıya nasıl aktarılacağını belirtmek için [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) özelliğini [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) veya [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) olarak ayarlayabilirsiniz. Sıra başlıkları/ayakları yer işaretleri dışarı aktarılmıyor **HeaderFooterBookmarksExportMode** değeri [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE) olduğunda.

Aşağıdaki kod örneğinde bir bölümün ilk başlık/altbilgisi üzerinden kaydedilen yer imlerini dışarı aktarma gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Bu örneğin çıktı PDF'si aşağıda gösterilmiştir:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](specify-rendering-options-when-converting-to-pdf-1.png)

**HeaderFooterBookmarksExportMode** ' [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST)' olarak ayarlandığında ve belgenin eşit ve eşitsiz başlık/ayak yazıları veya farklı bir ilk sayfa başlığı/ayak yazısı varsa, bölümdeki ilk benzersiz başlıklar/ayak yazıları için yer imleri dışa aktarılır.

Başlıkları çıktı PDF'ye aktarabilirsiniz ayrıca [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) özelliğini kullanarak. Bu özellik, belgenin taslak çizelgesinde kaç başlık seviyesi olduğunu belirtir.

Aşağıdaki kod örneğinde üç düzeydeki başlıkları nasıl dışa aktaracağınız gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Bu örnekten elde edilen çıktı aşağıda gösterilmiştir:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Bir yer imi veya başlık navigasyonu, farklı PDF görüntüleyicilerinde farklı görünümler içerebilir. Ayrıca, bazı uygulamalarda, yer imleri ve başlık gezintisi kullanıcı arayüzünde mevcut değildir.

{{% /alert %}}

## Belge Boyutunu Azaltmak İçin Görüntülerin Örneklemesini Düşürme

Aspose.Words özellik, çıktıyı azaltmak için görüntüleri küçültme yeteneği sunar, [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) özelliğini kullanarak. Downsampling varsayılan olarak [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) özelliğinde etkinleştirilmiştir.

Bir [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) özelliğinde özel bir çözünürlük ayarlamanın veya bir [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) özelliğinde çözünürlük eşiğini ayarlamanın mümkün olduğunu unutmayın. İkinci durumda eğer görüntü çözünürlüğü eşik değerinden küçükse o zaman alt örnekleme uygulanmaz.

Aşağıdaki kod örneğinde, bir çıktı PDF belgesindeki görüntülerin çözünürlüğünü nasıl değiştireceğinizi gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Çözünürlük, sayfanın gerçek görüntüsü boyutuna göre hesaplanır.

## Adobe PDF Biçiminde Yazı Tipleri Yerleştirme

Aspose.Words Ayrıca, sonuçlanan pdf belgelerine nasıl yazı tiplerinin yerleştirileceğini kontrol etmenizi sağlar. Yazılar, herhangi bir Adobe PDF belgesine gömülmelidir, böylece belgenin herhangi bir makinede doğru şekilde işlenebilmesini sağlar (bölüme [Using TrueType Fonts](/words/java/using-truetype-fonts/)'de yazı tiplerinin görüntülenmesi hakkında daha fazla ayrıntı). Varsayılan olarak, Aspose.Words bir belgede kullanılan yazı tiplerinin alt kümesini oluşturulan PDF dosyasına gömüyor. Bu durumda, yalnızca belge içinde kullanılan glyphs (karakterler) PDF'ye kaydedilir.

### Tam Yazı Tiplerini Ne Zaman Kullanacağınız ve Alt Küme Ne Zaman Kullanacağınız

Aspose.Words için bir seçenek belirtmek için tam yazı tiplerini içerecek şekilde bir yol var. Ayrıntılı bilgi ve her bir ayarın bazı avantajları ve dezavantajları tabloda açıklanmıştır.

| Yatırılmış Yazı Tipi Modu | Avantajlar | Dezavantajlar |
| :- | :- | :- |
| `Full` | Sonuçları daha sonra ekleyerek veya metin değiştirerek düzenlemek istediğinizde faydalıdır. Tüm yazı tipleri dahil edildiğinden, bu nedenle tüm glyphler mevcuttur. | Bazı yazı tiplerinin büyük olması (birkaç megabayt) onları alt küme olmadan yerleştirmek büyük çıktı dosyaları oluşturabilir. |
| `Subset` | Alt kümeleme, çıktı dosya boyutunu daha küçük tutmak istediğinizde faydalıdır. | <p>Kullanıcı, çıktılardaki alt setli yazı tipini kullanarak metni tamamen ekleyemez veya düzenleyemez. Bu bir yazı tipinin tüm glyphsünün mevcut olmaması nedeniyle</p> <p>Birden çok PDF'nin alt kümelendirilmiş yazı tipleriyle kaydedilmesi ve birleştirilmesi durumunda, birleştirilmiş PDF belgesi birçok gereksiz alt küme içeren bir yazı tipi içerebilir.</p> |

### PDF İçinde Tam Yazı Tiplerini Yerleştirme

[EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) özelliği, Aspose.Words'in bir çıktı PDF belgesine yazı tiplerini nasıl gömleceğini belirtmenizi sağlar.

Tam yazı tiplerini çıktıda PDF belgesi içine gömebilmek için, **EmbedFullFonts**'i true'e ayarlayın
- PDF'ye kaydetirken alt küme yazı tiplerini ayarlayın **EmbedFullFonts** false olarak

Aşağıdaki örnek, çıktı PDF belgesine tam yazı tiplerini nasıl ekleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Aşağıdaki örnek, çıktının PDF'sinde alt küme yazı tiplerine ayarlamak için nasıl Aspose.Words kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Bu örnekler için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)'dan indirebilirsiniz.

{{% /alert %}}

## Nasıl Kontrol Etmelisiniz Embedding Çekirdek Yazı Tiplerini ve Windows Standart Yazı Tipleri

Temel yazı tipleri ve Windows Standart yazı tipleri standart yazı tipleri kümesidir, bunlar genellikle hedef makinede bulunur veya belge okuyucu tarafından sağlanır, bu nedenle bunları çıktı PDF'ine gömme gereksinimi yoktur. Bu yazı tiplerini içe aktarmayarak, işlenmiş PDF belgelerinin boyutunu azaltabilir ve taşınabilirlik koruyarak elde edebilirsiniz.

Aspose.Words hangi yazı tiplerinin PDF'e nasıl aktarılacağını seçme seçenekleri sağlar. Çıkış PDF'sine çekirdek ve standart yazı tiplerini gömebilirsiniz ya da onları gömme ihtiyacını atlayıp hedef makinede standart çekirdek PDF veya sistem yazı tiplerini kullanabilirsiniz. Bu seçeneklerden birini kullanmak genellikle Aspose.Words'a tarafından oluşturulan pdf belgeleri için önemli bir dosya boyutunun azaltılmasına yol açar.

- Bu seçenekler birbirini dışlar, bu yüzden her seferinde sadece bir tane seçmelisiniz.
- PDF/A-1 uyumluluğuyla kaydetme yaparken, tüm kullanılan yazı tipleri PDF belgesine gömülmeli. Bu uyumluluğa sahip kaydetme yaparken [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) özelliğinin false olarak ayarlanması gerekir ve [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) özelliğinin [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) olarak ayarlanması gerekir

### Core Yazı tiplerini gömme

Core yazı tiplerini içe aktarma seçeneği, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) özelliğinin kullanılarak etkinleştirilebilir veya devre dışı bırakılabilir. On true olarak ayarlandığında, en çok kullanılan "True Type" yazı tipleri (Base 14 yazı tipleri) çıktı PDF belgesinde gömülü değildir:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Bu yazı tipleri karşılık gelen çekirdek Tip 1 yazı tipleriyle değiştirilir ve bir okuyucu PDF açarken sağlanır.

Aşağıdaki örnek, Aspose.Words'i ayarlamayı ve okuyucunun bunları PDF Tip 1 yazı tipleriyle değiştirmesini sağlamak için çekirdek yazı tiplerinin gömülmesini önlemek gösteriyor:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Örnek için şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx) adresinden indirebilirsiniz.

{{% /alert %}}

PDF görüntüleyicileri desteklenen tüm platformlarda temel yazı tiplerini sağladığından, bu seçenek daha büyük belge taşınabilirliği gerektiğinde da faydalıdır. Ancak, temel yazı tipleri sistem yazı tiplerinden farklı görünebilir.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metinleri için çalışır. Bir non-ANSI metni PDF'ye yazmak, her zaman karşılık gelen yazı tiplerinin gömülmesini gerektirir.

{{% /alert %}}

### Yükleme Sistemi Yazı Tipleri

Bu seçenek [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) özelliğini kullanarak etkinleştirilebilir veya devre dışı bırakılabilir. Bu özellik [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD) olarak ayarlandığında, 'Arial' ve 'Times New Roman' true yazı tipleri bir PDF belgesine gömülmez. Bu durumda, istemci görüntüleyici, yüklü olan istemci işletim sistemindeki yazı tiplerine dayanır. **FontEmbeddingMode** özelliği [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE) olarak ayarlandığında, Aspose.Words herhangi bir yazı tipi gömme yapmaz.

Aşağıdaki örnek, Arial ve Times New Roman yazı tiplerinin bir PDF belgesine gömülmesini atlamak için Aspose.Words ayarlanmasını nasıl göstereceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Bu mod belgenizi aynı platformda görüntülemek istediğinizde ve çıktının PDF'sinde yazı tiplerinin tam görünümünü koruyarak en yararlı olanıdır.

{{% alert color="primary" %}}

Bu ayar yalnızca ANSI (Windows-1252) kodlama metin için çalışır. Bir ANSI olmayan metin PDF'ye yazmak, buna karşılık gelen yazı tipinin gömülü olmasını gerektirir.

{{% /alert %}}
