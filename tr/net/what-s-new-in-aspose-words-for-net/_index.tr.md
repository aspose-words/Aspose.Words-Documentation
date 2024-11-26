---
title: Ne var ne yok
second_title: .NET için Aspose.Words
articleTitle: .NET için Aspose.Words'teki yenilikler
linktitle: .NET için Aspose.Words'teki yenilikler
type: docs
description: ".NET için Aspose.Words her gün genişler ve gelişir. Bu sayfada ürünün büyük ve en ilginç özellikleri hakkında bilgi edinebilirsiniz."
weight: 10
url: /tr/net/what-s-new-in-aspose-words-for-net/
timestamp: 2024-11-18-12-56-02
---

Bu sayfada son sürümlerde tanıtılan en ilginç yeni Aspose.Words özellikleri açıklanmaktadır.

## Aspose.Words için .NET 24.9, 24.10, 24.11

Aspose.Words 24.9, DocumentBuilder aracılığıyla grup şekli ekleme ve StructuredDocumentTag eklemeyi sunar, derecelendirmelerle radyal grafik oluşturmayı geliştirir, XAdES-EPES desteğiyle dijital imzaları iyileştirir, Markdown alt çizgi tanıma ekler ve dipnot/sonnot ayırıcılarına erişim sağlar.

Aspose.Words 24.10, CommandButton oluşturma, yeni şekil görünürlük denetimi, şekilleri gruplama yeteneği, tablolar için geliştirilmiş Markdown dışa aktarma, Pasta ve Çörek grafikleri için grafik biçimlendirme, daha iyi Big5 kodlama işleme ve güncel olmayan Tayvan yazı tipleri için destek ile gelişmiş ActiveX denetim desteği sunar.

Aspose.Words 24.11, AI destekli belge özetleme, gelişmiş oluşturma seçenekleri, belge özelliklerine geliştirilmiş erişim ve ActiveX denetimi altyazısını sunar.

### AI-güçlendirilmiş Özellikler <sup>24.11</sup>

