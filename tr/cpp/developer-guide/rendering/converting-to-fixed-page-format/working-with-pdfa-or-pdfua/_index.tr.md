---
title: PDF/A veya PDF/UA ile çalışmak
second_title: Aspose.Words için C++
articleTitle: PDF/A veya PDF/UA ile çalışmak
linktitle: PDF/A veya PDF/UA ile çalışmak
description: "Dönüştür PDF/A-1, PDF/A-2, PDF/A-4 ve PDF/UA C++ kullanarak. PDF/A belgelere dönüştürürken birkaç sorun vardır ve Aspose.Words için C++ onları çözer."
type: docs
weight: 38
url: /tr/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A ve PDF/UA biçimi, Word biçimindeki bir belgeden PDF biçimine otomatik dönüştürme sırasında yerine getirilemeyen belge içeriğiyle ilgili çeşitli gereksinimler getirir. Bu gereksinimler, tam olarak PDF/A ve PDF/UA uyumlu bir belge oluşturmak için dönüşümden önce bir Word belgesinde veya dönüşümden sonra bir PDF belgesinde doğrulanmalı ve düzeltilmelidir.

Temel gereksinimler, aşağıdaki bölümlerde ele alacağımız bir PDF/A ve PDF/UA belgesinin yapısı veya yazı tipleri içindir.

{{% alert color="primary" %}}

PDF/UA-1 çıktısının da WCAG 2.0 olacağını ve Bölüm 508 ile uyumlu olacağını lütfen unutmayın.

{{% /alert %}}

## Belge Yapısı Gereksinimleri

Mevcut gereksinimler şunlar içindir PDF/A-1a, PDF/A-2a, PDF/A-4, ve PDF/UA-1 biçimleri.

Çeşitli PDF format standartlarına dönüştürülürken Aspose.Words 'ın nasıl çalıştığına dair bazı nüanslar vardır. Beklenen sonucu elde etmek istiyorsanız bunlar dikkate alınmalıdır.

{{% alert color="primary" %}}

PDF/A-4 için mantıksal yapı gereksinimi olmadığını unutmayın. Bu nedenle, bu "Belge Yapısı Gereksinimleri" bölümündeki PDF/A-4 sürümünü dikkate almıyoruz.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yazarların, uygun doğrulama olmadan otomatik süreçleri kullanarak yapısal veya anlamsal bilgiler üretmeleri önerilmez.</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

Aşağıdaki alt bölümler, çeşitli PDF format standartlarına dönüştürülürken Aspose.Words'ın nasıl çalıştığına dair nüansları ve bunların çözümü için seçenekleri açıklamaktadır.

### Yapı Tipi

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF belgesi, başlıklar, paragraflar, tablolar ve diğerleri gibi bloklar dizisidir. Bu bloklar bir belge yapısı oluşturur - güçlü veya zayıf.

Hem güçlü hem de zayıf yapılar PDF/A için geçerlidir. Microsoft Word belgeler tasarım gereği zayıf bir yapıya sahiptir ve Aspose.Words sırasıyla zayıf yapıyla PDF oluşturur ve ayrıca kaynak belgedeki paragrafların anahat düzeylerine göre başlıklar oluşturur.

