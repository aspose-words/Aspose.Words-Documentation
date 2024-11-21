---
title: PDF/A veya PDF/UA ile çalışma
second_title: .NET için Aspose.Words
articleTitle: PDF/A veya PDF/UA ile çalışma
linktitle: PDF/A veya PDF/UA ile çalışma
description: "C#'i kullanarak PDF/A-1, PDF/A-2, PDF/A-4 ve PDF/UA'ya dönüştürün. PDF/A belgelerine dönüştürme sırasında birkaç sorunla karşılaşılır ve .NET için Aspose.Words bunları çözer."
type: docs
weight: 28
url: /tr/net/working-with-pdfa-or-pdfua/
timestamp: 2024-07-10-14-38-57
---

PDF/A ve PDF/UA formatı, Word formatındaki bir belgeden PDF'ye otomatik dönüştürme sırasında belge içeriğiyle ilgili olarak yerine getirilemeyen çeşitli gereksinimler getirir. Tamamen PDF/A ve PDF/UA uyumlu bir belge oluşturmak için bu gereksinimlerin dönüştürmeden önce bir Word belgesinde veya dönüştürme sonrasında bir PDF belgesinde doğrulanması ve düzeltilmesi gerekir.

Temel gereksinimler, aşağıdaki bölümlerde ele alacağımız PDF/A ve PDF/UA belgesinin yapısı veya yazı tipleri içindir.

{{% alert color="primary" %}}

PDF/UA-1 çıktısının da WCAG 2.0 ve Bölüm 508 uyumlu olacağını lütfen unutmayın.

{{% /alert %}}

## Belge Yapısı Gereksinimleri

Mevcut gereksinimler PDF/A-1a, PDF/A-2a, PDF/A-4 ve PDF/UA-1 formatları içindir.

Aspose.Words'in çeşitli PDF formatı standartlarına dönüştürürken nasıl çalıştığına dair bazı nüanslar vardır. Beklenen sonucu elde etmek istiyorsanız bunların dikkate alınması gerekir.

{{% alert color="primary" %}}

PDF/A-4 için herhangi bir mantıksal yapı gereksinimi olmadığını unutmayın. Bu nedenle bu "Belge Yapısı Gereksinimleri" bölümünde PDF/A-4 sürümünü dikkate almıyoruz.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yazarların, uygun doğrulama olmadan otomatikleştirilmiş süreçleri kullanarak yapısal veya anlamsal bilgi üretmeleri tavsiye edilmez.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Aşağıdaki alt bölümlerde, Aspose.Words'in çeşitli PDF formatı standartlarına dönüştürme sırasında nasıl çalıştığına ilişkin incelikler ve bunların çözüm seçenekleri açıklanmaktadır.

### Yapı Tipi

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Bir PDF belgesi, başlıklar, paragraflar, tablolar ve diğerleri gibi bir dizi bloktan oluşur. Bu bloklar güçlü veya zayıf bir belge yapısı oluşturur.

PDF/A için hem güçlü hem de zayıf yapılar geçerlidir. Microsoft Word belgeleri tasarım gereği zayıf bir yapıya sahiptir ve Aspose.Words sırasıyla zayıf yapıyla PDF oluşturur ve ayrıca kaynak belgedeki paragrafların anahat düzeylerine göre başlıklar oluşturur.

