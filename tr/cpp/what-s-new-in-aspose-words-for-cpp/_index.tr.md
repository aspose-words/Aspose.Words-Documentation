---
title: Yenilikler
second_title: Aspose.Words için C++
articleTitle: İçerideki yenilikler Aspose.Words için C++
linktitle: İçerideki yenilikler Aspose.Words için C++
type: docs
description: "Aspose.Words için C++ her gün genişler ve gelişir. Bu sayfada, ürünün devasa ve en ilginç özellikleri hakkında bilgi edinebilirsiniz."
weight: 2
url: /tr/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Bu sayfa, son sürümlerde tanıtılan en ilginç yeni Aspose.Words özellikleri açıklamaktadır.

## Aspose.Words için C++ 24.9

Aspose.Words 24.9 group shape ekleme ve StructuredDocumentTag ekleme işlemlerini DocumentBuilder aracılığıyla tanıtır, mezuniyetlerle radyal grafik oluşturmayı geliştirir, dijital imzaları XAdES-EPES destekler, Markdown altı çizili tanıma ekler ve dipnot / sonnot ayırıcılarına erişim sağlar.

### Oluşturma ve Yazdırma

#### Radyal Grafiklerde Mezuniyetler

Radyal grafiklerde mezuniyetlerin oluşturulması uygulanmıştır.

### Belgeleri Dönüştürme, Yükleme ve Kaydetme

#### Markdown Dosyaları Yüklerken Biçimlendirmenin Altını Çizin

Markdown belgeleri yüklerken altı çizili biçimlendirmeyi tanıma seçeneği, yeni bir genel özellik [ImportUnderlineFormatting]() eklenerek eklenmiştir.

### Dijital İmzalar

#### Belgeleri şununla İmzalayın XAdES-EPES

Belgeleri imzalama yeteneği XAdES-EPES seviye XML - DSig imzalar, yeni bir genel özellik [XmlDsigLevel]() ve yeni bir genel numaralandırma [XmlDsigLevel]() eklenerek kullanılmıştır.

### Diğer

* Group shapes 'e yeni bir genel yöntem [InsertGroupShape]() eklendi.
* Bir belgeye **StructuredDocumentTags** eklemek için yeni bir genel yöntem [InsertStructuredDocumentTag]() eklendi.
* Dipnot / sonnot ayırıcılarına genel erişim, birkaç genel sınıf ve özellik eklenerek sağlanmıştır.

{{% alert color="primary" %}}

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.9 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words için C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 derlemeler için seçenekleri genişletir, oluşturma yeteneklerini geliştirir ve diğer bazı seçenekleri genişletir.

Aspose.Words 24.6 oluşturma seçeneklerini iyileştirir, arama ve karşılaştırma işlevselliğini geliştirir ve diğer birçok özelliği genişletir.

Aspose.Words 24.7 ActiveX ile çalışma şeklinizi değiştirir, oluşturma yeteneklerini genişletir ve Markdown ve XLSX biçimlerine dışa aktarır.

### Desteklenen Formatlar

24.7 sürümünden başlayarak, engelli kullanıcıların erişilebilirliğini sağlamak için PDF/UA-2 sürümüne dışa aktarma desteklenir.

### Oluşturma ve Yazdırma

#### Çizelge, Şekil ve Çizimdeki değişikliklerml <sup>24.5</sup>

- Resimlerle sınırlı önceki işlevleri genişleten SVG grafikler için DrawingML efekt oluşturma uygulandı.
- **ChartSeriesGroup** ve **ChartSeriesGroupCollection** sınıfları ve **SeriesGroups** özelliği eklenerek birleşik grafikler oluşturma ve seri grupları içinde boşluk genişliği, üst üste binme ve kabarcık ölçeği gibi özellikleri ayarlama desteği getirildi.
- Şekillerin SoftEdge etkisini değiştirme işlevi, **SoftEdgeFormat** sınıfı eklenerek uygulanmıştır.
- Şekillerin ayar değerlerini değiştirme yeteneği, **AdjustmentCollection** ve **Adjustment** genel sınıfları ve **Adjustments** özelliği eklenerek uygulanmıştır.

#### Çizelge, Şekil ve Çizimdeki Değişiklikler <sup>24.6</sup>

