---
title: PDF/A veya PDF/UA ile çalışmak
second_title: Aspose.Words için Java
articleTitle: PDF/A veya PDF/UA ile çalışmak
linktitle: PDF/A veya PDF/UA ile çalışmak
description: "PDF/A-1, PDF/A-2, PDF/A-4 ve PDF/UA kullanarak dönüştür Java. PDF/A belgeleri dönüştürürken birkaç sorun var ve Aspose.Words için Java bunları çözer."
type: docs
weight: 28
url: /tr/java/working-with-pdfa-or-pdfua/
---

PDF/A ve PDF/UA formatı, otomatik olarak Word formatındaki bir belgeden PDF'ye dönüştürme sırasında yerine getirilemeyen belge içeriğine ilişkin birkaç gereksinim emreder. Bu gereksinimler, dönüştürmeden önce bir kelime belgesinde doğrulanmalı ve düzeltilmeli veya dönüştürükten sonra bir PDF belgesinde üretilmesi tam olarak PDF / A ve PDF / UA uyumlu bir belge için yapılmalıdır.

Temel gereksinimler bir PDF / A ve PDF / UA belgesi için yapıya veya yazı tiplerine ilişkin gereksinimlerdir, bunları aşağıdaki bölümler ele alacaktır.

{{% alert color="primary" %}}

Lütfen unutmayın ki PDF/UA-1 çıktısı da WCAG 2.0 ve 508 Bölümü uyumlu olacaktır.

{{% /alert %}}

## Belge Yapısı Gereksinimleri

Geçerli gereksinimler, PDF/A-1a, PDF/A-2a, PDF/A-4 ve PDF/UA-1 biçimleri için gereklidir.

Çeşitli PDF biçim standartlarına dönüştürürken Aspose.Words'ın nasıl çalıştığına dair bazı nüanslar var. Onların hesap edilmesi istenen sonucu almak istiyorsan göz önünde bulundurulması gerekir.

{{% alert color="primary" %}}

Not edin ki, PDF/A-4 için mantıksal yapı gereksinimleri yoktur. Bu sebeple, bu "Belge Yapısı Gereksinimleri" bölümünde PDF/A-4 sürümüne yer vermiyoruz.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <özet> Spesifikasyon bize şu (ayrıntıları görmek için genişlet) söyler: </özet>
    <p></p>
    <p>Yazarların uygun bir doğrulama olmadan otomatik süreçler kullanarak yapısal veya anlamsal bilgi oluşturmaları önerilmez.</p>
    <p>ISO 19005-2, 6.7.1</p>
<details>
{{% /alert %}}

Aşağıdaki alt bölümler, Aspose.Words çeşitli PDF biçim standartlarına dönüştürüldüğünde nasıl çalıştığına dair nüansları ve bunların çözümleri için seçenekleri açıklar.

### Yapı Türü

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Bir PDF belgesi başlıklar, paragraflar, tablolar ve diğerleri gibi blokların bir dizisidir. Bu bloklar bir belge yapısı oluşturur - güçlü veya zayıf.

Hem güçlü hem de zayıf yapılar PDF/A için geçerlidir. Microsoft Word belgeleri tasarım olarak zayıf bir yapıya sahiptir ve Aspose.Words kaynak belge içindeki paragrafların alt düzeylerine uygun başlıkları oluşturmak üzere zayıf bir yapıya sahip bir PDF oluşturur.

Zayıf bir yapısına sahip bir PDF/UA-1 belgesi için başlık numaralarının boşluklar olmadan sırayla gitmesi ek olarak gereklidir.

