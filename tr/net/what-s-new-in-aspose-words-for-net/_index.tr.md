---
title: Ne var ne yok
second_title: .NET için Aspose.Words
articleTitle: .NET için Aspose.Words'teki yenilikler
linktitle: .NET için Aspose.Words'teki yenilikler
type: docs
description: ".NET için Aspose.Words her gün genişler ve gelişir. Bu sayfada ürünün büyük ve en ilginç özellikleri hakkında bilgi edinebilirsiniz."
weight: 10
url: /tr/net/what-s-new-in-aspose-words-for-net/
---

Bu sayfada son sürümlerde tanıtılan en ilginç yeni Aspose.Words özellikleri açıklanmaktadır.

## .NET 24.1, 24.2, 24.3, 24.4 için Aspose.Words

Aspose.Words 24.1, kontur renklerini yönetme deneyimini geliştirir, OLE nesnelerini ve LINQ raporlamasını geliştirir ve ayrıca yeni bir Bibliyografya Kaynakları genel API'sini sunar.

Aspose.Words 24.2 genişletilmiş Charts API'si, stil yönetimi ve LINQ seçenekleri. Aspose.Words'ün bu sürümü aynı zamanda işleme sırasında SvgSaveOptions'ı belirtme, Markdown dosyalarını yükleme konusunda daha esnek kontrol ve dipnotlar ve sonnotlar için referans metniyle çalışma özelliklerini de tanıttı.

Aspose.Words 24.3, yeni bir TIFF Okuyucu/Yazıcı ve WMF meta dosyaları için ikili raster işlemlerinin taklit edilmesini tanıtıyor. Aspose.Words 24.3 ayrıca Grafikler API'sını genişletmeye devam ediyor.

Aspose.Words 24.4, formatları kaydetme, bazı işleme seçeneklerini ve dijital imzalarla çalışmayı iyileştirir.

### Desteklenen Formatlar <sup>24.4</sup>

Modern **WebP** görüntü formatı, Aspose.Words için .NET Framework 4.6.2 ve üzerinde desteklenmektedir. Artık WebP görüntülerini belgelere okuyabilir, yerleştirebilir ve WebP formatında kaydedebilirsiniz.

WebP'nin şu anda yalnızca .NET Standard ve .NET Framework v4.6.2 ve üzerinde mevcut olduğunu lütfen unutmayın.

### İşleme ve Yazdırma

#### Kontur Renk Kontrolü <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/tr/net/aspose.words.drawing/stroke/) sınıfı, kontur renklerinin yönetimiyle ilgili bir dizi yeni genel özellik ile genişletildi: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) ve [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) ve [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### DrawingML Charts API Uzantısı <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** genişletilmeye devam ediyor.

#### @font-face Kurallarında Belirtilen Fontları Gömme <sup>24.4</sup>

Sonuç belgesinin yazı tipi tanımları içine @font-face kurallarında belirtilen fontları gömmek için yeni bir [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/) özelliği ekleyerek yeni bir yetenek eklendi.

#### Parlama ve Yansıma Biçimlendirme ile Çalışma <sup>24.4</sup>

Çizim nesnesi için parlama ve yansıma biçimlendirmesiyle çalışma yeteneği uygulandı.

### Belgeleri Yükleme ve Kaydetme

#### İşleme Sırasında SvgSaveOptions'ı Belirtin <sup>24.2</sup>

