---
title: FAQ
second_title: Aspose.Words için C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words için C++ en sık sorulan soruları yanıtlar. Genel sorular veya belirli konulardaki sorununuzu hızlı bir şekilde çözmek için bu sayfayı öğrenin."
weight: 75
url: /tr/cpp/faq/
timestamp: 2024-01-31-14-23-37
---

Bu sayfa en sık sorulan soruların yanıtlarını içerir. Lütfen mevcut sayfayı öğrenin - belki bu, sorununuzu hızlı bir şekilde çözmenize izin verecektir.

Sorunuzun cevabını bulamadıysanız, destek forumundan sorabilirsiniz. Sorunuzu veya sorununuzu doğru şekilde bildirme hakkında daha fazla bilgi için bkz. [Teknik Destek](/words/cpp/technical-support/) sayfa.

{{% alert color="primary" %}}

Sık sorulan sorular size kolaylık sağlamak için konuya göre gruplandırılmıştır.

{{% /alert %}}

## Genel

**S: Aspose.Words nedir?**

Aspose.Words için C++ uygulamalarınızın çok çeşitli belge işleme görevlerini gerçekleştirmesini sağlayan bir sınıf kitaplığıdır. İle Aspose.Words için C++, üçüncü taraf uygulamaları olmadan belgeler oluşturabilir, değiştirebilir, dönüştürebilir, oluşturabilir ve yazdırabilirsiniz.

Ayrıntılar belgelerimizde bulunabilir.

------

**S: "Aspose.Words üçüncü taraf uygulamaları gerektirmez" ne anlama geliyor?**

Aspose.Words için C++ çalışmak için herhangi bir üçüncü taraf uygulaması veya ek yazılım paketi yüklemenize gerek yoktur. Sadece Aspose.Words 'yi açıklandığı gibi indirin ve yükleyin ["Kurulum"](/words/cpp/installation/) makale ve başlayın.

------

**S: Aspose.Words hangi platformları destekliyor?**

Aspose.Words için C++ popüler geliştirme ortamlarının ve dağıtım platformlarının çoğunu kapsar. API, Windows, Linux ve Mac OS gibi çok çeşitli işletim sistemleri ve çeşitli platformlar için uygulamalar geliştirmek için kullanılabilir.

Ayrıntılar için bkz. [Ürüne Genel Bakış](/words/cpp/product-overview/) sayfa.

------

**S: Aspose.Words hangi belge biçimlerini destekler?**

Aspose.Words için C++ aşağıdakiler gibi popüler belge biçimlerinin çoğunu destekler DOC, DOCX, HTML, Markdown, PDF, XML, ve diğerleri.

Desteklenen formatların tam listesini şu adreste görebilirsiniz: [Desteklenen Belge Biçimleri](/words/cpp/supported-document-formats/) sayfa.

------

**S: Aspose.Words 'ı nasıl ücretsiz deneyebilirim?**

Bunu iki şekilde yapabilirsiniz – Deneme sürümünü veya 30 günlük Geçici bir Lisansı kullanarak. Deneme sürümü satın alınanla aynıdır, tam ürün işlevselliği sağlar, ancak yüklerken ve kaydederken belgenin üstüne değerlendirici bir filigran ekler ve maksimum belge boyutunu birkaç yüz paragrafla sınırlar. Geçici Bir Lisans, Aspose.Words 'i 30 gün boyunca Deneme kısıtlaması olmadan test etmenize olanak tanır.

Bakın [Lisanslama ve Abonelik](/words/cpp/licensing/) daha fazla bilgi için sayfa.

{{% alert color="primary" %}}