**OpenAI** ve **Google** üretici dil modellerini kullanarak belge özetleme desteği, genel üyeleriyle [Aspose.Words.AI](https://reference.aspose.com/words/net/aspose.words.ai/) ad alanı eklenerek entegre edilmiştir.

### Oluşturma ve Yazdırma

#### Radyal Grafiklerde Derecelendirmeler <sup>24.9</sup>

Radyal grafiklerde derecelendirmelerin oluşturulması uygulandı.

#### CommandButton ActiveX Denetimleri <sup>24.10</sup>

CommandButton ActiveX denetimleri oluşturma yeteneği, yeni bir genel yöntem [InsertForms2OleControl](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertforms2olecontrol/) ve yeni bir genel sınıf [Forms2OleControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/) eklenerek tanıtıldı.

#### Şekil Görünürlüğünü Kontrol Et <sup>24.10</sup>

Şekillerin görünürlüğünü kontrol etmek için yeni bir genel özellik [Hidden](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/hidden/) eklendi.

#### Pasta ve Halka Grafiklerindeki Değişiklikler <sup>24.10</sup>

Pasta ve Halka grafiklerini biçimlendirmek için birkaç yeni genel özellik eklendi.

#### PDF Seçim Formu Alanı Kenarlıklarının Oluşturulmasını Denetleme <sup>24.11</sup>

PDF seçim formu alanı kenarlıklarının oluşturulmasını denetlemek için yeni bir genel seçenek [RenderChoiceFormFieldBorder](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/renderchoiceformfieldborder/) eklenerek yeni bir seçenek uygulandı.

#### Grafik Verileri için Biçim Kodlarını Alın ve Ayarlayın <sup>24.11</sup>

Grafik verileri için biçim kodları alma ve ayarlama yeteneği, [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/) ve [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/) sınıflarında [FormatCode](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/formatcode/) özelliği uygulanarak eklenmiştir.

#### Histogram Grafiklerini Kutular ve Etiketlerle Oluşturma <sup>24.11</sup>

Histogram grafik oluşturma, belirli sayıda kutu ve etikete izin verilerek geliştirilmiştir.

### Belgeleri Dönüştürme, Yükleme ve Kaydetme

#### Markdown Dosyaları Yüklenirken Alt Çizgi Biçimlendirme <sup>24.9</sup>

Markdown belgeleri yüklenirken alt çizgi biçimlendirmesini tanıma seçeneği, yeni bir genel özellik [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/) eklenerek dahil edildi.

#### Markdown'a kaydederken tabloları HTML olarak dışa aktarma <sup>24.10</sup>

Belgeleri Markdown biçimine kaydederken tabloları HTML olarak dışa aktarma seçeneği, yeni bir genel özellik [ExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/exportashtml/) ve bir numaralandırma [MarkdownExportAsHtml](https://reference.aspose.com/words/net/aspose.words.saving/markdownexportashtml/) eklenerek uygulandı.

#### Güncellenmiş Mantıksal Yapı <sup>24.11 ile PDF dışa Aktar</sup>

PDF dışa aktarma, tablo başlığı özelliklerini PDF mantıksal yapı öğesi başlıkları olarak ekleyerek geliştirilmiştir.

### Dijital İmzalar

#### Belgeleri XAdES-EPES ile İmzala <sup>24.9</sup>

Belgeleri XAdES-EPES düzeyinde XML-DSig imzalarıyla imzalama yeteneği, yeni bir genel özellik [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) ve yeni bir genel numaralandırma [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/) eklenerek tanıtıldı.

### Diğer

* Grup şekillerine yeni bir genel yöntem [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) eklendi. <sup>24.9</sup>
* Bir belgeye **StructuredDocumentTags** eklemek için yeni bir genel yöntem [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) eklendi. <sup>24.9</sup>
* Birkaç genel sınıf ve özellik eklenerek dipnot/sonnot ayırıcılarına genel erişim sağlandı. <sup>24.9</sup>
* Tek tek şekilleri gruplama, şekilleri birlikte gruplama ve her iki şekli ve grup şekillerini doğrudan gruplama yeteneği, [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/#insertgroupshape_1) yönteminin eklenmesiyle tanıtıldı. <sup>24.10</sup>
* TrueType cmap tabloları için Big5 kodlama işleme geliştirildi. <sup>24.10</sup>
* Güncel olmayan Tayvan yazı tipleri için destek geliştirildi. <sup>24.10</sup>
* Genişletilmiş belge özelliklerine erişmek için [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/) sınıfına salt okunur özellikler eklenmiştir. <sup>24.11</sup>
* ActiveX denetimleri için resim yazıları ayarlamak, [Forms2OleControl.Caption](https://reference.aspose.com/words/net/aspose.words.drawing.ole/forms2olecontrol/caption/) özelliğine yeni bir genel ayarlayıcı eklenerek etkinleştirildi. <sup>24.11</sup>

{{% alert color="primary" %}}

[.NET 24.9 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.10 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-10-release-notes/) hakkında daha fazla bilgi edinin.

Hakkında daha fazla bilgi edinin [Aspose.Words .NET 24.11 Sürüm Notları için](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-11-release-notes/).

{{% /alert %}}

## .NET 24.5, 24.6, 24.7, 24.8 için Aspose.Words

Aspose.Words 24.5, derleme seçeneklerini genişletir, oluşturma yeteneklerini geliştirir ve diğer bazı seçenekleri genişletir.

Aspose.Words 24.6, oluşturma seçeneklerini geliştirir, arama ve karşılaştırma işlevselliğini geliştirir ve diğer birçok özelliği genişletir.

Aspose.Words 24.7, ActiveX ile çalışma şeklinizi değiştirir, işleme yeteneklerini genişlettiği gibi Markdown ve XLSX formatlarına dışa aktarmayı da değiştirir.

Aspose.Words 24.8, eksen etiketleri üzerinde hassas kontrolle grafik özelleştirmesini geliştirir, yazı tipi yönetimini genişletir, belge yapısı işlemeyi iyileştirir ve HTML/XAML dışa aktarma, PDF işlevselliği, belge dönüştürme ve dijital imzalar için yeni özellikler ekler.

### Desteklenen Formatlar

Sürüm 24.7'den başlayarak, engelli kullanıcıların erişilebilirliğini sağlamak amacıyla PDF/UA-2'ye dışa aktarma desteklenmektedir.

### Platformlar <sup>24.5</sup>

.NET 7.0/8.0 derlemeleri Aspose.Words NuGet paketine dahil edildi.

### İşleme ve Yazdırma

#### Charts, Shapes ve DrawingML deki değişiklikler <sup>24.5</sup>

* SVG grafikleri için, resimlerle sınırlı olan önceki işlevselliği genişleten DrawingML efekt oluşturma uygulandı.
* [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/) ve [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) sınıfları ve [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/) özelliği eklenerek, birleşik grafikler oluşturma ve seri grupları içindeki boşluk genişliği, örtüşme ve kabarcık ölçeği gibi özellikleri ayarlama desteği sunulmuştur.
* Şekillerin SoftEdge efektini değiştirme işlevi, [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/) sınıfı eklenerek uygulanmıştır.
* Şekillerin ayar değerlerini değiştirme özelliği, [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) ve [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) genel sınıflar ve [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) mülk.

#### Grafikler, Şekiller ve Çizimdeki Değişiklikler <sup>24.6</sup>

* Grafik yetenekleri geliştirildi. Artık *Ağaç Haritaları*, *Güneş Patlamaları*, *Histogramlar*, *Pareto* grafikleri, *Kutu ve Bıyık* grafikleri, *Şelaleler* ve *Huniler* dahil olmak üzere daha çeşitli grafikler oluşturabilirsiniz. Bu, verilerinizi daha çeşitli ve bilgilendirici bir şekilde görselleştirmenize olanak tanır.
* Gölge biçimlendirmesi için renk kontrolü iyileştirildi. Gölge renklerine erişerek belgelerinizin görünümü üzerinde daha hassas kontrol elde edebilirsiniz.
* Arka planda görüntüleme için performans artışı iyileştirildi. Yerel döşeme teknolojisi sayesinde, küçük öğeler içeren arka planların oluşturulmasını önemli ölçüde hızlandırabilirsiniz.
* Şekiller için gerçekçi degradeler eklendi. Artık daha parlak bir görünüm için Microsoft Word'ün görsel stilini taklit eden, doğrusal olmayan degradelere sahip DML şekilleri oluşturabilirsiniz.

#### Grafik Veri Etiketi Özelleştirmesi <sup>24.7</sup>

**Orientation** ve **Rotation** gibi grafik veri etiketlerini özelleştirme yeteneği eklendi.

#### Liste Düzeyleri için Özel Numara Şekillendirme <sup>24.7</sup>

[CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) genel özelliği için bir ayarlayıcı eklendi. Artık liste düzeyleri için özel bir sayı stili tanımlayabilirsiniz.

#### ActiveX ile çalışmadaki değişiklikler <sup>24.7</sup>

* ActiveX nesnelerinin özellikleri artık değiştirilebilir, böylece davranışları üzerinde daha fazla kontrol sahibi olursunuz.
* Dinamik etkileşimi etkinleştirmek için radyo düğmesi ActiveX kontrolünün değerini değiştirme yeteneği eklendi.
* ActiveX onay kutusunu "işaretli" veya "işaretsiz" olarak değiştirme yeteneği eklendi.

#### Grafik Eksen İşaret Etiketleri Yönlendirme ve Döndürme Üzerinde Kontrol <sup>24.8</sup>

Daha kolay grafik özelleştirmesi için grafik eksen işaret etiketlerinin yönlendirmesi ve döndürülmesi üzerinde hassas kontrol eklendi – [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) sınıfı yeni [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) ve [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/) özellikleriyle genişletildi.

#### Ters Eğik Çizgiyi Yen İşaretiyle Değiştirme <sup>24.8</sup>

Ters eğik çizgi karakterini Yen işaretiyle değiştirmek için geriye dönük uyumlu HTML ve XAML dışa aktarma geliştirildi. Bunu başarmak için, [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) ve [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/) sınıflarına **ReplaceBackslashWithYenSign** özelliği eklendi.

#### PDF'ye Aktarırken Form Alan Adları Olarak SDT Etiketlerinin Kullanılması <sup>24.8</sup>

SDT etiketlerini form alan adları olarak kullanma desteğine sahip PDF aktarımı, [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) sınıfına yeni bir [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) özelliği eklenerek geliştirildi.

### Belgeleri Dönüştürme, Yükleme ve Kaydetme

#### Bağlantıları Markdown Formatına Dışa Aktarma <sup>24.7</sup>

[LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/) özelliğinin uygulanmasıyla bağlantıların Markdown biçiminde dışa aktarımını kontrol etme yeteneği eklendi.

#### LowCode <sup>24.8</sup>

Tek bir kod satırıyla çeşitli belge türlerini dönüştürmek için bir dizi yöntem sağlamak üzere tasarlanmış yeni bir [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/) sınıfı tanıtıldı.

### Ara ve Karşılaştır

#### Gelişmiş Karşılaştırma Seçenekleri <sup>24.6</sup>
Geliştirilmiş karşılaştırma işlevselliğiyle veri analizi iş akışlarını kolaylaştırma yeteneği eklendi. Buna yeni bir [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) seçeneği ve gelişmiş karşılaştırmalar için yeniden tasarlanmış bir arayüz dahildir.

### Diğer

* Bir belgedeki boş sayfaları ortadan kaldırma işlevi, [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/) yöntemi eklenerek uygulanmıştır. <sup>24.5</sup>
* [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/) özelliği eklenerek belge yüklemeden VBA makrolarının varlığını kontrol etme yeteneği sağlandı. <sup>24.5</sup>
* LINQ Raporlama Motorunu kullanarak belge eklerken kaynak numaralandırmasının tutulması artık desteklenmektedir. <sup>24.5</sup>
* Yeni bir [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) özelliği eklendi; bu, yorumlar için daha kesin bir zaman damgası sağlayarak organizasyonu ve izlenebilirliği artırır. <sup>24.6</sup>
* LINQ Raporlama Motoru geliştirildi. Boş paragrafların seçici olarak kaldırılması ve eksik nesne üyeleri için özel mesajların tanımlanması yapılarak daha temiz ve daha bilgilendirici raporlar elde edildi. <sup>24.6</sup>
* XLSX formatına sorunsuz aktarım için tarihsaat formatı artık otomatik olarak algılanıyor. <sup>24.7</sup>
* Bir VBA projesinin korunup korunmadığını doğrulamanıza olanak tanıyan genel mülk [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/) eklendi. <sup>24.7</sup>
* Font bilgileri, [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) ve [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/) sınıflarına eklenen **EmbeddingLicensingRights** özelliğiyle genişletildi. <sup>24.8</sup>
* Belge yapısıyla daha doğru bir şekilde çalışmak için filigranları korurken bölüm başlıklarını ve altbilgilerini etkili bir şekilde temizlemenin bir yolu eklendi. Bölüm başlıklarını ve altbilgilerini temizlemek için yeni genel yöntem [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/)'ı kullanın. <sup>24.8</sup>
* [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) kullanılarak XPS belgelerinin dijital olarak imzalanması etkinleştirildi - bu amaçla yeni bir özellik [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) eklendi. <sup>24.8</sup>

{{% alert color="primary" %}}

[.NET 24.5 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.6 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.7 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 24.8 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

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

[.NET 23.9 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-9-release-notes/) hakkında daha fazla bilgi edinin.

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

[.NET 23.7 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-7-release-notes/) hakkında daha fazla bilgi edinin.

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

[.NET 23.2 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-2-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.3 Sürüm Notları için Aspose.Words](/words/net/aspose-words-for-net-23-3-release-notes/) hakkında daha fazla bilgi edinin.

[.NET 23.4 Sürüm Notları için Aspose.Words](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-4-release-notes/) hakkında daha fazla bilgi edinin.

{{% /alert %}}

## Ayrıca bakınız

{{% alert color="primary" %}}

Bu sayfada son 2 yılın en son sürüm haberleri yer almaktadır. Önceki sürümlere ilişkin ayrıntılar için ilgili bölümlerdeki [Sürüm notları'](/words/net/release-notes/) sayfalarına bakın.

{{% /alert %}}