Oluşturma sırasında [SvgSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/svgsaveoptions/) belirtme yeteneği [ShapeRenderer](https://reference.aspose.com/words/tr/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/save/) ve [OfficeMathRenderer](https://reference.aspose.com/words/tr/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/tr/net/aspose.words.rendering/noderendererbase/save/) yöntemleri kullanılarak eklenmiştir.

#### Markdown Dosyalarını Yüklerken Boş Satırları Koruyun <sup>24.2</sup>

Markdown dosyalarını yüklerken boş satırları koruma özelliği eklendi.

#### Yeni bir TIFF Okuyucu/Yazıcı <sup>24.3</sup>

Aspose.Words için .NET Standard, .NET 6 ve sonraki sürümler için yeni bir TIFF okuyucu/yazıcı geliştirildi. Aspose.Words 24.3, JPEG ve Eski JPEG sıkıştırma tipleriyle TIFF görüntülerini okuma desteği ekledi ve okuma ve yazma işlemlerinin kalitesini önemli ölçüde iyileştirdi.

### Diğer

* `TextBox` OLE kontrolünün metnini değiştirme yeteneği, yeni [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) sınıfına yeni bir [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) özelliği eklenerek tanıtıldı. <sup>24.1</sup>
* Bibliyografya Kaynakları genel API'i, yeni sınıfları ve numaralandırmalarıyla yeni bir [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) ad alanı eklenmesi ve [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfına yeni bir [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) özelliği eklenmesi yoluyla uygulandı. <sup>24.1</sup>
* LINQ Raporlama Motoru için şablon söz dizimini kullanarak tür üyelerine erişimi sınırlandıran bir API sağlandı. <sup>24.1</sup>
* Gelişmiş stil yönetimi için yeni genel özellikler [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) ve [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/), [Style](https://reference.aspose.com/words/tr/net/aspose.words/style/) sınıfına eklendi. <sup>24.2</sup>
- Dipnotlar ve son notlar için gerçek referans işareti metnini alma işlevi, [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) özelliği ve [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) yöntemiyle geliştirilmiştir. <sup>24.2</sup>
- `LINQ Reporting Engine` için `Word 2016` grafikleriyle uyumluluk etkinleştirildi. <sup>24.2</sup>
- WMF meta dosyaları için ikili raster işlemlerinin taklit edilmesi uygulandı. <sup>24.3</sup>
- **SaveOptions** içindeki belgelere imza seçenekleri tanımlama yeteneği, yeni bir [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) sınıfı eklenerek ve [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) ve [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/) sınıflarına yeni özellikler eklenerek etkinleştirildi. <sup>24.4</sup>

{{% alert color="primary" %}}

[.NET 24.1 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.2 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.3 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.4 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## .NET 23.9, 23.10, 23.11, 23.12 için Aspose.Words

Aspose.Words 23.9, işleme seçeneklerini, meta dosyası oluşturma emülasyonunu ve markdown kaydetme seçeneklerini genişletir.

Aspose.Words 23.10, oluşturmayı iyileştirir, belgeleri yükleme ve kaydetme seçeneklerini genişletir ve kullanıcıların belgeleri yeni yöntemlerle birleştirmesine olanak tanır.

Aspose.Words 23.11, ek seçeneklerle birlikte grafik açıklamasındaki revizyonlar, XLSX formatı ve yazı tipleri ile çalışmayı geliştirir.

Aspose.Words 23.12, WebP görüntüleri desteğinin yanı sıra PDF ve OOXML belgeleriyle çalışmaya yönelik yeni özellikler ve numaralandırmalar sunar.

### İşleme ve Yazdırma

#### DrawingML Grafiklerinde Eksen Başlıklarını Özelleştirme <sup>23.9</sup>

DrawingML grafiklerinde eksen başlıklarını özelleştirme yeteneği, yeni bir genel sınıf [ChartAxisTitle](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartaxistitle/) ve [Title](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartaxis/title/) özelliğinin uygulanmasıyla kullanıma sunuldu.

#### Bir Paragraf <sup>23.9</sup> İçindeki Yazı Tiplerinin Dikey Konumunun Belirlenmesi

Artık yeni genel [BaselineAlignment](https://reference.aspose.com/words/tr/net/aspose.words/paragraphformat/baselinealignment/) özelliğini ve yeni [BaselineAlignment](https://reference.aspose.com/words/tr/net/aspose.words/baselinealignment/) numaralandırmasını kullanarak bir paragraf içindeki yazı tiplerinin dikey konumunu tanımlamak mümkün.

#### Ön Plan Renk Kontrolü <sup>23.10</sup>

**BaseForeColor** özelliği aracılığıyla [Fill](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/) ve [Stroke](https://reference.aspose.com/words/tr/net/aspose.words.drawing/stroke/) sınıflarına ön plan rengini değiştiriciler olmadan alma yeteneği eklendi.

#### Grafiklerin İşlevselliğinin Genişletilmesi <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartseries/) ve [ChartFormat](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartformat/) sınıflarının işlevselliği yeni yöntemler ve özelliklerle genişletildi.

#### Bir Görüntüyü Otomatik Olarak Ayarlayın ve Bir Şekle Sığdırın <sup>23.10</sup>

Yeni [FitImageToShape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/imagedata/fitimagetoshape/) yöntemi aracılığıyla bir görüntüyü otomatik olarak ayarlamanın ve belirli bir şekle sığdırmanın basit bir yolu sağlanmıştır.

#### DrawingML Grafik Açıklaması Girişleri için Varsayılan Yazı Tipi Formatı <sup>23.11</sup>

DrawingML grafiklerinin gösterge girişleri için varsayılan yazı tipi formatını belirtme yeteneği, [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) özelliği aracılığıyla eklenmiştir. Bu özellik, grafik öğeleri için daha akıcı ve tutarlı bir görünüm sağlayarak genel belge estetiğini geliştirir.

#### PDF'yi Reader <sup>23.12'de</sup> Açarken Sayfa Düzenini Belirleme

[PdfSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfsaveoptions/) sınıfına yeni bir [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) özelliğinin eklenmesi ve yeni bir [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) numaralandırmasının eklenmesiyle, bir belgeyi PDF okuyucuda açarken kullanılacak sayfa düzenini belirtme yeteneği eklenmiştir.

### Belgeleri Yükleme ve Kaydetme

#### Markdown <sup>23.9'da</sup> Görüntü URI'leri Oluşturmak için Klasör Adı Belirtme

[MarkdownSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/) sınıfı, Markdown belgesine yazılan görüntü URI'lerini oluşturmak için kullanılan klasörün adını belirtmeye olanak tanıyan [ImagesFolderAlias](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) özelliği eklenerek genişletildi.

#### PDF Çıktı Boyutunu Azaltın <sup>23.10</sup>

[OptimizeOutput](https://reference.aspose.com/words/tr/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) ayarlarını kullanırken çıktı boyutunu azaltmak için çeşitli PDF oluşturma optimizasyonları uygulandı.

#### TXT Belgelerini Yüklerken Köprüleri Tanıma <sup>23.10</sup>

TXT belgelerini yüklerken köprüleri tanıma özelliği, yeni bir [DetectHyperlinks](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) özelliği eklenerek uygulandı.

### Diğer

* Özellikle WMF kalem genişliği ve EMF kozmetik kalem genişliği için rasterleştirme boyutunu belirlemek için meta dosyası oluşturma emülasyonu uygulandı. Bunu başarmak için **ScaleWmfFontsToMetafileSize** özelliği [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/tr/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) özelliği ile değiştirildi ve [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/tr/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) özelliği eklendi. <sup>23.9</sup>
* [InsertDocumentInline](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/insertdocumentinline/) yöntemi kullanılarak, bir belgeyi başka bir belgeye mevcut imleç konumunda eklemek için basitleştirilmiş bir yöntem tanıtıldı. <sup>23.10</sup>
* Yeni [Locked](https://reference.aspose.com/words/tr/net/aspose.words/style/locked/) özelliğinin tanıtılmasıyla stil özelliklerine erişme ve bunları değiştirme yeteneği eklendi. <sup>23.10</sup>
* [CompositeNode](https://reference.aspose.com/words/tr/net/aspose.words/compositenode/) sınıfının metodlarına genel tip parametresi eklendi. <sup>23.10</sup>
* [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) ve [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) yöntemleri kullanılarak belirli bir revizyonun ne zaman kabul edilmesi/reddedilmesi veya reddedilmesi gerektiğini kontrol etmenin bir yolu uygulandı. Bu geliştirme, kullanıcılara revizyon süreci üzerinde daha hassas kontrol sağlar. <sup>23.11</sup>
* Yeni [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) numaralandırma türü ve yeni [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) özelliği aracılığıyla bir belgenin tüm bölümlerini aynı XLSX çalışma sayfasına yazabilme yeteneği sağlandı. <sup>23.11</sup>
* OOXML belgeleri için ZIP64 formatı uzantılarının nasıl kullanılacağını kontrol etmenin bir yolu, `OoxmlSaveOptions` sınıfının yeni Zip64Mode özelliği ve yeni Zip64Mode numaralandırması aracılığıyla uygulanmıştır. <sup>23.12</sup>
* WebP imajı desteği getirildi. Lütfen bu özelliğin yalnızca .NetStandart ve .NET6+ sürümlerinde mevcut olduğunu unutmayın. <sup>23.12</sup>

{{% alert color="primary" %}}

[.NET 23.9 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-9-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.10 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.11 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.12 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## .NET 23.5, 23.6, 23.7, 23.8 için Aspose.Words

Aspose.Words 23.5, grafik serisi verileriyle çalışma yeteneğini ve ODT belgeleriyle çalışma yeteneğini geliştirmenin yanı sıra üstbilgileri/altbilgileri ve bunların metin sarmasını da geliştirir.

Aspose.Words 23.6, oluşturma seçeneklerini genişletiyor, yeni bir dışa aktarma formatı ekliyor, LINQ raporlama ve LowCode araçlarını geliştiriyor.

Aspose.Words 23.7, raporlama yeteneklerini geliştirir, yeni bir dışa aktarma formatı ekler ve tablolarla ve dijital imzalarla çalışmayla ilgili değişiklikler sunar.

Aspose.Words 23.8, farklı formatların yeteneklerini genişletir, oluşturmayı geliştirir ve alanlarla çalışmak için yeni seçenekler ekler

### Desteklenen Formatlar

* Sürüm 23.6'dan başlayarak, bir belgeyi XLSX formatında kaydetmek mümkündür. Artık belgelerinizi Excel formatına dönüştürebilirsiniz. <sup>23.6</sup>
* Sürüm 23.7'den başlayarak, bir belge sayfasını veya şeklini EPS formatında kaydetmek mümkündür. <sup>23.7</sup>

### Yeni Format Özellikleri

* MOBI belgeleri için otomatik olarak İçindekiler Tablosu (TOC) oluşturma işlevi tanıtıldı. <sup>23.8</sup>
* [PdfEncryptionDetails](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) yapıcısı [PdfPermissions](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfpermissions/) ile genişletildi. <sup>23.8</sup>
* EMF meta dosyaları için dikey metnin şekillendirilmesi uygulandı. <sup>23.8</sup>

### İşleme ve Yazdırma

#### Grafik Serisi Verilerini Alma ve Değiştirme <sup>23.5</sup>

Grafik serisi verilerini alma ve değiştirme özelliği aşağıdakiler eklenerek sağlandı:

* yeni sınıflar: [ChartXValue](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* yeni numaralandırma türleri: [ChartXValueType](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Gelişmiş Tipografi <sup>23.6</sup> Desteği

WMF, EMF ve EMF+ oluşturmada Gelişmiş Tipografi desteği eklendi.

#### Sayfadaki Renkli İçerik <sup>23.6</sup>

Sayfanın renkli olup olmadığını belirten genel özellik [PageInfo.Colored](https://reference.aspose.com/words/tr/net/aspose.words.rendering/pageinfo/colored/) eklendi.

#### Grafik Veri Etiketlerini Biçimlendirme <sup>23.6</sup>

Grafik veri etiketleri için dolgu, kontur ve belirtme çizgisi biçimlendirmesini ayarlama yeteneği uygulandı.

### Mail Merge ve Raporlama

#### LINQ Raporlama Motoru <sup>23.6</sup> için Dinamik HTML Ekleme

LINQ Raporlama Motoru için yeni bir dinamik HTML ekleme yöntemi eklendi.

#### Mustache Etiketleri Desteği <sup>23.7</sup>

Mustache etiketleri artık [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/tr/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) ve [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/tr/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) yöntemlerinde desteklenmektedir.

#### LINQ Raporlama Motoru Şablonu Sözdizimi Güncellemeleri <sup>23.7</sup>

LINQ Reporting Engine şablon sözdizimi artık `ElementAt` ve ElementAtOrDefault uzantı yöntemlerini desteklemektedir.

#### İşlenen Görüntülerin Boyutunun Belirlenmesi <sup>23.8</sup>

İşlenen görüntülerin boyutunu piksel cinsinden belirtmek için yeni bir genel özellik olan [ImageSize](https://reference.aspose.com/words/tr/net/aspose.words.saving/imagesaveoptions/imagesize/) kullanıma sunuldu.

#### JSON Dize Değerleri için Boşlukları Koruyun – LINQ <sup>23.8</sup>

JSON dize değerlerine ilişkin boşlukları korumak için LINQ Raporlama Motoruna bir seçenek eklendi.

### LowCode <sup>23.6</sup>

Farklı türdeki belgeleri tek bir çıktı belgesinde birleştirmeyi amaçlayan yeni LowCode yöntemleri eklendi.

### Diğer

* Üstbilgi/altbilgilerde metin kaydırma desteği uygulandı. <sup>23.5</sup>
* [RemoveAllSignatures](https://reference.aspose.com/words/tr/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) yöntemiyle ODT dokümanlarından dijital imzaları kaldırma özelliği eklendi. <sup>23.5</sup>
* [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/) fonetik kılavuzunun temel ve ruby metnini elde etmek için [PhoneticGuide](https://reference.aspose.com/words/tr/net/aspose.words/run/phoneticguide/) kamu malı eklendi. <sup>23.5</sup>
* Yeni bir [SignatureValue](https://reference.aspose.com/words/tr/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) özelliği getirilerek dijital olarak imzalanmış bir belgeden bayt dizisi olarak dijital imza değeri alma yeteneği eklendi. <sup>23.7</sup>
* [Row](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/) ve [Cell](https://reference.aspose.com/words/tr/net/aspose.words.tables/cell/) sınıfları yeni genel üyelerle ([Row.NextRow](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/tr/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/tr/net/aspose.words.tables/cell/nextcell/) ve [Cell.PreviousCell](https://reference.aspose.com/words/tr/net/aspose.words.tables/cell/previouscell/)) genişletildi. <sup>23.7</sup>
* CITATION ve KAYNAKÇA alanları desteği eklendi. <sup>23.8</sup>

{{% alert color="primary" %}}

[.NET 23.5 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-5-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.6 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-6-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.7 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-7-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.8 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-8-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## .NET 23.1, 23.2, 23.3, 23.4 için Aspose.Words

Aspose.Words 23.1, tarama işlemi emülasyonunun performansını artırmanın yanı sıra belge dışa aktarma ve işleme kalitesini de geliştirir.

Aspose.Words 23.2, belgelerin MOBI formatında kaydedilmesini sağlar, grafik oluşturmayı geliştirir ve belgenin görünüm ayrıntılarında dikkate değer değişiklikler yapar.

Aspose.Words 23.3, yeni özelliklerle belgelerin içe aktarılmasını ve kaydedilmesini geliştirir ve ayrıca arka plan ve ön plan rengi ve radyal degradeyle işin kalitesini artırır.

Aspose.Words 23.4, bazı parametrelerin hesaplanmasını ve tablonun ve çevresindeki metnin konumlandırılmasını geliştirir.

### Performans geliştirmeleri

#### Raster İşlemlerinin Emülasyonu <sup>23.1</sup>

Meta dosyalar ile tarama işlemlerinin emülasyonunun performansı ve kalitesi önemli ölçüde iyileştirildi.

### Desteklenen Formatlar

#### MOBI <sup>23.2'ye</sup> aktar

Sürüm 23.2'den başlayarak, bir belgeyi MOBI formatında (ayrıca PRC, AZW – Amazon Kindle'ın kendi e-kitap dosya formatı olarak da bilinir) kaydetmek mümkündür. Artık yalnızca MOBI belgelerini yükleyemezsiniz, aynı zamanda dosyalarınızı MOBI formatına da aktarabilirsiniz.

### İşleme

#### Gölgelendirme Tema Renkleriyle Çalışma <sup>23.1</sup>

Gölgelendirme teması renkleriyle çalışma yeteneği uygulandı.

#### DML Grafikleri <sup>23.1'de</sup> R-kare Katsayısı Desteği

Oluşturma sırasında DML grafik trend çizgisi etiketlerinde R-kare katsayısı desteği eklendi.

#### Grafik Oluşturma İyileştirmeleri <sup>23.2</sup>

23.2'den bu yana grafik oluşturma önemli ölçüde iyileştirildi.

#### Arka Plan ve Ön Plan Renk Kontrolü <sup>23.3</sup>

[Fill](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/) sınıfı, arka plan ve ön plan renkleriyle ilgili bir dizi yeni ortak özellik ile genişletildi: [ForeThemeColor](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/forethemecolor/) ve [BackThemeColor](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/foretintandshade/) ve [BackTintAndShade](https://reference.aspose.com/words/tr/net/aspose.words.drawing/fill/backtintandshade/).

#### `SkiaSharp` Yerel Gölgelendirici <sup>23.3</sup> ile Radyal Degradeler

.NET Standard için `SkiaSharp` yerel gölgelendiriciyle radyal degradelerin oluşturulması uygulandı.

#### Tablo ile Çevreleyen Metin Arasındaki Mesafe <sup>23.4</sup>

[Table](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/) sınıfına yeni özellikler eklenerek tablo ile çevresindeki metin arasındaki mesafeyi ayarlama yeteneği eklendi: [DistanceLeft](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/distancetop/) ve [DistanceBottom](https://reference.aspose.com/words/tr/net/aspose.words.tables/table/distancebottom/).

### Belgeleri Yükleme ve Kaydetme

#### AZW3 Belgeleri için `TOC` Oluşturun <sup>23.1</sup>

[NavigationMapLevel](https://reference.aspose.com/words/tr/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) özelliği kullanılarak AZW3 belgeleri için `TOC` (içindekiler tablosu) oluşturma yeteneği eklendi.

#### Liste Öğelerini Markdown <sup>23.1'e</sup> Aktarma

[ListExportMode](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/listexportmode/) özelliğinin [MarkdownSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/markdownsaveoptions/) sınıfına eklenmesiyle, liste öğelerinin Markdown formatına aktarılmasını kontrol etmenin bir yolu sağlanmıştır.

#### Belge Kaydetme İlerleme Bildirimleri <sup>23.3</sup>

MOBI ve AZW3 formatları için ilerleme bildirimlerinin kaydedilmesi uygulandı.

#### Cümle ve Kelime Aralığı Ayarı <sup>23.3</sup>

[AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/tr/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) özelliğinin tanıtılmasıyla, belgenin içe aktarımı sırasında cümle ve sözcük aralığının otomatik olarak ayarlanıp ayarlanamayacağını belirtme yeteneği eklendi.

### Diğer

* [JustificationMode](https://reference.aspose.com/words/tr/net/aspose.words/document/justificationmode/) özellik uygulaması <sup>23.2</sup> aracılığıyla bir belgenin karakter aralığı ayarını belirtme yeteneği eklendi
* Aspose.Words'e metin kutuları, dipnotlar ve son notların kelime sayısı istatistiklerine dahil edilip edilmeyeceği talimatını vermenin yolu, [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/tr/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) özelliği <sup>23.2</sup> eklenerek sağlanmıştır
* [AutomaticallyUpdate](https://reference.aspose.com/words/tr/net/aspose.words/style/automaticallyupdate/) özelliği <sup>23.2</sup> aracılığıyla, stilin uygun değere göre otomatik olarak yeniden tanımlanıp tanımlanmayacağını belirlemeye olanak tanıyan yeni bir belge stili seçeneği eklendi
* [IsPhoneticGuide](https://reference.aspose.com/words/tr/net/aspose.words/run/isphoneticguide/) özelliği <sup>23.4</sup> kullanılarak [Run](https://reference.aspose.com/words/tr/net/aspose.words/run/)'in fonetik bir kılavuz çalışması olup olmadığını belirleme yeteneği eklendi
* [ChartAxisCollection](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chartaxiscollection/) sınıfı tanıtılarak ve [Chart.Axes](https://reference.aspose.com/words/tr/net/aspose.words.drawing.charts/chart/axes/) özelliği <sup>23.4</sup> eklenerek birleşik grafiklerin serileri ve eksenleriyle çalışmanın basit bir yolu uygulandı
* [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/) sınıfı <sup>23.4'e</sup>, şekle göre konumlandırma ve boyutlandırmaya bağlı yeni genel özellikler eklendi
* Otomatik metin renk çözünürlüğü için renk parlaklığı hesaplamasının doğruluğu ve performansı, Microsoft Word <sup>23.4'ün</sup> en son sürümlerine uygun olarak iyileştirildi

{{% alert color="primary" %}}

[.NET 23.1 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-1-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.2 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-2-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.3 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-3-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.4 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-4-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## .NET 22.9, 22.10, 22.11, 22.12 için Aspose.Words

Aspose.Words 22.9, belgeleri yükleme ve kaydetme seçeneklerini genişletir ve diğer bazı seçeneklerle etkileşimi geliştirir.

Aspose.Words 22.10, bulma ve değiştirme seçeneklerini geliştirir, OLE nesnelerini geliştirir ve liste işlevselliğini genişletir.

Aspose.Words 22.11, zaten tanıdık olan nesnelerle daha rahat çalışmak için yeni seçeneklerle işlevselliğini genişletiyor: alanlar, yazdırma, OLE ve yapılandırılmış belge etiketleri.

Aspose.Words 22.12, oluşturma yeteneklerini geliştirir ve bir belgeyi yüklerken/kaydederken kenar boşluklarıyla çalışma seçenekleri sunar.

### Performans İyileştirmeleri <sup>22.12</sup>

Spesifikasyon uyumluluğunu korumak için PDF'ye dönüştürülürken grafik durumu iç içe yerleştirme derinliğini önemli ölçüde azaltan bir optimizasyon kullanıma sunuldu.

### İşleme ve Yazdırma

#### Renkli Olmayan Sayfaları Renkli Yazıcıda Yazdırma <sup>22.11</sup>

[ColorPrintMode](https://reference.aspose.com/words/tr/net/aspose.words.rendering/colorprintmode/) numaralandırmasına yeni bir **GrayscaleAuto** değeri eklenerek özel renkli/gri tonlamalı yazdırma modu uygulandı.

Yeni yazdırma özelliği, aygıtın renkli yazdırmayı desteklemesi durumunda kullanıcıların renkli olmayan sayfaların nasıl yazdırılacağını denetlemesine olanak tanır. Bu özellik, kullanıcıların renkli olmayan sayfaları yalnızca gri tonlamalı yazdırma modunu kullanarak otomatik olarak yazdırmak istemeleri durumunda yararlı olabilir.

#### Yeni Kenar Oluşturma Özellikleri <sup>22.12</sup>

Yeni kamu mülkleri [ThemeColor](https://reference.aspose.com/words/tr/net/aspose.words/border/themecolor/) ve [TintAndShade](https://reference.aspose.com/words/tr/net/aspose.words/border/tintandshade/) tanıtıldı.

#### DrawingML Oluşturma <sup>22.12</sup> için Doğrusal Trend Çizgisi Formülü

DrawingML grafikleri için doğrusal eğilim çizgisi formülü oluşturma uygulandı.

#### Google Noto Yazı Tipleri <sup>22.12</sup> için Yazı Tipi Geri Dönüş Ayarları

Google Noto yazı tipleri için önceden tanımlanmış yazı tipi geri dönüş ayarları güncellendi.

### Belgeleri Yükleme ve Kaydetme

#### PDF Boyutunu Küçültmek için Üstbilgi veya Altbilgi Şekillerini Önbelleğe Alın <sup>22,9</sup>

Çıktı PDF dosyasının boyutunu azaltmak için üstbilgi/altbilgi şekillerini önbelleğe alma yeteneği, yeni bir **CacheHeaderFooterShapes** özelliği eklenerek uygulanmıştır.

#### Belge Yüklerken Otomatik Numaralandırma Algılama <sup>22.9</sup>

Metin yükleme sırasında [AutoNumberingDetection](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) özelliğini belirtme yeteneği, genişletilmiş [TxtLoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/) sınıfı aracılığıyla uygulanmıştır.

#### Belirli Bir Teminat Türünün Belirlenmesi <sup>22.12</sup>

Verilen bölüm için belirli bir [Margin](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/margins/) türünü belirtme yeteneği uygulandı.

### Ara ve Karşılaştır <sup>22.10</sup>

Bul ve değiştir seçeneklerinde [StructuredDocumentTag](https://reference.aspose.com/words/tr/net/aspose.words.markup/structureddocumenttag/)'i yok sayma özelliği, [FindReplaceOptions](https://reference.aspose.com/words/tr/net/aspose.words.replacing/findreplaceoptions/) sınıfına yeni bir [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/tr/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) özelliği eklenerek uygulanmıştır.

### Diğer

* FieldEQ'yu OfficeMath olarak almaya yönelik yeni bir özellik eklendi. <sup>22.9</sup>
* Satır düzeyinde Group türünde yapılandırılmış belge etiketlerinin oluşturulmasına izin verildi. <sup>22.9</sup>
* OLE nesneleri ve kontrolleri artık bir belge HTML'ye dönüştürülürken meta dosya görüntüleri olarak değerlendiriliyor. <sup>22.10</sup>
* [List](https://reference.aspose.com/words/tr/net/aspose.words.lists/list/) sınıfına yeni bir [HasSameTemplate](https://reference.aspose.com/words/tr/net/aspose.words.lists/list/hassametemplate/) yöntemi getirilerek, belirli bir listenin karşılaştırılan listeyle aynı şablondan oluşturulduğunu kontrol etmeye yönelik yeni bir özellik eklendi. <sup>22.10</sup>
* [Citation](https://reference.aspose.com/words/tr/net/aspose.words.markup/sdttype/) türünde yeni yapılandırılmış belge etiketleri oluşturma yeteneği eklendi. <sup>22.11</sup>
* Saha güncelleme ilerlemesinin takip edilebilmesi sağlandı. <sup>22.11</sup>
* Kullanıcıların kaynak belgedeki OLE eklerini çıktı PDF belgesine yerleştirmesine olanak tanıyan yeni bir **EmbedAttachments** özelliği kullanıma sunuldu. <sup>22.11</sup>

{{% alert color="primary" %}}

[.NET 22.9 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-9-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.10 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-10-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.11 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-11-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.12 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-12-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## .NET 22.5, 22.6, 22.7, 22.8 için Aspose.Words

Aspose.Words 22.5, yeni yükleme formatları ve yeni yazdırma sayfası boyutu için destek sunmanın yanı sıra bazı işleme seçeneklerini de geliştirir.

Aspose.Words 22.6, PDF'yi diğer formatlara dönüştürme olanaklarını genişletmenin yanı sıra DrawingML ve düz metin dolgu efektiyle çalışmayı geliştirir.

Aspose.Words 22.7, oluşturma özellikleriyle çalışma olanaklarını geliştirir ve ayrıca HTML içe aktarma ve PDF'ye dışa aktarmayla çalışmaya yönelik yeni özellikler ekler.

Aspose.Words 22.8 yeni bir dışa aktarma formatı sunuyor ve çeşitli işleme algoritmalarını geliştiriyor.

API, daha esnek ve kullanışlı geliştirme için geliştirilmiştir.

### Desteklenen Formatlar

* [LoadFormat](https://reference.aspose.com/words/tr/net/aspose.words/loadformat/) numaralandırmasına yeni değerler eklenerek EPUB ve XML belgelerini yükleme desteği getirildi. 22.5 sürümünden itibaren EPUB ve XML belgelerini Aspose.Words belge modeline yükleyip herhangi bir [desteklenen formatlar](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/)'e dönüştürmek mümkün. <sup>22.5</sup>
* Sürüm 22.8'den başlayarak, bir belgeyi AZW3 formatında (Amazon Kindle'ın tescilli e-kitap dosyası formatı) (KF8, formatın diğer adıdır) kaydetmek mümkündür. Artık yalnızca AZW3 belgelerini yüklemekle kalmayıp aynı zamanda dosyalarınızı derlenmiş bir EPUB olan AZW3 formatına da aktarabilirsiniz. <sup>22.8</sup>

### İşleme ve Yazdırma

#### Yeni Baskı Boyutu <sup>22,5</sup>

[PaperSize](https://reference.aspose.com/words/tr/net/aspose.words/papersize/) numaralandırmasına yeni bir değer getirilerek "Zarf No. 10" yazdırma sayfası boyutu desteği eklendi.

#### MathML Formüllerini Oluşturma <sup>22.5</sup>

MathML formüllerinin etrafında bir kenarlık kutusunun oluşturulması ve bu tür formüller için karakterler oluşturulurken yazı tipi tespiti iyileştirildi.

#### DML Grafiği İyileştirmeleri <sup>22.6</sup>

DrawingML grafikleri genel API, degrade, doku ve desen dolgularını destekleyecek şekilde genişletildi.

#### Glyph, OpenType <sup>22.7</sup> için Ayrıştırmanın Özetini Veriyor

OpenType (CFF) yazı tipleri için Aspose.Words'in kendi glyph anahatlarının ayrıştırılması uygulandı.

Daha önce OpenType (CFF) yazı tipleri için glyph ayrıştırması GDI+ aracılığıyla gerçekleştiriliyordu. Yani artık GDI+'ın mevcut olmadığı durumlarda (Java, .NET Standard platformları, Linux OS vb.) çalışıyor. Glyph, WordArt, metin efektleri, bazı Office Math özellikleri ve diğerleri gibi belirli durumlarda ayrıştırmanın gerekli olduğunu ana hatlarıyla belirtiyor.

#### Şekil Gölge Formatını Ayarla <sup>22.7</sup>

Yeni bir [ShadowFormat](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shapebase/shadowformat/) özelliği eklenerek şekil nesnesinin gölge formatını ayarlama yeteneği sağlandı.

#### Tablo <sup>22.8'de</sup> Hücre Aralığı Desteği

Düzenleme motoru artık önemli ölçüde iyileştirildi: tablolarda çok karmaşık bir hücre aralığı mekanizması uygulandı.

#### Semboller için Yazı Tipi Değişikliği <sup>22.8</sup>

Semboller için yazı tipi değişimi iyileştirildi.

#### Grafik Ekseni Etiket Döndürme Algoritması <sup>22.8</sup>

Grafik ekseni etiketlerinin döndürme algoritması iyileştirildi.

### Belgeleri Yükleme ve Kaydetme

#### PDF'yi Mizanpaj Modeli <sup>22.6</sup> Olmadan Sabit Sayfa Formatına Yükleme ve Dönüştürme

PDF belgelerini yüksek doğruluk ve performansla sabit sayfa formatlarına yükleme ve dönüştürme yeteneği uygulanmıştır.

#### Yeni HTML İçe Aktarma Modu <sup>22.7</sup>

[HtmlInsertOptions](https://reference.aspose.com/words/tr/net/aspose.words/htmlinsertoptions/) numaralandırmasına yeni bir değer eklenerek blok düzeyindeki öğeler için yeni bir HTML içe aktarma modu tanıtıldı.

#### PDF/UA-1'e Dönüştürme WCAG 2.0 <sup>22.7</sup> ile uyumlu

Bir belgeyi WCAG 2.0 ile uyumlu PDF/UA-1 formatına dönüştürme desteği eklendi.

Dolayısıyla, müşterinin erişilebilir bir Word belgesi varsa ve onu Aspose.Words aracılığıyla dönüştürme özelliklerini belirterek PDF/UA-1'e dönüştürürse çıktı WCAG 2.0 uyumlu olacaktır.

WCAG veya Web İçeriği Erişilebilirlik Yönergeleri, W3C tarafından dünyanın her yerindeki bireyler ve kuruluşlarla işbirliği içinde geliştirilen bir dizi yönergedir. Artık Aspose.Words ile belgenizi, WCAG 2.0 uyumlu PDF belgeleri oluşturmaya uygun çıktı PDF/UA-1 biçimine dönüştürebilirsiniz.

WCAG 2.0'ın PDF/UA-1 spesifikasyonunda belirtilmeyen iki ek gereksinime sahip olduğunu belirtmekte fayda var:

* kontrast gereksinimleri

* multimedya içeriğini etiketlemeye yönelik gereksinimler

Ancak her iki gereksinim de bizim Word'den PDF'ye dönüştürme durumumuzla alakalı değil.

### Diğer

* MS Word davranışını taklit eden düz metin dolgu efektini devralma istisnası uygulandı. <sup>22.6</sup>
* `DATABASE` alanlarının desteği eklendi. Bu alan türünü kullanarak örneğin bir veritabanı sorgusunun sonuçlarını bir Microsoft Word tablosunda gösterebilirsiniz. <sup>22.7</sup>

{{% alert color="primary" %}}

[.NET 22.5 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-5-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.6 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-6-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.7 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-7-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 22.8 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-22-8-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## Ayrıca bakınız

{{% alert color="primary" %}}

Bu sayfada son 2 yılın en son sürüm haberleri yer almaktadır. Önceki sürümlere ilişkin ayrıntılar için ilgili bölümlerdeki [Sürüm notları'](/words/net/release-notes/) sayfalarına bakın.

{{% /alert %}}