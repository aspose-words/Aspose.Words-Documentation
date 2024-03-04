---
title: C#'te Yükleme Seçeneklerini Belirleyin
second_title: .NET için Aspose.Words
articleTitle: Yükleme Seçeneklerini Belirtin
linktitle: Yükleme Seçeneklerini Belirtin
description: "C#'i kullanarak yükleme sürecini daha doğru bir şekilde kontrol edin."
type: docs
weight: 10
url: /tr/net/specify-load-options/
---

Bir belgeyi yüklerken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size yükleme sürecinin daha hassas kontrolüne olanak tanıyan [LoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/) sınıfını sağlar. Bazı yükleme formatlarında, bu yükleme formatına yönelik yükleme seçeneklerini içeren karşılık gelen bir sınıf bulunur; örneğin, PDF formatına yüklemek için [PdfLoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/pdfloadoptions/) veya TXT'ye yüklemek için [TxtLoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/txtloadoptions/) vardır. Bu makalede **LoadOptions** sınıfının seçenekleriyle çalışmaya ilişkin örnekler verilmektedir.

## Görünümü Değiştirmek için Microsoft Word Sürümünü Ayarlayın

Microsoft Word uygulamasının farklı sürümleri belgeleri farklı şekilde görüntüleyebilir. Örneğin WPS Office kullanılarak üretilen DOCX veya DOTX gibi OOXML belgelerinde iyi bilinen bir sorun vardır. Böyle bir durumda, temel belge işaretleme öğeleri eksik olabilir veya farklı şekilde yorumlanabilir ve bu da Microsoft Word 2019'un böyle bir belgeyi Microsoft Word 2010'a göre farklı göstermesine neden olabilir.

Aspose.Words, varsayılan olarak belgeleri Microsoft Word 2019 kurallarını kullanarak açar. Belge yükleme işleminin önceki Microsoft Word uygulama sürümlerinden birinde olduğu gibi görünmesini sağlamanız gerekiyorsa, **LoadOptions** sınıfının [MswVersion](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/mswversion/) özelliğini kullanarak istenen sürümü açıkça belirtmelisiniz.

Aşağıdaki kod örneği, Microsoft Word sürümünün yükleme seçenekleriyle nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Görünümü Değiştirmek için Dil Tercihlerini Ayarlayın

Bir belgeyi Microsoft Word'te görüntülemenin ayrıntıları yalnızca uygulama sürümüne ve **MswVersion** özellik değerine değil aynı zamanda dil ayarlarına da bağlıdır. Microsoft Word, "Dosya → Seçenekler → Dil" bölümünde bulunabilen "Ofis Dil Tercihleri" iletişim kutusu ayarlarına bağlı olarak belgeleri farklı şekilde gösterebilir. Bu iletişim kutusunu kullanarak kullanıcı örneğin birincil dili, yazım denetleme dillerini, görüntüleme dillerini vb. seçebilir. Aspose.Words, [LanguagePreferences](https://reference.aspose.com/words/tr/net/aspose.words.loading/languagepreferences/) özelliğini bu iletişim kutusunun eşdeğeri olarak sağlar. Aspose.Words çıktısı Microsoft Word çıktısından farklıysa **EditingLanguage** için uygun değeri ayarlayın; bu, çıktı belgesini iyileştirebilir.

Aşağıdaki kod örneği, Japonca'nın **EditingLanguage** olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Belge Yüklerken Sorunları Kontrol Etmek İçin WarningCallback'i Kullanın

