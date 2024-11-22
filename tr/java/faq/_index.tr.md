---
title: Sıkça Sorulan Sorular
second_title: Aspose.Words için Java
articleTitle: Sıkça Sorulan Sorular
linktitle: Sıkça Sorulan Sorular
type: docs
description: "Aspose.Words için, Java en çok sorulan sorulara cevap verir. Bu sayfayı genel soru veya özel konular hakkında hızlı bir şekilde probleminizi çözmek için öğrenin."
weight: 75
url: /tr/java/faq/
timestamp: 2024-01-31-14-23-37
---

Bu sayfada en sık sorulan soruların cevapları vardır. Lütfen şu anki sayfayı öğren – belki bu, sizin probleminizi hızlıca çözmenize olanak sağlayacaktır.

Soru cevabını bulamadıysan, destek forumunda sorabilirsin. Sorunuzu veya probleminizi nasıl düzgün bir şekilde bildireceğiniz hakkında bilgi için [Technical Support](/words/java/technical-support/) sayfasına bakın.

{{% alert color="primary" %}}

Sık sorulan sorular, kolaylığınız için konu başlığına göre gruplandırılmıştır.

{{% /alert %}}

## Genel

**Q:  Nedir Aspose.Words?**

Aspose.Words için Java bir sınıf kütüphanesidir, uygulamaların çeşitli belge işlemeyi gerçekleştirmesini sağlar. Aspose.Words ile birlikte bir Java için, belgeleri üçüncü taraf uygulamalar olmadan oluşturabilir, değiştirebilir, dönüştürebilir, görüntüleyebilir ve yazdırılabilir.

Detaylar belgelendirmemizde bulunabilir.

------

**Q: Bu ne anlama geliyor "Aspose.Words üçüncü taraf uygulamalar gerektirmiyor"?**

Aspose.Words için Java çalışmak için herhangi bir üçüncü taraf uygulaması veya ek yazılım paketlerinin yüklenmesine ihtiyaç duymaz. Yalnızca Aspose.Words'i yukarıdaki [Installation](/words/java/installation/) makalesinde anlatıldığı gibi indirin ve kurun ve işe başlayın.

------

**Q: Hangi platformları Aspose.Words destekliyor?**

Aspose.Words için Java çoğu popüler geliştirme ortamı ve dağıtım platformlarını kapsar. Bunun API bir uygulamayı geniş bir yelpazede işletim sistemlerinde geliştirmek için kullanılabilir, örneğin Windows, Linux ve Mac OS, çeşitli platformlar.

Ayrıntılar için [Product Overview](/words/java/product-overview/) sayfasını ve [Platforms and Interoperability](/words/java/platforms-and-interoperability/) bölümünü gör.

------

**Q:  Aspose.Words'ın desteklediği belge formatları nelerdir?**

Aspose.Words için Java çoğu popüler belge formatlarını destekler, örneğin DOC, DOCX, HTML, Markdown, PDF, XML ve diğerleri.

Desteklenen formatların eksiksiz listesini [Supported Document Formats](/words/java/supported-document-formats/) sayfasında görebilirsiniz.

------

**Q: Nasıl deneyebilirim Aspose.Words ücretsiz?**

Bunu iki şekilde yapabilirsin – Deneme Sürümü'nü kullanarak veya 30 günlük Geçici Lisans kullanarak. Deneme sürümü satın alınan sürümle aynıdır ve tam ürün işlevselliğini sağlar ancak yükleme ve kaydetme sırasında belgenin üst kısmına değerlendirici bir su damgası ekler ve maksimum belge boyutunu birkaç yüz paragrafla sınırlandırır. Geçici bir Lisans, 30 gün boyunca Deneme kısıtlamaları olmadan Aspose.Words test etmenizi sağlar.

Daha fazla bilgi için [Licensing and Subscription](/words/java/licensing/) sayfasını görün.

{{% alert color="primary" %}}