{{% alert color="secondary" %}}
<details>
    <özet> spesifikasyon bize şu bilgileri verir (ayrıntıları göstermek için genişletin):</özet>
    <p></p>
    <p>Blok düzeyli yapı iki ana paradigmadan birini takip edebilir:</p>
    </ol>
      <li>Güçlü yapılandırılmış. Gruplama öğeleri gerekli olan kadar katmanlara girer, böylece malzemenin makalelere, bölümlere, alt bölümlere vb. ayrılması sağlanır. Her seviyede, grup elemanının çocukları bir başlıktan (H), bu seviyedeki içerik için bir veya daha fazla paragraftan (P) ve belki de bir veya daha fazla ek gruplama elemanından oluşmalıdır
      <li>Zayıf yapılandırılmış. Bu belge nispeten düzdür ve sadece bir veya iki seviye gruplama öğesi vardır, tüm başlıklar, paragraflar ve diğer BLSE'ler bunların çocuklarıdır. Bu durumda, materyalin düzenlenmesi mantıksal yapıya yansıtılmaz; ancak bunun yerine başlıklarla belirli seviyeler (H1-H6) kullanılarak ifade edilebilir.</li>
    </ol>
    <p></p>
    <p>ISO - 32000-1, 14.8.4.3.5</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<detaylar>
    <summary>PDF/UA-1 belgeleri için spesifikasyon başlık düzeyleriyle ilgili bir ilave içerir (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Belge semantiği bir başlık dizisinin aşağı doğru sıralamasını gerektiriyorsa, bu dizi sıkı bir sayısal sırada ilerlemeli ve bir ara başlık seviyesini atlamamalıdır. H1 H2 H3 kabul edilemez, H1 H3 değildir
    <p>ISO -14289 -1, 7.4.2</p>
</details>
{{% /alert %}}

Doğru çıktıyı sağlamak için kullanıcıların kaynak belge içeriğinin düzgün bir şekilde organize edildiğini ve paragraflar için çıkış düzeylerinin doğru belirtildiğini sağlamaları gerekir. Aksi takdirde, kullanıcının çıktı PDF belgesinin yapısını doğrulaması ve onarması gerekir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: Microsoft Word'da taslak seviyelerini ayarlama veya çıktının PDF belgesinin yapısını kontrol edip düzeltme (detayları görmek için genişletme)</summary>
    <p></p>
    <p>In Microsoft Word varsayılan "Başlık X" stilleri, kenarlık seviyesini ayarlamak için kullanılabilir:</p>
        <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>Ayrıca, başlık seviyesi "Paragraf" penceresinde kontrol edilebilir veya değiştirilebilir:</p>
        <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>Acrobat'ta belge yapısı kontrol edilebilir veya "Etiketler" panelinde değiştirilebilir</p>:
        <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</detail>
{{% /alert %}}

### İçeriği Bir Artifak olarak İşaretleme

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Şu anda Aspose.Words sayfa başlıkları ve alt yazılarına, not ayırıcılarına, tekrar eden tablo başlık hücresine ve süsleme resimleri olarak işaretler. Bu listenin gelecekte güncellenebileceğini not edin.

{{% alert color="secondary" %}}
<details>
    <özet>Tanım bize şu (ayrıntıları göstermek için genişlet) şöyler der:</özet>
    <p></p>
    <p>Bir belge içindeki grafik nesneleri iki sınıfa ayrılabilir:</p>
    </ol>
      <li>Bir belgedeki gerçek içerik, yazar tarafından başlangıçta tanıtılan materyalleri temsil eden nesneleri içerir.</li>
      <li>Artefaktlar yazarın orijinal içeriğinin parçası olmayan grafik nesnelerdir. Bunun yerine, uyumlu yazarın sayfalama, düzen veya diğer tamamen mekanik süreçler sırasında oluşturulur.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</detaylar>
{{% /alert %}}

Eğer bir belge herhangi bir diğer içeriği, bir hazine olarak işaretlenmelidir ya da herhangi bir hazine içeriği gerçek içerik ise, müşteriler çıktıda bunu düzeltmelidir.

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta aşağıdaki örnekleri görebilirsiniz: Microsoft Word'de şekilleri dekoratif olarak işaretlemek veya çıktı PDF belgesinde bir şekil işaretleyici olarak işaretlemek (ayrıntıları göstermek için genişletmek)</summary>
    <p></p>
    <p>Örneğin, şekillerin dekoratif olarak işaretlenebileceği Microsoft Word gibi, bir yapay harabe olarak dışarıya aktarılacakları:</p>
        <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>Çıkışta bir artefak olarak şekil işaretleyebilirsiniz:</p>
      <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>Ayrıca, başlık metnini gerçek içeriğe geçiş yapabilirsiniz çıktı PDF'nin yapıtından:</p>
        <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
<details>
{{% /alert %}}

### Doğal Dil Spesifikasyonu

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Metin dili belirtilen Microsoft Word belgede yer alır. Aspose.Words belirtilen dili bir çıktı PDF'ye ekle ve belirtilen dil özniteliği bir işaretli içerik dizisine veya bir Span etiketi ile birlikte *Lang* etiketine bağlanır - bu, [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) özelliğine kontrol edilir. Genel olarak, metin kullanıcı tarafından girildiğinde dil sorunları yoktur Microsoft Word. Ancak otomatik metin oluşturulması durumunda dilin yanlış olması ihtimali var.

{{% alert color="secondary" %}}
<details>
    <summary>Yürütme spesifikasyonu bize şu (ayrıntıları görmek için genişlet) bildirir:</summary>
    <p></p>
    <p>Bir dosyanın tüm metinleri için varsayılan doğal dil, bir belge sözlüğündeki Lang girişi ile belirtilmelidir.</p>
    <p>Bir dosyadaki metin içeriği varsayılan dilden farklıysa bir `Lang` özelliğini işaretlemek için bir işaretli içerik dizisi veya bir Yapı elemanının sözlüğü içindeki bir Lang girişi kullanarak belirtilmelidir...</p>
    <p>ISO-19005-2, 6.7.4</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Ek olarak PDF/UA-1 için, belirtim bize şu detayları anlatır (detayları görmek için genişletin):</summary>
    <p></p>
    <p>Doğal dil ilan edilecek... Doğal dildeki değişiklikler bildirilecek.</p>
    <p>ISO-14289-1, 7.2</p>
<details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blok içinde örnekleri görebilirsiniz: dilin doğru şekilde belirtildiğinden emin olmak (ayrıntıları görmek için genişletme)</summary>
    <p></p>
    <p>Kullanıcılar, kaynak Word belgesinde dilin doğru bir şekilde belirtildiğinden emin olmalıdır:</p>
        <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>Ya çıktıyı PDF belgesi:</p>
        <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
<details>
{{% /alert %}}

### Şekil Açıklaması

| PDF standart uyum düzeyleri içinde Aspose.Words | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word belgeleri kullanıcıların bir figür başlığı eklemesine imkan tanır.

{{% alert color="secondary" %}}
<details>
    <özet>Bu spesifikasyon bize şu (ayrıntıları görmek için genişlet)ları söyler:</özet>
    <p></p>
    <p>Şekil ile birlikte bir başlık etiketlenecek.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

Şu anda Aspose.Words altyazıları Caption etiketiyle dışa aktaramaz, bu yüzden bunları çıktı PDF'sinde işaretlemek zorundadır.

{{% alert color="secondary" %}}
<details>
    <özet>Bu blokta, ayrıntıları görmek için genişletilen bir başlık ekleme örnekleri görebilirsiniz.</özet>
    <p></p>
    <p>In Microsoft Word başlık bağlam menüsü aracılığıyla eklenebilir:</p>
        <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>Adobe Acrobat'te, başlık `Object` özellik iletişim kutusu aracılığıyla eklenebilir veya değiştirilebilir:</p>
        <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### Alternatif Açıklamalar

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word belgeleri kullanıcıların alternatif metinleri resimlere, şekillere ve tablolara eklemesine izin verir. Aspose.Words bu alternatif metni çıktı PDF'ine dışarı aktarır.

{{% alert color="secondary" %}}
<details>
    <özet>tespecifikasyon bize şu aşağıdaki (ayrıntıları görmek için genişletin):</özet>
    <p></p>
    <p>İçeriği doğal olarak önceden belirlenmiş metin analoguna sahip olmayan tüm yapı elemanları, örneğin resimler, formüller vb., Yapı Elemanı Sözlüğü'ndeki Alt girişini kullanarak alternatif bir metin açıklaması sağlamalıdır.</p>
    <p>Not: Alternatif açıklamalar, aksi takdirde opak olmayan metin dışı içeriğin doğru yorumlanmasına yardımcı olacak metin açıklamaları sağlar.</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>Bu blokta örnekler görebilirsiniz: tüm öğelerin alternatif bir metin olduğunu nasıl garanti edersiniz (detayları görmek için genişletin)</summary>
    <p></p>
    <p>Kullanıcıların tüm öğelerin bir alternatif metne sahip olduğundan emin olmalarını sağlamaları gerekir ya da kaynak kelime belgesinde:</p>
        <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>Ya çıktı pdf belgesi:</p>
        <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### Hyperlinkler için Alternatif Tanımlar

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Önceki noktaya ek olarak Microsoft Word belgeleri kullanıcıların alternatif metni bağlantıya eklemesine izin verir. Aspose.Words böyle bir alternatif metni çıktı PDF'ine dışarı aktarır.

Ne yazık ki, her uygulama alternatif bir açıklama ayarlamanıza izin vermez. Örneğin, Adobe Acrobat şu anda böyle bir açıklamayı hiper bağlantılar için etkinleştirmemektedir. Fakat Microsoft Word'da bunu şu şekilde yapabilirsiniz:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

Bazen bir sorun ortaya çıkıyor, otomatik olarak oluşturulan bağlantılar için alt metin ayarlamak mümkün değil Microsoft Word GUI aracılığıyla, İçindekiler (TOC) tablosu Aspose.Words bu alanları kendisi güncelleyebilir ve bağlantıları üretebilir.

`TOC` alanlarını Aspose.Words Document Object Model kullanarak güncellemek için kod örneğini izleyin ( DOM ):

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### Masa Başlıkları

| PDF standart uyum seviyeleri içinde Aspose.Words | Gereksinim varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/UA-1 belgelerindeki tabloların başlıkları olmalı - sütun, satır veya her ikisi. PDF/A sadece standart tablo işaretlemesini gerektirir ki bu ek kısıtlamalar içermez. Not edin ki Aspose.Words standart tablo işaretlemesi otomatik olarak oluşturur.

{{% alert color="secondary" %}}
<details>
    <özet>bölümü bize şöyler diyor (ayrıntıları göstermek için genişletiyin):</özet>
    <p></p>
    <p>Tablolar başlıkları içermeli... Tablolar sütun başlıkları, satır başlıkları veya her ikisini birden içerebilir.</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <özet>Bu blokta örnekler görebilirsiniz: masa başlığı (ayrıntıları göstermek için genişlet) nasıl ayarlanır?</özet>
    <p></p>
    <p>Tablo başlığı ya Microsoft Word kaynak belgesi ile kurulabilir:</p>
        <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>Veya çıktı PDF:</p>
        <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### Değiştirme Metni

| PDF standart uyum düzeyleri içinde Aspose.Words | Gereksinimin varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <özet>Bu spesifikasyon bize aşağıdakiları (ayrıntıları görmek için genişlet) söyler:</özet>
    <p></p>
    <p>Spesifikasyon bize şu şekilde der:</p>
    <p>Özel karakterler veya satır içi grafikler gibi standart olmayan şekilde temsil edilen tüm metin yapısı öğeleri, yapı öğesi sözlüğündeki `ActualText` girişini kullanarak değiştirme metni sağlamalıdır ...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word belgesi kullanıcıları yedekleme metni ayarlamasına izin vermez. Bu nedenle bu, çıktı PDF'de doğrulanması ve düzeltilmesi gerekir:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### Kısaltmalar ve Akronimler Genişlemeleri

| PDF standart uyum düzeyleri içinde Aspose.Words | Gereksinim varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>Belirtim bize şunu (ayrıntıları göstermek için genişlet) söylüyor:</summary>
    <p></p>
    <p>Metinsel içerikteki tüm kısaltmalar ve akronimlerin yerine gelmesi bir işaretli içerik dizisi ile yapılmalıdır; Spantag'ın E özelliği, kısaltma veya akronimin metin genişlemesini sağlar...</p>
<p>ISO-19005-2, 6.7.8</p>
<details>
{{% /alert %}}

Microsoft Word belgesi kullanıcıların kısaltma ve akronim genişlemeleri ayarlamasına izin vermez. Bu bu yüzden doğrulanmalı ve çıktı PDF'de düzeltilmeli:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## Belge Başlığı

| PDF standart uyum düzeyleri içinde Aspose.Words | İsteğin varlığı |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}} <br /> Belge PDF/UA-1 bir başlık içermelidir. |