Bazı belgeler bozuk olabilir, geçersiz girişler içerebilir veya şu anda Aspose.Words tarafından desteklenmeyen özelliklere sahip olabilir. Bir belgeyi yüklerken oluşan sorunları öğrenmek istiyorsanız Aspose.Words, [IWarningCallback](https://reference.aspose.com/words/tr/net/aspose.words/iwarningcallback/) arayüzünü sağlar.

Aşağıdaki kod örneği **IWarningCallback** arayüzünün uygulanmasını gösterir:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Yükleme süresi boyunca tüm sorunlar hakkında bilgi almak için [WarningCallback](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/warningcallback/) özelliğini kullanın.

Aşağıdaki kod örneği bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Dış Kaynak Yüklemesini Kontrol Etmek için ResourceLoadingCallback'i kullanın

Bir belge, yerel diskte, ağda veya İnternet'te bir yerde bulunan görüntülere harici bağlantılar içerebilir. Aspose.Words bu tür görselleri otomatik olarak bir belgeye yükler ancak bu sürecin kontrol edilmesi gereken durumlar da vardır. Örneğin, belirli bir görseli gerçekten yüklememiz mi, yoksa onu atlamamız mı gerektiğine karar vermek için. [ResourceLoadingCallback](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/resourceloadingcallback/) yükleme seçeneği bunu kontrol etmenizi sağlar.

Aşağıdaki kod örneği [IResourceLoadingCallback](https://reference.aspose.com/words/tr/net/aspose.words.loading/iresourceloadingcallback/) arayüzünün uygulanmasını gösterir:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Aşağıdaki kod örneği **ResourceLoadingCallback** özelliğinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Bellek İstisnasını Önlemek için TempFolder'ı Kullanın

Aspose.Words, zengin içerikle dolu binlerce sayfaya sahip son derece büyük belgeleri destekler. Bu tür belgelerin yüklenmesi çok fazla RAM gerektirebilir. Yükleme sürecinde, Aspose.Words'in bir belgeyi ayrıştırmak için kullanılan geçici yapıları tutmak için daha da fazla belleğe ihtiyacı vardır.

Belge yüklerken Bellek Yetersizliği istisnasıyla ilgili bir sorunla karşılaşırsanız [TempFolder](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/tempfolder/) özelliğini kullanmayı deneyin. Bu durumda Aspose.Words, bazı verileri bellek yerine geçici dosyalarda saklar ve bu, böyle bir istisnanın önlenmesine yardımcı olabilir.

Aşağıdaki kod örneği **TempFolder**'in nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Kodlamayı Açıkça Ayarlayın

Çoğu modern belge formatı, içeriklerini Unicode'da saklar ve özel bir işlem gerektirmez. Öte yandan, Unicode öncesi bazı kodlamaları kullanan ve bazen kodlama bilgilerini kaçıran veya doğası gereği kodlama bilgilerini bile desteklemeyen birçok belge hala vardır. Aspose.Words, varsayılan olarak uygun kodlamayı otomatik olarak algılamaya çalışır, ancak nadir bir durumda, kodlama tanıma algoritmamız tarafından algılanandan farklı bir kodlama kullanmanız gerekebilir. Bu durumda kodlamayı almak veya ayarlamak için [Encoding](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/encoding/) özelliğini kullanın.

Aşağıdaki kod örneği, kodlamanın otomatik olarak seçilen kodlamayı geçersiz kılacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Şifreli Belgeleri Yükle

Bir parola ile şifrelenmiş Word belgelerini yükleyebilirsiniz. Bunu yapmak için [LoadOptions](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/) nesnesini kabul eden özel bir yapıcı aşırı yüklemesi kullanın. Bu nesne, parola dizesini belirten [Password](https://reference.aspose.com/words/tr/net/aspose.words.loading/loadoptions/password/) özelliğini içerir.

Aşağıdaki kod örneği, parolayla şifrelenmiş bir belgenin nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Dosyanın şifrelenip şifrelenmediğini önceden bilmiyorsanız, dosya formatlarıyla çalışmak için dosya formatını algılama veya dosya uzantılarını dosya formatı numaralandırmalarına/dosya uzantılarından dönüştürme gibi yardımcı yöntemler sağlayan [FileFormatUtil](https://reference.aspose.com/words/tr/net/aspose.words/fileformatutil/) sınıfını kullanabilirsiniz. Belgenin şifrelenip şifrelenmediğini ve onu açmak için parola gerekip gerekmediğini tespit etmek için [IsEncrypted](https://reference.aspose.com/words/tr/net/aspose.words/fileformatinfo/isencrypted/) özelliğini kullanın.

Aşağıdaki kod örneği, OpenDocument'in şifrelenmiş olup olmadığının nasıl doğrulanacağını gösterir:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