En popüler Aspose.Words özelliklerden bazılarını şu adresten de deneyebilirsiniz: [Aspose.Words ücretsiz çevrimiçi Uygulamalar](https://products.aspose.app/words).

{{% /alert %}}

------

**S: Aspose.Words 'ı nasıl satın alabilirim?**

Bir Aspose.Words lisansı satın almak için şu adrese gitmeniz gerekir: [Satın alma](https://purchase.aspose.com/buy) sayfa, "Aspose.Words" ürününü ve size uygun lisans türünü seçin. Ardından lisansı sepetinize ekleyin ve Alışveriş Sepeti talimatlarını izleyin.

Satın aldıktan sonra, lisans için başvuruda açıklandığı gibi başvurun. [Satın Alınan Lisans](/words/cpp/licensing/#purchased-license) bölüm.

Aspose.Words'in nasıl kurulacağı ile ilgili ayrıntılar şu adresten okunabilir: [Kurulum](/words/cpp/installation/) sayfa.

------

**S: Nasıl destek alabilirim?**

Ücretsiz teknik destek forumunu kullanın. Bir sorunun nasıl düzgün bir şekilde bildirileceği ve foruma başvurmadan önce yapılması gerekenler hakkında ayrıntılar için bkz. [Teknik Destek](/words/cpp/technical-support/) sayfa.

## Belge Oluşturma

{{% alert color="primary" %}}

Oluşturma hakkında daha ayrıntılı bilgiyi şu adreste bulabilirsiniz: [İşleme](/words/cpp/rendering/) dokümantasyon bölümü.

{{% /alert %}}

**S: Çıktı belgesindeki düzen ve yazı tipleri neden orijinalden farklıdır?**

Yazı tipi kullanılamayabilir veya yazı tipi biçimi Microsoft Word tarafından desteklenir, ancak Aspose.Words tarafından desteklenmez. Aspose.Words gerçekleştirecek [yazı tipi değiştirme](/words/cpp/manipulate-and-substitute-truetype-fonts/).

Yazı tipinin eksik olup olmadığını kontrol etmek için:

- Aspose.Words'de Yazı tipi değiştirme uyarılarını kullanın (ayrıntılar için, "Yazı Tipinin Değiştirildiğini Tanıma" bölümüne bakın. [TrueType Yazı Tiplerini Değiştirme ve Değiştirme](/words/cpp/manipulate-and-substitute-truetype-fonts/) makale).
- Microsoft Word 'da "Yazı Tipi Değiştirme" iletişim kutusunu açın (Dosya → Seçenekler → Gelişmiş → Yazı Tipi Değiştirme).

------

**S: Neden yazı tipi geri dönüşü Windows olmayan platformlarda çalışmıyor ve Unicode karakterleri ile değiştiriliyor.glif değil mi?**

Bazı Unicode karakterleri yerine `.notdef` glifini sıklıkla görebiliriz. Bu genellikle bir kutu veya soru glifidir.

Bunun nedeni, Microsoft Office geri dönüş ayarlarının varsayılan olarak seçili olması ve Microsoft Office yazı tiplerinin kullanılamamasıdır. Kullanıcıların Microsoft Office yazı tiplerini yüklemeleri veya geri dönüş ayarlarını değiştirmeleri gerekir.

------

**S: Neden Tay Dili veya İbranice gibi karmaşık komut dosyası metni, aksanların yanlış konumu veya yanlış bitişik harfler gibi bir nedenle yanlış görüntülenebilir?**

Bazı karmaşık komut dosyası yazı tipleri, bunları doğru şekilde görüntülemek için Gelişmiş Tipografi özelliklerinin işlenmesini gerektirir. Gelişmiş Tipografi varsayılan olarak Aspose.Words seçeneğinde devre dışıdır. Kullanıcılar [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) ile Gelişmiş Tipografiyi etkinleştirmelidir.

------

**S: Kullandığım fontlar için lisans dosyalarına ihtiyacım var mı?**

Evet, biliyorsun. Bu nedenle, yazı tiplerini kopyalarken, çoğu yazı tipinin telif hakkıyla korunduğunu unutmayın. Yazı tipi lisanslarını önceden bulun ve başka bir makineye serbestçe aktarılabildiklerini doğrulayın.

## Belge Ekleme veya Ekleme

{{% alert color="primary" %}}

Belgelerle programlama hakkında daha ayrıntılı bilgiyi şu adreste bulabilirsiniz: [Belgelerle Programlama](/words/cpp/programming-with-documents/) dokümantasyon bölümü.

{{% /alert %}}

**S: Bir belgeye eklenen içerik neden aynı sayfada görünmüyor?**

Ekleme sonucu, belgelerin birlikte eklendiği bölümlerin [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) ayarlarındaki farklılık nedeniyle ayrı bir sayfada görüntülenir. Belgelerin birlikte eklendiği bölümler için aynı **PageSetup** ayarları yapın.

## Bir Belgeyi Dönüştürme

{{% alert color="primary" %}}

Bir belgeyi dönüştürme hakkında daha ayrıntılı bilgiyi şu adreste bulabilirsiniz: [Bir Belgeyi Dönüştürme](/words/cpp/convert-a-document/) dokümantasyon bölümü.

{{% /alert %}}

**S: DOCX 'ı PDF'e nasıl dönüştürebilirim?**

Aynı zamanda çok kolaydır, sadece modele bir belge yükleyin ve desteklenen herhangi bir biçime kaydedin.

Aşağıdaki kod örneği, bir DOCX dosyasını PDF dosyasına dönüştürme işlemini gösterir:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## Bir Belgeyle İşleme

{{% alert color="primary" %}}

Belgelerle programlama hakkında daha ayrıntılı bilgiyi şu adreste bulabilirsiniz: [Belgelerle Programlama](/words/cpp/programming-with-documents/) dokümantasyon bölümü.

{{% /alert %}}

**S: Bir belge sayfası sayfaya nasıl bölünür?**

Aspose.Words çok sayfalı bir belgeyi sayfa sayfa bölmenizi sağlar.

Aşağıdaki kod örneği, bir belgenin nasıl bölüneceğini ve her sayfanın ayrı bir belge olarak nasıl kaydedileceğini gösterir:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**S: Şifreli nasıl açılır**

Şifrelenmiş bir belgeyi parola olmadan açmayı deneyebilirsiniz, bu da bir istisnaya yol açmalıdır.

Aşağıdaki kod örneği, şifrelenmiş bir belgenin parola ile nasıl açılacağını gösterir:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