{{% alert color="secondary" %}}
<details>
    <özet>bölümü bize şunu söyler (ayrıntıları görmek için genişletin):</özet>
    <p></p>
    <p>Spesifikasyon bize şu şekilde der:</p>
    <p>Belgenin kataloğunda bulunan Metadata akışının dc: title girişinde içermesi gerekir. dc, Dublin Core meta veri şeması için önerilen öneki ...</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<ayrıntılar>
    <özet>Bu blokta, belgenin başlığını nasıl ayarlayacağını (ayrıntıları göstermek için genişleterek) görebilirsiniz.</özet>
    <p></p>
    <p>Belge başlığı ya kaynak Microsoft Word belgesi olarak da kurulabilir.</p>
        <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>Ya da çıktı PDF:</p>
        <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## Font Gereksinimleri

| PDF standart uyum düzeyleri içinde Aspose.Words | Gereksinim varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/A-1, PDF/A-2, PDF/A-4 veya PDF/UA-1 formatlarına dönüştürürken Aspose.Words'ı kullanarak yazı tipleri ile çalışırken bir dizi ince ayar da vardır. Bu belgenin olası sorunlarla karşılaşmamak için dikkate alınmalıdırlar.

Aşağıdaki bölümler bu nüansları ve bunların çözümleri için seçenekleri açıklar.