- Grafik yetenekleri geliştirildi. Artık aşağıdakiler de dahil olmak üzere daha geniş bir grafik yelpazesi oluşturabilirsiniz *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* grafikler, *Box & Whisker* grafikler, *Waterfalls* ve *Funnels*. Bu, verilerinizi daha çeşitli ve bilgilendirici bir şekilde görselleştirmenizi sağlar.
- Gölge biçimlendirme için renk kontrolü geliştirildi. Gölge renklerine erişerek belgelerinizin görünümü üzerinde daha hassas kontrol sahibi olabilirsiniz.
- Arka plan oluşturma için performans artışı iyileştirildi. Yerel döşeme teknolojisi sayesinde küçük öğeler içeren arka planların oluşturulmasını önemli ölçüde hızlandırabilirsiniz.
- Şekiller için gerçekçi degradeler eklendi. Artık daha parlak bir görünüm için Microsoft Word görsel stilini taklit ederek doğrusal olmayan degradelere sahip DML şekiller oluşturabilirsiniz.

#### Grafik Veri Etiketi Özelleştirme <sup>24.7</sup>

**Orientation** ve **Rotation** gibi grafik veri etiketlerini özelleştirme yeteneği eklendi.

#### Liste Seviyeleri için Özel Numara Stili <sup>24.7</sup>

[CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) genel mülkü için bir ayarlayıcı eklendi. Artık liste seviyeleri için özel bir numara stili tanımlayabilirsiniz.

#### ActiveX ile çalışmadaki değişiklikler <sup>24.7</sup>

- ActiveX nesnelerinin özellikleri artık değiştirilebilir ve davranışları üzerinde daha fazla denetim sağlar.
- Dinamik etkileşimi etkinleştirmek için radyo düğmesi ActiveX denetiminin değerini değiştirme yeteneği eklendi.
- Bir ActiveX onay kutusunu "işaretli" veya "işaretlenmemiş" olarak değiştirme yeteneği eklendi.

### Belgeleri Yükleme ve Kaydetme

#### Bağlantıları Markdown Biçimine <sup>24.7 Dışa Aktarma</sup>

Bağlantıların Markdown biçiminde dışa aktarılmasını kontrol etme yeteneği, [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) özelliğinin uygulanmasıyla eklenmiştir.

### Ara ve Karşılaştır

#### Gelişmiş Karşılaştırma Seçenekleri <sup>24.6</sup>

Geliştirilmiş karşılaştırma işlevselliği ile veri analizi iş akışlarını kolaylaştırma yeteneği eklendi. Buna yeni bir **IgnoreStoreItemId** seçeneği ve gelişmiş karşılaştırmalar için yeniden tasarlanmış bir arayüz dahildir.

### Diğer

- Bir belgedeki boş sayfaları ortadan kaldırma işlevi [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) yöntemi eklenerek uygulanmıştır. <sup>24.5</sup>
- Belge yüklemeden VBA makro olup olmadığını denetleme yeteneği, **HasMacros** özelliği eklenerek sağlanmıştır. <sup>24.5</sup>
- Yeni bir **DateTimeUtc** özelliği eklendi – bu, yorumlar için daha kesin bir zaman damgası sağlayarak organizasyonu ve izlenebilirliği iyileştirir. <sup>24.6</sup>
- XLSX biçimine kesintisiz dışa aktarma için datetime biçimi artık otomatik olarak algılanır. <sup>24.7</sup>
- Bir VBA projesinin korunup korunmadığını doğrulamanıza izin veren [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/) ortak mülkü eklenmiştir. <sup>24.7</sup>

{{% alert color="primary" %}}

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.5 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.6 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.7 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words için C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 kontur renklerini yönetme deneyimini geliştirir, OLE nesnelerini geliştirir ve yeni bir Kaynakça sunar Kaynaklar herkese açık API.

Aspose.Words 24.2 genişletilmiş Grafikler API ve stil yönetimi. Aspose.Words'nin bu sürümü ayrıca oluşturma sırasında SvgSaveOptions belirtme, Markdown dosyalarını daha esnek kontrol yükleme ve dipnotlar ve sonnotlar için referans metni ile çalışma özelliğini de tanıttı.

Aspose.Words 24.3, WMF meta dosyaları için ikili raster işlemlerinin Öykünmesini sunar ve ayrıca API Grafiklerini genişletmeye devam eder.

Aspose.Words 24.4 bazı oluşturma seçeneklerini geliştirdiği gibi dijital imzalarla çalışmayı da geliştirir.

### Oluşturma ve Yazdırma