Zayıf bir yapıya sahip PDF/UA-1 bir belge için ayrıca başlık numaralarının boşluksuz sırayla gitmesi gerekir.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Blok düzeyinde yapı, iki temel paradigmadan birini takip edebilir:</p>
    </ol>
      <li>Güçlü bir şekilde yapılandırılmış. Gruplama öğeleri, materyalin organizasyonunu makalelere, bölümlere, alt bölümlere vb. Yansıtmak için gerektiği kadar seviyeye yerleştirilir. Her düzeyde, gruplama öğesinin alt öğeleri bir başlık (H), o düzeydeki içerik için bir veya daha fazla paragraf (P) ve iç içe geçmiş alt bölümler için belki bir veya daha fazla ek gruplama öğesinden oluşmalıdır.</li>
      <li>Zayıf yapılandırılmış. Belge nispeten düzdür, belki de yalnızca bir veya iki gruplama öğesi düzeyine sahiptir ve tüm başlıklar, paragraflar ve diğer BLSEs bunların hemen alt öğeleridir. Bu durumda malzemenin organizasyonu mantıksal yapıya yansımaz, ancak belirli seviyelere sahip başlıkların kullanılmasıyla ifade edilebilir (H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>PDF/UA-1 belgeler için belirtim, başlık düzeyleriyle ilgili bir ekleme içerir (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Belge semantiği azalan bir başlık dizisi gerektiriyorsa, böyle bir sıra katı sayısal sırayla ilerler ve araya giren bir başlık seviyesini atlamaz. H1 H2 H3 izin verilirken H1 H3 izin verilmez.</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

Doğru çıktıyı sağlamak için kullanıcıların kaynak belge içeriğinin düzgün bir şekilde düzenlendiğinden ve paragraflar için anahat düzeylerinin doğru bir şekilde belirtildiğinden emin olmaları gerekir. Aksi takdirde, kullanıcı çıktı PDF belgesinin yapısını doğrulamalı ve düzeltmelidir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: Microsoft Word 'da anahat düzeylerinin nasıl ayarlanacağı veya çıktı PDF belgesinin yapısının nasıl kontrol edilip düzeltileceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Microsoft Word 'da anahat düzeyini ayarlamak için varsayılan "Başlık X" stilleri kullanılabilir:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ek olarak, anahat seviyesi "Paragraf" penceresinde kontrol edilebilir veya değiştirilebilir:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Acrobat'ta belge yapısı "Etiketler" bölmesinde kontrol edilebilir veya değiştirilebilir:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### İçeriği Eser Olarak İşaretleme

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Şu anda Aspose.Words sayfa üstbilgilerini ve altbilgilerini, not ayırıcılarını, tekrarlanan tablo üstbilgi hücrelerini ve dekoratif görüntüleri artefakt olarak işaretler. Bu listenin gelecekte güncellenebileceğini unutmayın.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir belgedeki grafik nesneleri iki sınıfa ayrılabilir:</p>
    </ol>
      <li>Bir belgenin gerçek içeriği, belgenin yazarı tarafından orijinal olarak tanıtılan materyali temsil eden nesnelerden oluşur.</li>
      <li>Eserler, yazarın orijinal içeriğinin bir parçası olmayan, daha ziyade sayfalandırma, düzen veya diğer katı mekanik işlemler sırasında uygun yazar tarafından oluşturulan grafik nesneleridir.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

Bir belge, eser olarak işaretlenmesi gereken başka bir içerik içeriyorsa veya yapay içeriklerden herhangi biri gerçek bir içerikse, müşteriler bunu PDF çıktısında düzeltmelidir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: Microsoft Word 'da şekillerin dekoratif olarak nasıl işaretleneceği veya çıktı PDF belgesinde şeklin artefakt olarak nasıl işaretleneceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Örneğin, şekiller Microsoft Word 'da dekoratif olarak işaretlenebilir, böylece bir eser olarak PDF'e dışa aktarılırlar:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>PDF çıktısında şekli artefakt olarak işaretleyebilirsiniz:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ayrıca, bir başlıktaki metni eserden PDF çıktısındaki gerçek içeriğe geçirebilirsiniz:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### Doğal Dil Özellikleri

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Metin dili Microsoft Word belgelerinde belirtilmiştir. Aspose.Words belirtilen dili, işaretli içerik dizisine veya Yayılma Alanı etiketine eklenmiş *Lang* özniteliğine sahip bir PDF çıktısına dışa aktarır - bu, [ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/) özelliği tarafından kontrol edilir. Genellikle kullanıcı tarafından Microsoft Word aracılığıyla metin girildiğinde dil sorunu olmaz. Ancak, metin otomatik olarak oluşturulursa dilin yanlış olma olasılığı vardır.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir dosyadaki tüm metinler için varsayılan doğal dil, belgenin Katalog sözlüğündeki Lang girişi tarafından belirtilmelidir.</p>
    <p>Varsayılan dilden farklı bir dosyadaki tüm metin içeriği, işaretli içerik dizisine eklenmiş bir `Lang` özelliğinin kullanılmasıyla veya bir yapı öğesi sözlüğündeki bir Lang girdisiyle belirtilmelidir...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Ayrıca PDF/UA-1 için belirtim bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Doğal dil ilan edilecek ... Doğal dildeki değişiklikler ilan edilecek.</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: dilin doğru şekilde belirtildiğinden nasıl emin olunur (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar, dilin kaynak Word belgesinde doğru şekilde belirtildiğinden emin olmalıdır:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Veya çıktı PDF belgesi:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### Şekil Başlığı

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word belgeler, kullanıcıların şekil başlığı eklemelerine izin verir.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Bir şekle eşlik eden bir resim yazısı, bir Resim Yazısı etiketi ile etiketlenecektir.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Şu anda Aspose.Words, Resim Yazısı etiketiyle resim yazıları dışa aktaramıyor, bu nedenle PDF çıktısında işaretlenmeleri gerekiyor.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: resim yazısı nasıl eklenir (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Microsoft Word 'da, başlık içerik menüsünden eklenebilir:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Acrobat'ta resim yazısı `Object` Özellikler iletişim kutusu aracılığıyla eklenebilir veya değiştirilebilir:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatif Açıklamalar

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word belgeler, kullanıcıların resimlere, şekillere ve tablolara alternatif metin eklemelerine olanak tanır. Aspose.Words böyle bir alternatif metni PDF çıktısına dışa aktarır.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>İçeriği önceden belirlenmiş doğal bir metinsel analoğa sahip olmayan tüm yapı öğeleri, örneğin görüntüler, formüller vb., yapı öğesi sözlüğündeki Alt girişini kullanarak alternatif bir metin açıklaması sağlamalıdır...</p>
    <p>NOTE Alternatif açıklamalar, aksi takdirde opak metinsel olmayan içeriğin doğru yorumlanmasına yardımcı olan metinsel açıklamalar sağlar.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: tüm öğelerin alternatif bir metne sahip olduğundan nasıl emin olunur (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar, tüm öğelerin kaynak Word belgesinde alternatif bir metne sahip olduğundan emin olmalıdır:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Veya çıktı PDF belgesi:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Köprüler için Alternatif Açıklamalar

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Önceki noktaya ek olarak, Microsoft Word belgeler, kullanıcıların köprülere alternatif metin eklemelerine de izin verir. Aspose.Words böyle bir alternatif metni PDF çıktısına dışa aktarır.

Ne yazık ki, her uygulama alternatif bir açıklama ayarlamanıza izin vermez. Örneğin, Adobe Acrobat şu anda köprüler için böyle bir açıklama ayarlamayı etkinleştirmiyor. Ancak Microsoft Word 'da bunu aşağıdaki gibi yapabilirsiniz:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Bazen, içindekiler tablosundaki (TOC) otomatik oluşturulan köprüler için alt metnin Microsoft Word GUI aracılığıyla ayarlanmasının mümkün olmadığı bir sorun vardır. Aspose.Words bu tür alanları güncelleyebilir ve bağlantıları kendi başına oluşturabilir.

Aspose.Words Belge Nesne Modelini (DOM) kullanarak `TOC` alanlarını güncellemek için kod örneğini izleyin.:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### Tablo Başlıkları

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/UA-1 belgelerindeki tabloların başlıkları olmalıdır - sütun, satır veya her ikisi. PDF/A yalnızca ek kısıtlamaları olmayan standart tablo işaretlemesi gerektirir. Aspose.Words'ın standart tablo işaretlemesini otomatik olarak oluşturduğunu unutmayın.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Tablolar başlıklar içermelidir ... Tablolar sütun başlıkları, satır başlıkları veya her ikisini birden içerebilir.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: tablo başlığının nasıl ayarlanacağı (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Tablo başlığı, kaynak Microsoft Word belgesinden biri olarak ayarlanabilir:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Veya çıktı PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Metni Değiştirme

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Şartname bize aşağıdakileri söyler:</p>
    <p>Standart olmayan bir şekilde temsil edilen tüm metinsel yapı öğeleri, örneğin özel karakterler veya satır içi grafikler, yapı öğesi sözlüğündeki `ActualText` girişini kullanarak yedek metin sağlamalıdır...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word belge, kullanıcıların değiştirme metni ayarlamasına izin vermez. Yani bunun PDF çıktısında doğrulanması ve düzeltilmesi gerekiyor:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Kısaltmalar ve Kısaltmalar Açılımları

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Metinsel içerikteki tüm kısaltma ve kısaltma örnekleri, E özelliği kısaltmanın veya kısaltmanın metinsel olarak genişletilmesini sağlayan bir Açıklık etiketine sahip işaretli bir içerik dizisine yerleştirilmelidir...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word belge, kullanıcıların kısaltmalar ve kısaltmalar genişletmeleri ayarlamasına izin vermez. Yani bunun PDF çıktısında doğrulanması ve düzeltilmesi gerekiyor:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Belge Başlığı

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />PDF/UA-1 'deki belgenin bir başlığı olmalıdır. |

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Şartname bize aşağıdakileri söyler:</p>
    <p>Belgenin katalog sözlüğündeki Meta Veri akışı bir dc: başlık girdisi içermelidir; burada dc, Dublin Çekirdek meta veri şeması için önerilen önektir…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: belge başlığının nasıl ayarlanacağı (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Belge başlığı, kaynak Microsoft Word belgesi olarak ayarlanabilir:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Veya çıktı PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Yazı Tipi Gereksinimleri

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Dönüştürürken yazı tipleriyle çalışmanın bir takım nüansları da vardır PDF/A-1, PDF/A-2, PDF/A-4 veya PDF/UA-1 Aspose.Words kullanarak biçimlendirir. Çıktı belgesiyle ilgili olası sorunlardan kaçınmak istiyorsanız bunlar dikkate alınmalıdır.

Aşağıdaki bölümler, çözümleri için bu tür nüansları ve seçenekleri açıklamaktadır.

### Yazı Tipi Yasal Gereklilikleri

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words kullanılan fontların yasal kısıtlamalarını doğrulamaz - bu kullanıcılara bağlıdır. Başka bir deyişle, bir kullanıcı Aspose.Words kullanarak PDF dönüştürme için uygun olmayan yazı tipleri sağlamamalıdır.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yalnızca sınırsız, evrensel işleme için bir dosyaya yasal olarak gömülebilir yazı tipi programları kullanılacaktır.</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 ( iki özellikte tam olarak aynı alıntılar)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

`.notdef` glifinin kullanılması yasaktır. Bir belge seçili yazı tipinde bulunmayan ve Yazı Tipi Geri Dönüş mekanizması aracılığıyla da çözülemeyen karakterler içeriyorsa `.notdef` glifi görünecektir.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Uygun bir belge, bir referans içermeyecektir.herhangi bir içerik akışında metin oluşturma modundan bağımsız olarak, işleçleri gösteren herhangi bir metinden glif tanımlamayın.</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 ( iki özellikte tam olarak aynı alıntılar)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: bu karakterlerin nasıl kaldırılacağı veya değiştirileceği (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kullanıcılar bu karakterleri kaynak Word belgesinde kaldırmalı veya değiştirmelidir:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Veya "Edit PDF" aracını kullanarak çıktı PDF belgesi:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Özel Kullanım Alanı (PUA)

| PDF Aspose.Words içindeki standart uyumluluk seviyeleri | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Özel Kullanım Alanı (PUA) karakterleri çoğunlukla "Symbol", "Wingdings", "Webdings" ve diğerleri gibi Windows sembolik yazı tipleri için görünür. Microsoft Word biçimler, karakterler için gerçek metni saklama seçeneği sağlamaz.

{{% alert color="secondary" %}}
<details>
    <summary>Şartname bize aşağıdakileri söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Yalnızca A Düzeyi uyumu için, herhangi bir karakter için... bu, Unicode Özel Kullanım Alanındaki (PUA) bir kod veya kodlarla, bir ActualText girdisiyle eşleştirilir... bu karakter veya böyle bir karakterin parçası olduğu bir karakter dizisi için mevcut olacaktır.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Sembolü", sembolik yazı tiplerine alternatif olarak kullanılabilecek bir Windows Unicode yazı tipidir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: sembolik yazı tipleriyle sorunu çözmek için kullanıcının yapması gerekenler (ayrıntıları görmek için genişletin).</summary>
    <p></p>
    <p>Kaynak Word belgesindeki simgesel yazı tipini Unicode olanla değiştirin:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Veya çıktı PDF belgesindeki sorunlu karakterlere bir ActualText girişi ekleyin:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