### Tip Yasal Gereksinimleri

| PDF standart uyum düzeyleri içinde Aspose.Words'' | Gereksinim varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words kullanılan yazı tiplerinin yasal kısıtlamalarını doğrulamaz – kullanıcılara kalmış. Başka bir deyişle, bir kullanıcı Aspose.Words'u kullanarak PDF dönüştürmesi için uygunsuz yazı tipleri sağlamamalı.

{{% alert color="secondary" %}}
<details>
    <summary>Sertifikasyon bize aşağıdakiları söyler (ayrıntıları görmek için genişletin):</summary>
    <p></p>
    <p>Sadece yasal olarak bir dosyaya gömülebilir olan ve sınırsız, evrensel işleme izin veren yazı tipleri kullanılacaktır.</p>
    <p>ISO-19005-2, 6.2.11.4.1 ; ISO-14289-1, 7.21.4.1 (iki taslakta tam olarak aynı alıntılar)</p>
</details>
{{% /alert %}}

### .notdef Glyph

| PDF standart uyum düzeyleri içinde Aspose.Words | Gereksinim varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Kullanımın `.notdef` glyph'i yasaklanmıştır. The `.notdef` glyph's will appear if a document contains characters that are not present in the selected font, and is unable to resolve them through the Font Fallback mechanism.