Yapısı zayıf olan bir PDF/UA-1 belgesi için ayrıca başlık numaralarının boşluksuz bir şekilde sıralanması gerekmektedir.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Blok düzeyindeki yapı iki temel paradigmadan birini takip edebilir:</p>
    </ol>
      <li>Güçlü bir şekilde yapılandırılmıştır. Gruplandırma öğeleri, materyalin makaleler, bölümler, alt bölümler vb. halindeki organizasyonunu yansıtmak için gereken sayıda düzeye yuvalanır. Her düzeyde, gruplandırma öğesinin alt öğeleri bir başlık (H), o düzeydeki içerik için bir veya daha fazla paragraf (P) ve belki de iç içe geçmiş alt bölümler için bir veya daha fazla ek gruplama öğesinden oluşmalıdır.</li>
      <li>Zayıf yapılandırılmış. Belge nispeten düzdür; belki de yalnızca bir veya iki düzeyde gruplandırma öğesi içerir; tüm başlıklar, paragraflar ve diğer BLSE'ler bunların alt öğeleridir. Bu durumda materyalin organizasyonu mantıksal yapıya yansımaz; ancak belirli düzeylerde (H1–H6) başlıklar kullanılarak ifade edilebilir.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 belgeleri için spesifikasyon, başlık düzeyleriyle ilgili bir ekleme içerir (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Belge anlambilimi, başlıkların azalan bir sırasını gerektiriyorsa, bu tür bir sıra, kesin sayısal sıraya göre ilerleyecek ve araya giren bir başlık düzeyini atlamayacaktır. H1 H2 H3'e izin verilirken H1 H3'e izin verilmez.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Doğru çıktıyı sağlamak için kullanıcıların kaynak belge içeriğinin düzgün bir şekilde organize edildiğinden ve paragraflar için anahat seviyelerinin doğru şekilde belirtildiğinden emin olması gerekir. Aksi takdirde kullanıcının çıktı PDF belgesinin yapısını doğrulaması ve düzeltmesi gerekir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: Microsoft Word'te anahat seviyelerinin nasıl ayarlanacağı veya çıktı PDF belgesinin yapısının kontrol edilip düzeltileceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Microsoft Word'te varsayılan "Başlık X" stilleri anahat düzeyini ayarlamak için kullanılabilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWBaşlık1-2" style="width:800px"/>
    <p>Ayrıca taslak düzeyi "Paragraf" penceresinden kontrol edilebilir veya değiştirilebilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Acrobat'ta belge yapısı "Etiketler" bölmesinden kontrol edilebilir veya değiştirilebilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatEtiketlerBölme" style="width:800px"/>
</details>
{{% /alert %}}