#### Kontur Renk Kontrolü <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) sınıfı, kontur renklerini yönetmekle ilgili bir dizi yeni genel özellik ile genişletildi: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) ve [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) ve [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Çizim ML Çizelgeleri API Uzantı <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** genişletilmeye devam ediyor.

#### @font-face Kurallarında Bildirilen Fontları Göm <sup>24.4</sup>

@font-face kurallarında bildirilen fontları, yeni bir [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) özelliği eklenerek ortaya çıkan belgenin font tanımlarına gömme özelliği eklendi.

#### Işıma ve Yansıma Biçimlendirmesiyle Çalışın <sup>24.4</sup>

Bir çizim nesnesi için ışıma ve yansıma biçimlendirmesiyle çalışma yeteneği uygulanmıştır.

### Belgeleri Yükleme ve Kaydetme

#### Oluşturma Sırasında SvgSaveOptions belirtin <sup>24.2</sup>

Oluşturma sırasında [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) belirtme özelliği [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) kullanılarak eklenmiştir.[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) ve [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) yöntemler.

#### Markdown dosyaları <sup>24.2 yüklerken Boş Satırları Koru</sup>

Markdown dosyaları yüklerken boş satırları koruma özelliği eklendi.

### Diğer

- `TextBox` OLE denetiminin metnini değiştirme özelliği, yeni **TextBoxControl** sınıfına yeni bir **Text** özelliği eklenerek kullanıma sunulmuştur. <sup>24.1</sup>
- Kaynakça Kaynakları genel API, yeni sınıfları ve numaralandırmalarıyla yeni bir ad alanı [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) ekleyerek ve [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) sınıfına yeni bir [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) özelliği ekleyerek uygulandı. <sup>24.1</sup>
- Gelişmiş stil yönetimi için [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) sınıfına yeni genel özellikler [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) ve [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) eklenmiştir. <sup>24.2</sup>
- Dipnotlar ve sonnotlar için gerçek referans işareti metnini alma işlevi [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) özelliği ve [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) yöntemi ile geliştirilmiştir. <sup>24.2</sup>
- WMF meta dosyaları için ikili raster işlemlerinin öykünmesi uygulandı. <sup>24.3</sup>
- **SaveOptions** içindeki belgeler için imza seçeneklerini tanımlama yeteneği, yeni genel üyelere sahip yeni bir **DigitalSignatureDetails** sınıfı eklenerek ve [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) ve [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) sınıflarına yeni özellikler eklenerek etkinleştirildi. <sup>24.4</sup>

{{% alert color="primary" %}}

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.1 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.2 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.3 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 24.4 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words için C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 oluşturma seçeneklerini, meta dosyası oluşturma öykünmesini ve markdown kaydetme seçeneklerini genişletir.

Aspose.Words 23.10 oluşturmayı iyileştirir, belgeleri yükleme ve kaydetme seçeneklerini genişletir ve kullanıcıların belgeleri yeni yollarla birleştirmesine olanak tanır.

Aspose.Words 23.11 grafik göstergesindeki düzeltmeler, XLSX biçim ve yazı tipleriyle çalışmayı ek seçeneklerle geliştirir.

Aspose.Words 23.12, PDF ve OOXML belgelerle çalışmak için yeni özellikler ve numaralandırmaların yanı sıra WebP görüntüler için destek sunar.

### Oluşturma ve Yazdırma

#### DrawingML Grafiklerinde Eksen Başlıklarını Özelleştirme <sup>23.9</sup>

DrawingML grafiklerinde eksen başlıklarını özelleştirme özelliği, yeni bir genel sınıf **ChartAxisTitle** ve [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) özelliğinin uygulanmasıyla tanıtıldı.

#### Bir Paragraf içindeki Yazı Tiplerinin Dikey Konumunu Belirleme <sup>23.9</sup>

Yeni genel [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) özelliğini ve yeni [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) numaralandırmasını kullanarak bir paragraf içindeki yazı tiplerinin dikey konumunu tanımlamak artık mümkün.

#### Ön Plan Renk Kontrolü <sup>23.10</sup>

**BaseForeColor** özelliği aracılığıyla [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) ve [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) sınıflarına değiştiriciler olmadan ön plan rengini alma yeteneği eklendi.

#### Grafiklerin İşlevselliğini Genişletme <sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) ve [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) sınıflarının işlevselliği yeni yöntemler ve özelliklerle genişletildi.

#### Görüntüyü Otomatik Olarak Ayarlayın ve Şekle Sığdırın <sup>23.10</sup>