{{% alert color="secondary" %}}
<details>
    <summary>Spesifikasyon bize aşağıdaki (ayrıntıları göstermek için genişlet) (genişlet):</summary>
    <p></p>
    <p>Uyumluluk gösteren bir belge .notdef glyph herhangi bir metin gösterme operatörlerine başvurmak içermemeli, hangi metin çizme modu olursa olsun, herhangi bir içerik akışında</p>
    <p>ISO -19005 -2, 6.2.11.8 ; ISO -14289 -1, 7.21.8 ( tam aynı alıntılar iki spesifikasyonda)</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <özet>Bu blokta, örnekleri görebilirsiniz: bu karakterleri nasıl kaldırabilir veya değiştirebilir (ayrıntıları görmek için genişletme)".</özet>
    <p></p>
    <p>Kullanıcılar, kaynak Word belgesine ya da her ikisine de bu karakterleri kaldırmalı veya değiştirmelidir:</p>
        <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>Ya da "PDF Düzenle" aracını kullanarak çıktıyı PDF belgesi olarak kaydedin:</p>
        <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### Özel Kullanım Alanı (PUA)

| PDF standart uyum düzeyleri içinde Aspose.Words | İhtiyaç varlığı |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

Özel Kullanım Alanı (PUA) karakterleri çoğunlukla Windows sembolik yazı tipleri için görünür, örneğin "Sembol", "Kanat Çıkartmaları", "Webdings" ve diğerleri. Microsoft Word formatları karakterlerin gerçek metni depolamak için bir seçenek sağlamaz.

{{% alert color="secondary" %}}
<details>
    <özet>Spesifikasyon bize şu (ayrıntıları görmek için genişlet) belirtir:</özet>
    <p></p>
    <p>Sadece Seviye A uyum için, bir karakter ... her şey Unicode Özel Kullanım Alanı'nda (PUA) kod veya kodlara eşlendiğinde, bu karakterin veya bu karakterin bir parçası olan karakterlerin dizisinin bir parçası olduğu için ActualText girişi ... mevcut olmalıdır.</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI sembolü" Windows sembolik fontlara alternatif olarak kullanılabilir Unicode font.

{{% alert color="secondary" %}}
<details>
    <özet>Bu blokta, sorunu simgesel yazı tipleriyle çözmek için kullanıcıya ne yapması gerektiğini görebilirsiniz (ayrıntıları görmek için genişletme).</özet>
    <p></p>
    <p>Kısayol yazı tipini kaynak Word belgesinde bir Unicode yazı tipi ile değiştirin:</p>
        <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>Çıktı PDF belgesinde sorunlu karakterler için bir ActualText girişi ekleyin:</p>
        <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
<details>
{{% /alert %}}