### İçeriği Yapı Olarak İşaretleme

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Şu anda Aspose.Words, sayfa üstbilgilerini ve altbilgilerini, not ayırıcılarını, yinelenen tablo üstbilgisi hücrelerini ve dekoratif görüntüleri yapay öğeler olarak işaretler. Bu listenin gelecekte güncellenebileceğini unutmayın.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir belgedeki grafik nesneleri iki sınıfa ayrılabilir:</p>
    </ol>
      <li>Bir belgenin gerçek içeriği, belgenin yazarı tarafından orijinal olarak tanıtılan materyali temsil eden nesnelerden oluşur.</li>
      <li>Yapıtlar, yazarın orijinal içeriğinin bir parçası olmayan, sayfalandırma, düzen veya diğer tamamen mekanik süreçler sırasında uyumlu yazar tarafından oluşturulan grafik nesneleridir.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Bir belgede yapay olarak işaretlenmesi gereken başka bir içerik varsa veya yapay içeriklerden herhangi biri gerçek bir içerikse, müşterilerin bunu çıktı PDF'sinde düzeltmesi gerekir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: Microsoft Word'te şekillerin dekoratif olarak nasıl işaretleneceği veya çıktı PDF belgesinde şeklin bir yapıt olarak nasıl işaretleneceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Örneğin, şekiller Microsoft Word'te dekoratif olarak işaretlenebilir, böylece bir yapıt olarak PDF'ye aktarılırlar:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDekoratifŞekil" style="width:800px"/>
    <p>Çıktı PDF'sinde şekli yapıt olarak işaretleyebilirsiniz:</p>
   <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfSilBoşEtiket" style="width:800px"/>
    <p>Ayrıca, başlıktaki metni yapıttan çıktı PDF'sindeki gerçek içeriğe dönüştürebilirsiniz:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Doğal Dil Belirtimi

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word belgelerinde metin dili belirtilir. Aspose.Words, belirtilen dili, işaretli içerik dizisine veya Span etiketine eklenen *Lang* özniteliğiyle birlikte bir çıktı PDF'sine aktarır; [ExportLanguageToSpanTag](https://reference.aspose.com/words/tr/net/aspose.words.saving/pdfsaveoptions/exportlanguagetospantag/) özelliği tarafından kontrol edilir. Kullanıcı tarafından Microsoft Word aracılığıyla metin girildiğinde genellikle dil sorunu yaşanmaz. Ancak metnin otomatik olarak oluşturulması durumunda dilin hatalı olma ihtimali vardır.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir dosyadaki tüm metinler için varsayılan doğal dil, belgenin Katalog sözlüğündeki Lang girişiyle belirtilmelidir.</p>
    <p>Bir dosya içindeki varsayılan dilden farklı olan tüm metin içeriği, işaretli içerik dizisine eklenen bir `Lang` özelliği kullanılarak veya bir yapı elemanı sözlüğündeki bir Lang girişi ile belirtilmelidir ...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Ayrıca PDF/UA-1 için spesifikasyon bize aşağıdakileri anlatır (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Doğal dil ilan edilecek… Doğal dildeki değişiklikler ilan edilecek.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: dilin doğru şekilde belirtildiğinden nasıl emin olunur (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar dilin kaynak Word belgesinde doğru şekilde belirtildiğinden emin olmalıdır:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWDil" style="width:800px"/>
    <p>Veya çıktı PDF belgesi:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckDil değişimi" style="width:800px"/>
</details>
{{% /alert %}}

### Şekil Başlığı

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word belgeleri, kullanıcıların şekil başlığı eklemesine olanak tanır.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir şekle eşlik eden başlık, Başlık etiketiyle etiketlenecektir.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Şu anda Aspose.Words, Altyazı etiketini içeren altyazıları dışa aktaramaz, bu nedenle bunların çıktı PDF'sinde işaretlenmesi gerekir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: başlık nasıl eklenir (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Microsoft Word'te başlık içerik menüsü aracılığıyla eklenebilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="şekil-başlık-mw" style="width:800px"/>
    <p>Acrobat'ta başlık, `Object` Özellikleri iletişim kutusu aracılığıyla eklenebilir veya değiştirilebilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="şekil-başlık-akrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatif Açıklamalar

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word belgeleri, kullanıcıların resimlere, şekillere ve tablolara alternatif metin eklemesine olanak tanır. Aspose.Words böyle bir alternatif metni çıktı PDF'sine aktarır.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>İçeriği önceden belirlenmiş doğal bir metin analoğuna sahip olmayan tüm yapı elemanları, örneğin resimler, formüller, vb., yapı elemanı sözlüğündeki Alt girişini kullanarak alternatif bir metin açıklaması sağlamalıdır...</p>
    <p>NOT Alternatif açıklamalar, aksi durumda anlaşılmaz olan metinsel olmayan içeriğin doğru şekilde yorumlanmasına yardımcı olan metinsel açıklamalar sağlar.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: tüm öğelerin alternatif bir metne sahip olmasının nasıl sağlanacağı (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar, kaynak Word belgesindeki tüm öğelerin alternatif bir metne sahip olmasını sağlamalıdır:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Veya çıktı PDF belgesi:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Köprüler için Alternatif Açıklamalar

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Önceki noktaya ek olarak Microsoft Word belgeleri, kullanıcıların köprülere alternatif metin eklemesine de olanak tanır. Aspose.Words böyle bir alternatif metni çıktı PDF'sine aktarır.

Ne yazık ki her uygulama alternatif bir açıklama oluşturmanıza izin vermez. Örneğin, Adobe Acrobat şu anda köprüler için böyle bir açıklamanın ayarlanmasına olanak sağlamamaktadır. Ancak Microsoft Word'de bunu şu şekilde yapabilirsiniz:

<img src="/words/net/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternatif-açıklamalar-köprüler-mw" style="width:800px"/>

Bazen, içindekiler tablosunda (TOC) Microsoft Word GUI aracılığıyla otomatik olarak oluşturulan köprüler için alternatif metin ayarlamanın mümkün olmaması gibi bir sorun olabilir. Aspose.Words bu tür alanları güncelleyebilir ve bağlantıları kendi başına oluşturabilir.

Aspose.Words Document Object Model'i (DOM) kullanarak `TOC` alanlarını güncellemek için kod örneğini izleyin:

{{< highlight csharp >}}
Document doc = new Document(fileName);

	var tocHyperLinks = doc.Range.Fields
		.Where(f => f.Type == FieldType.FieldHyperlink)
		.Cast<FieldHyperlink>()
		.Where(f => f.HRef.StartsWith("#_Toc"));
	
	foreach (FieldHyperlink link in tocHyperLinks)
		link.ScreenTip = link.DisplayResult;
	
	PdfSaveOptions opt = new PdfSaveOptions()
	{
		Compliance = PdfCompliance.PdfUa1,
		DisplayDocTitle = true,
		ExportDocumentStructure = true,
	};
	opt.OutlineOptions.HeadingsOutlineLevels = 3;
	opt.OutlineOptions.CreateMissingOutlineLevels = true;
	
	var outFile = Path.ChangeExtension(fileName, "_aw.pdf");
	doc.Save(outFile, opt);
{{< /highlight >}}

### Tablo Başlıkları

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-2a |                           |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF/UA-1 belgelerindeki tabloların başlıkları (sütun, satır veya her ikisi) bulunmalıdır. PDF/A yalnızca hiçbir ek kısıtlaması olmayan standart tablo işaretlemesini gerektirir. Aspose.Words'in standart tablo işaretlemesini otomatik olarak oluşturduğunu unutmayın.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Tablolar başlık içermelidir… Tablolar sütun başlıklarını, satır başlıklarını veya her ikisini birden içerebilir.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: tablo başlığının nasıl ayarlanacağı (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Tablo başlığı kaynak Microsoft Word belgesinden herhangi biri üzerinden ayarlanabilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="tablo-başlıkları-mw" style="width:800px"/>
    <p>Veya çıktı PDF'si:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="tablo-başlıkları-akrobat-başlık-hücresi" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="tablo-başlıkları-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="/words/net/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="tablo-başlıkları-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Yedek Metin

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Şartname bize şunları söylüyor:</p>
    <p>Standart dışı bir şekilde temsil edilen tüm metinsel yapı elemanları, örneğin özel karakterler veya satır içi grafikler, yapı elemanı sözlüğündeki `ActualText` girişini kullanarak yedek metin sağlamalıdır...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word belgesi, kullanıcıların değiştirme metnini ayarlamasına izin vermez. Dolayısıyla bunun çıktı PDF'sinde doğrulanması ve düzeltilmesi gerekiyor:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatDeğiştirme Metni" style="width:800px"/>

### Kısaltmalar ve Kısa Adlar Genişletmeler

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Metin içeriğindeki tüm kısaltma ve kısaltma örnekleri, E özelliği kısaltmanın veya kısaltmanın metinsel genişlemesini sağlayan Span etiketiyle işaretli içerik sırasına yerleştirilmelidir...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word belgesi, kullanıcıların kısaltmalar ve kısaltma genişletmeleri ayarlamasına izin vermez. Dolayısıyla bunun çıktı PDF'sinde doğrulanması ve düzeltilmesi gerekiyor:

<img src="/words/net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Belge başlığı

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  PDF/A-1a |                                                                |
|  PDF/A-2a |                                                                |
|  PDF/A-4 |                                                                |
|  PDF/UA-1 |  {{< emoticons/tick >}}<br /> PDF/UA-1'deki belgenin bir başlığı olmalıdır |

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Şartname bize şunları söylüyor:</p>
    <p>Belgenin katalog sözlüğündeki Meta Veri akışı bir dc:title girişi içerecektir; burada dc, Dublin Core meta veri şeması için önerilen önektir…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: belge başlığının nasıl ayarlanacağı (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Belge başlığı kaynak Microsoft Word belgesinden biri olarak ayarlanabilir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-mw.png" alt="belge-başlığı-mw" style="width:800px"/>
    <p>Veya çıktı PDF'si:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="belge-başlığı-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Yazı Tipi Gereksinimleri

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words kullanarak PDF/A-1, PDF/A-2, PDF/A-4 veya PDF/UA-1 formatlarına dönüştürürken yazı tipleriyle çalışmanın da bazı incelikleri vardır. Çıktı belgesinde olası sorunlardan kaçınmak istiyorsanız bunların dikkate alınması gerekir.

Aşağıdaki bölümlerde bu tür nüanslar ve bunların çözümüne yönelik seçenekler açıklanmaktadır.

### Yazı Tipi Yasal Gereksinimleri

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words, kullanılan yazı tiplerinin yasal kısıtlamalarını doğrulamaz; bu kullanıcılara bağlıdır. Başka bir deyişle, kullanıcı Aspose.Words kullanarak PDF dönüşümü için uygunsuz yazı tipleri sağlamamalıdır.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yalnızca sınırsız, evrensel işleme için yasal olarak bir dosyaya eklenebilen yazı tipi programları kullanılacaktır.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (iki spesifikasyonda tamamen aynı alıntılar)</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

`.notdef` glyph'nin kullanımı yasaktır. Bir belge, seçilen yazı tipinde bulunmayan ve ayrıca Yazı Tipi Geri Dönüş mekanizması aracılığıyla çözümlenemeyen karakterler içeriyorsa `.notdef` glyph görünecektir.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Uygun bir belge, herhangi bir içerik akışındaki metin oluşturma modundan bağımsız olarak operatörleri gösteren herhangi bir metinden .notdef glyph'e bir referans içermeyecektir.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (iki spesifikasyonda tamamen aynı alıntılar)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: bu karakterlerin nasıl kaldırılacağı veya değiştirileceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar kaynak Word belgesindeki şu karakterleri kaldırmalı veya değiştirmelidir:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Veya "PDF Düzenle" aracını kullanarak çıktı PDF belgesi:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Özel Kullanım Alanı (PUA)

|  Aspose.Words içindeki PDF standart uyumluluk düzeyleri |  Gereksinimin varlığı |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2u |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

Özel Kullanım Alanı (PUA) karakterleri çoğunlukla "Symbol", "Wingdings", "Webdings" ve diğerleri gibi Windows sembolik yazı tipleri için görünür. Microsoft Word formatları, karakterler için gerçek metni saklama seçeneği sunmaz.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize şunları söylüyor (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yalnızca A Düzeyi uygunluğu için, Unicode Özel Kullanım Alanındaki (PUA) bir kod veya kodlarla eşlenen herhangi bir karakter için, bu karakter veya bu karakter dizisi için bir ActualText girişi mevcut olacaktır. karakter bir parçadır.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Sembolü", sembolik yazı tiplerine alternatif olarak kullanılabilecek bir Windows Unicode yazı tipidir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekleri görebilirsiniz: sembolik yazı tipleriyle ilgili sorunu çözmek için kullanıcının ne yapması gerekir (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Sembolik yazı tipini kaynak Word belgesindeki Unicode yazı tipiyle değiştirin:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWSembol Ekle" style="width:800px"/>
    <p>Veya çıktı PDF belgesindeki sorunlu karakterlere bir ActualText girişi ekleyin:</p>
    <img src="/words/net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