En popüler Aspose.Words özelliklerinden bazılarını da deneyebilirsiniz [Aspose.Words free online Apps](https://products.aspose.app/words) aracılığıyla.

{{% /alert %}}

------

**Q: Nasıl Aspose.Words satın alabilirim?**

Bir Aspose.Words lisansı satın almak için, sayfa [Purchase](https://purchase.aspose.com/buy)'a gitmeniz gerekiyor, 'Aspose.Words' ürünü seçin ve size uygun lisans türü. Daha sonra lisansınızı sepetinize ekleyin ve Alışveriş Sepeti talimatlarını izleyin.

Satın almadan sonra, lisans için yukarıdaki [Purchased License](/words/java/licensing/#purchased-license) bölümünde açıklandığı gibi başvurun.

Aspose.Words 'nin nasıl yükleneceği hakkında ayrıntılar, [Installation](/words/java/installation/) sayfasından okunabilir.

------

**Q:  Nasıl destek alabilirim?**

Ücretsiz teknik destek forumunu kullanın. Sorunu nasıl bildireceğiniz ve önce forum ile iletişime geçmeden önce yapılması gerekenler hakkında ayrıntılı bilgi için [Technical Support](/words/java/technical-support/) sayfasını görün.

## Bir Belgeyi Görüntüleme

{{% alert color="primary" %}}

İşte "sizin ayrıntılı bilgi için sunum hakkında [Rendering](/words/java/rendering/) belgelendirme bölümünde bulabilirsiniz." cümlesinin çevirisi:

{{% /alert %}}

**Q: Çıktı belgesindeki düzen ve yazı tipleri neden orijinalinkilerden farklıdır?**

Yazı tipi mevcut olmayabilir veya yazı tipi biçimi Microsoft Word tarafından desteklenir ancak Aspose.Words tarafından desteklenmez. Aspose.Words [font substitution](/words/java/manipulate-and-substitute-truetype-fonts/)'ı gerçekleştirecektir.

yazı tipinin eksik olup olmadığını kontrol etmek için:

In Aspose.Words yazı tipisi değiştirme uyarılarını (ayrıntılar için, lütfen [Manipulate and Substitute TrueType Fonts](/words/java/manipulate-and-substitute-truetype-fonts/) makalesinin 'Yazı tipi nasıl değiştirildiğini tespit edersiniz' bölümüne bakın) kullanın.
- Microsoft Wordda "Font Substitution" iletişim kutusunu açın (Dosya → Seçenekler → Gelişmiş → Font Substitution).

------

**Q: Neden font yedekleme, Windows olmayan platformlarda çalışmıyor ve Unicode karakterleri .notdef glyph ile değiştiriliyor?**

Bazı Unicode karakteri yerine `.notdef` glyph'i sıklıkla görebiliriz. Bu genellikle bir kutu ya da bir sorudur glyph.

Bunun nedeni Microsoft ofis yedeği ayarları varsayılan olarak seçildi ve Microsoft ofis yazı tipleri kullanılamıyor. Kullanıcıların Microsoft Office yazı tiplerini yüklemesi gerekir veya alternatif ayarları değiştirmesi gerekir.

------

**Neden Q:  karmaşık yazı tipi metni, örneğin Tayland veya İbranice, yanlış bir şekilde görüntülenebilir, örneğin dikritiklerin yanlış konumu veya hatalı ligasyon nedeniyle**

Bazı karmaşık yazı tipi yazı tipleri doğru görüntülenebilmek için Gelişmiş Yazı Tipi özelliklerinin işlenmesi gerektirir. Gelişmiş Tipografi Aspose.Words varsayılan olarak devre dışı bırakılmıştır. Kullanıcıların Gelişmiş Tipografiyi [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory) ile etkinleştirmeleri gerekiyor.

------

**Q: Kullanmak istediğim yazı tipleri için lisans dosyalarına ihtiyacım var mı?**

Evet, sen yaparsın. Böylece yazı tiplerini kopyalarken aklınızda bulundurun ki çoğu yazı tipi telif hakkına tabidir. Yazı tipi lisanslarını önceden bulun ve başka bir makineye özgürce aktarılabileceğini doğrulayın.

## İç içe geçmiş Mail Merge

{{% alert color="primary" %}}

mail merge hakkında daha ayrıntılı bilgi için, lütfen [Mail Merge and Reporting](/words/java/mail-merge-and-reporting/) belgeleri bölümüne bakın.

{{% /alert %}}

**Q: Neden oluşturulan çıktıda birleştirilmiş alanlar yok?**

Birleştirme alanı için orijinal ad veri kaynağından gereken verilerle değiştirilmeden aynı kalırsa, o zaman:

- Verilerin doğru şekilde tablolara yüklendiğini kontrol edin: tüm gerekli birincil anahtarlarla ve ilişkileriyle [TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName)'ı doğru ayarlayın.
Birleştirme alanlarının doğru şekilde adlandırıldığından emin olun. Tüm birleştirme alanı adlarını almak için [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames) yöntemini kullanın ve şablonunuzdaki birleştirme alanlarının adlarının veri kaynağındaki olanlarla eşleştiğinden emin olun.

------

**Q: Nadir bir birleştirme çıkışı neden üst tablodaki ilk giriş için çocuk tablodan veri görüntülemezken üst tablodaki son giriş için tüm öğeleri görüntüler, hatta bunlar aslında ona bağlı değildir?**

Bunun nedeni şablonlardaki birleştirme bölgelerinin doğru şekilde oluşturulmamış olmasıdır, bu da tüm iç içe geçmiş Mail Merge bölgelerinin tamamen bir şey görüntülemeyi bırakmasına neden olabilir. The [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) açılış etiketi ve [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) kapanış etiketinin eşleşmesi ve aynı satırda ya da hücrede olması gerekir. Örneğin, bir tablodaki bir hücrenin içinde birleştirme bölgelerini iç içe geçmeye başlarsanız, birleştirme bölgesini ilk hücre ile aynı satırda bitirmelisiniz.

------

**Q: Anne tablodan her girişin çocuk tablodaki tüm öğeleri, aslında ona bağlı olmayanları bile göstermesi neden?**

Bunun nedeni ebeveyn ve çocuk tablolar arasındaki ilişki düzgün bir şekilde kurulmamış ya da yanlış bir şekilde kurulmasıdır. Bunun gerekli olmasıdır:

- Veri bütünlüğünü siz **DataSet** içinde garanti edin ve ilgili veri tabloları arasındaki ebeveyn-çocuk ilişkisini temsil etmek için **DataRelation** nesnesini kullanın.
- Madde [Nested Mail Merge with Regions](/words/java/nested-mail-merge-with-regions/)'deki "Bölgelerle İçe Geçirilmiş Mail Merge İçinde Veri İlişkilerini Nasıl Ayarlanır?" bölümünü kontrol edin.

------

**Neden bir özel durum oluştu: 'System.ArgumentException: Bu kısıtlama tüm değerlerin karşılık gelen üst değerleri olmadığını nedenle etkinleştirilemez' Q:  'için iç içe geçmiş mail merge' yürütülürken?**

Bu, her ebeveyn kaydının bir alt kayıt olmadığı için olur. Bu nedenle veri kaynağınız aşağıdaki kriterlere uymaz: *ebeveyn tablosundaki her satırın birincil ve yabancı anahtarlara dayalı olarak alt tablo üzerindeki satırlar ile bir-bir ilişkisi olmalıdır.*.

Yabancı anahtar kısıtlamalarını bir **DataRelation** oluştururken devre dışı bırakın.

## Bir Belge Ekle veya Gir

{{% alert color="primary" %}}

Programlama belgelerinde ayrıntılı programlama hakkında daha fazla bilgi bulabilirsiniz [Programming with Documents](/words/java/programming-with-documents/) belgelendirme bölümü.

{{% /alert %}}

**Q: Neden bir belgeden eklenen içerik aynı sayfada görünmüyor?**

Ekle sonuc ayrı bir sayfada görünür çünkü belgelerin eklendiği bölümler için [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) ayarlarında farklılık vardır. Birlikte eklenen belgelere ait bölümlerde aynı **PageSetup** ayarları yapın.

## Bir Belge Dönüştür

{{% alert color="primary" %}}

Bir belgeyi dönüştürme hakkında daha ayrıntılı bilgi, [Convert a Document](/words/java/convert-a-document/) belgelendirme bölümüne bakabilirsiniz.

{{% /alert %}}

**Q: DOCX'den PDF nasıl dönüştürülür?**

Çok kolay ayrıca, sadece bir belgeyi modele yükleyin ve bunu desteklenen herhangi bir formatta kaydedin.

Aşağıdaki kod örneği bir DOCX dosyasını PDF'ye dönüştürme sürecini göstermektedir:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Bir Belge ile Oynayın

{{% alert color="primary" %}}

Programlamayla ilgili daha ayrıntılı bilgilere, [Programming with Documents](/words/java/programming-with-documents/) belgelendirme bölümüne bakabilirsiniz.

{{% /alert %}}

**Q:  Bir belgeyi sayfa sayfa nasıl bölünecek?**

Aspose.Words bir çok sayfalık belgeyi sayfa başına sayfa olarak bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgenin nasıl bölüneceğini ve her sayfanın ayrı bir belge olarak nasıl kaydedileceğini göstermektedir:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**Q: Şifreli açmak nasıl yapılır** **belge mi?**

Parolasız bir şifreli belgeyi açmaya çalışabilirsiniz ki bu bir özel durum olmasına neden olmalı.

Şu kod örneği bir parolayla şifreli bir belgeyi nasıl açacağını gösterir:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**Q:  Bir belgenin nasıl basılacağını**

Ayrıntılı bir cevap için makaleyi [Printing a Document Programmatically or Using Dialogs](/words/java/print-a-document-programmatically-or-using-dialogs/) öğrenin.