Yeni [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) yöntemi ile bir görüntüyü belirli bir şekle otomatik olarak ayarlamanın ve sığdırmanın basit bir yolu sağlanmıştır.

#### ML Grafik Gösterge Girdilerini Çizmek için Varsayılan Yazı Tipi Biçimlendirmesi <sup>23.11</sup>

DrawingML grafiklerinin gösterge girişleri için varsayılan yazı tipi biçimlendirmesini belirtme yeteneği [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) özelliği aracılığıyla eklenmiştir. Bu özellik, grafik öğeleri için daha akıcı ve tutarlı bir görünüm sağlayarak genel belge estetiğini geliştirir.

#### Reader <sup>23.12'da PDF'i Açarken Sayfa Düzenini Belirtin</sup>

Bir belgeyi PDF okuyucuda açarken kullanılacak sayfa düzenini belirleme yeteneği, [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) sınıfına yeni bir **PageLayout** özelliğinin getirilmesi ve yeni bir **PdfPageLayout** numaralandırmasının getirilmesi yoluyla eklenmiştir.

### Belgeleri Yükleme ve Kaydetme

#### Markdown <sup>23.9 içinde URIs Resmi Oluşturmak için Bir Klasör Adı Belirtme</sup>

[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) sınıfı, Markdown belgesine yazılan URIs görüntüsünü oluşturmak için kullanılan klasörün adını belirtmeye izin veren [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) özelliği dahil edilerek genişletildi.

#### PDF Çıktı Boyutunu Küçült <sup>23.10</sup>

[OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) ayarları kullanılırken çıktı boyutunu küçültmek için çeşitli PDF işleme optimizasyonları uygulanmıştır.

#### TXT Belgeleri Yüklerken Köprüleri Tanıma <sup>23.10</sup>

TXT belgeleri yüklerken köprüleri tanıma özelliği, yeni bir [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) özelliği eklenerek uygulanmıştır.

### Diğer

- Rasterleştirme boyutunu belirlemek için meta dosyası oluşturma öykünmesi, özellikle WMF kalem genişliği ve EMF kozmetik kalem genişliği için uygulanmıştır. Bunu başarmak için **ScaleWmfFontsToMetafileSize** özelliği [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) özelliği ile değiştirildi ve [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) özelliği eklendi. <sup>23.9</sup>
* [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) yöntemi kullanılarak, geçerli imleç konumunda bir belgeyi başka bir belgeye eklemek için basitleştirilmiş bir yöntem getirilmiştir. <sup>23.10</sup>
* Stil özelliklerine erişme ve bunları değiştirme yeteneği, yeni [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) özelliğinin eklenmesiyle eklenmiştir. <sup>23.10</sup>
* [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) sınıfının yöntemlerine genel bir tür parametresi eklenmiştir. <sup>23.10</sup>
* [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) ve [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) yöntemleri kullanılarak belirli bir revizyonun ne zaman kabul edilmesi / reddedilmesi gerektiğini kontrol etmenin bir yolu uygulanmıştır. Bu geliştirme, kullanıcılara revizyon süreci üzerinde daha ince kontrol sağlar. <sup>23.11</sup>
* Bir belgenin tüm bölümlerini aynı XLSX çalışma sayfasına yazma yeteneği, yeni [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) numaralandırma türü ve yeni [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) özelliği aracılığıyla sağlanmıştır. <sup>23.11</sup>
* ZIP64 biçim uzantılarının OOXML belgeler için nasıl kullanılacağını kontrol etmenin bir yolu, `OoxmlSaveOptions` sınıfının yeni Zip64Mode özelliği ve yeni Zip64Mode numaralandırması aracılığıyla uygulanmıştır. <sup>23.12</sup>
* WebP resim desteği tanıtıldı. Lütfen bu özelliğin yalnızca aşağıdakiler için mevcut olduğunu unutmayın.NetStandart ve .NET6 + sürümler. <sup>23.12</sup>

{{% alert color="primary" %}}

Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 23.9 Sürüm Notları](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 23.10 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 23.11 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Hakkında daha fazla bilgi edinin [Aspose.Words için C++ 23.12 Sürüm Notları](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Ayrıca bakınız

{{% alert color="primary" %}}

Bu sayfa, son 2 yılın en son sürüm haberlerini içerir. Önceki sürümlerle ilgili ayrıntılar için bkz. [Sürüm Notları'](/words/cpp/release-notes/) ilgili bölümlerdeki sayfalar.

{{% /alert %}}
