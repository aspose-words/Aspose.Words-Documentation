---
title: Yükleme Seçeneklerini C++ olarak Belirtin
second_title: Aspose.Words için C++
articleTitle: Yükleme Seçeneklerini Belirtin
linktitle: Yükleme Seçeneklerini Belirtin
description: "Yükleme işlemini daha doğru kontrol edin."
type: docs
weight: 10
url: /tr/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Belge yüklerken bazı gelişmiş özellikler ayarlayabilirsiniz. Aspose.Words size yükleme işleminin daha hassas kontrolünü sağlayan [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) sınıfını sağlar. Bazı yükleme biçimleri, bu yükleme biçimi için yükleme seçeneklerini tutan karşılık gelen bir sınıfa sahiptir, örneğin, PDF biçimine yüklemek için [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) veya TXT biçimine yüklemek için [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) vardır. Bu makalede, **LoadOptions** sınıfının seçenekleriyle çalışma örnekleri verilmektedir.

## Görünümü Değiştirmek için Microsoft Word Sürümünü Ayarlayın

Microsoft Word uygulamasının farklı sürümleri belgeleri kayıtsızca görüntüleyebilir. Örneğin, OOXML Office kullanılarak üretilen DOCX veya DOTX gibi WPS belgelerde iyi bilinen bir sorun vardır. Bu durumda, temel belge biçimlendirme öğeleri eksik olabilir veya farklı şekilde yorumlanabilir ve Microsoft Word 2019'un böyle bir belgeyi Microsoft Word 2010'a kıyasla farklı göstermesine neden olabilir.

Varsayılan olarak Aspose.Words, Microsoft Word 2019 kurallarını kullanarak belgeleri açar. Belge yüklemesinin önceki Microsoft Word uygulama sürümlerinden birinde olduğu gibi görünmesini sağlamanız gerekiyorsa, **LoadOptions** sınıfının [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) özelliğini kullanarak istediğiniz sürümü açıkça belirtmelisiniz.

Aşağıdaki kod örneği, Microsoft Word sürümünün yükleme seçenekleriyle nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Görünümü Değiştirmek için Dil Tercihlerini Ayarlama

Bir belgeyi Microsoft Word içinde görüntülemenin ayrıntıları yalnızca uygulama sürümüne ve **MswVersion** özellik değerine değil, aynı zamanda dil ayarlarına da bağlıdır. Microsoft Word, "Dosya → Seçenekler → Dil" bölümünde bulunan "Office Dil Tercihleri" iletişim kutusu ayarlarına bağlı olarak belgeleri farklı gösterebilir. Bu iletişim kutusunu kullanarak bir kullanıcı örneğin birincil dil, yazım denetleme dilleri, görüntüleme dilleri vb. Seçebilir. Aspose.Words bu iletişim kutusunun eşdeğeri olarak [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) özelliğini sağlar. Aspose.Words çıktısı Microsoft Word çıktısından farklıysa, **EditingLanguage** için uygun değeri ayarlayın - bu, çıktı belgesini iyileştirebilir.

Aşağıdaki kod örneği, Japonca'nın **EditingLanguage** olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Belge Yüklenirken Karşılaşılan Sorunları Denetlemek için WarningCallback kullanın

Bazı belgeler bozuk olabilir, geçersiz girişler içerebilir veya şu anda Aspose.Words tarafından desteklenmeyen özelliklere sahip olabilir. Belge yüklenirken ortaya çıkan sorunlar hakkında bilgi edinmek istiyorsanız, Aspose.Words [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) arabirimini sağlar.

Aşağıdaki kod örneği, **IWarningCallback** arabiriminin uygulanmasını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Yükleme süresi boyunca tüm sorunlar hakkında bilgi almak için `WarningCallback` özelliğini kullanın.

Aşağıdaki kod örneği, bu özelliğin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Harici Kaynakların Yüklenmesini Kontrol Etmek için ResourceLoadingCallback kullanın

Bir belge, yerel bir diskte, ağda veya Internet'te bir yerde bulunan görüntülere harici bağlantılar içerebilir. Aspose.Words bu tür görüntüleri otomatik olarak bir belgeye yükler, ancak bu işlemin kontrol edilmesi gereken durumlar vardır. Örneğin, belirli bir görüntüyü gerçekten yüklememiz veya belki de atlamamız gerekip gerekmediğine karar vermek için. ResourceLoadingCallback load seçeneği bunu kontrol etmenizi sağlar.

Aşağıdaki kod örneği, IResourceLoadingCallback arabiriminin uygulanmasını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Aşağıdaki kod örneği, **ResourceLoadingCallback** özelliğinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Bir Bellek İstisnasından Kaçınmak için TempFolder kullanın

Aspose.Words zengin içerikle dolu binlerce sayfası olan son derece büyük belgeleri destekler. Bu tür belgelerin yüklenmesi çok fazla RAM gerektirebilir. Yükleme sürecinde Aspose.Words, bir belgeyi ayrıştırmak için kullanılan geçici yapıları tutmak için daha da fazla belleğe ihtiyaç duyar.

Belge yüklenirken Yetersiz Bellek özel durumuyla ilgili bir sorun yaşarsanız, [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/) özelliğini kullanmayı deneyin. Bu durumda, Aspose.Words bazı verileri bellek yerine geçici dosyalarda depolar ve bu, böyle bir istisnadan kaçınmaya yardımcı olabilir.

Aşağıdaki kod örneği nasıl ayarlanacağını gösterir **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Kodlamayı Açıkça Ayarlayın

Çoğu modern belge biçimi içeriklerini Unicode'da depolar ve özel işlem gerektirmez. Öte yandan, bazı Unicode öncesi kodlamaları kullanan ve bazen kodlama bilgilerini kaçıran veya doğası gereği kodlama bilgilerini bile desteklemeyen birçok belge vardır. Aspose.Words varsayılan olarak uygun kodlamayı otomatik olarak algılamaya çalışır, ancak nadir durumlarda kodlama tanıma algoritmamız tarafından algılanandan farklı bir kodlama kullanmanız gerekebilir. Bu durumda, kodlamayı almak veya ayarlamak için [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) özelliğini kullanın.

Aşağıdaki kod örneği, kodlamanın otomatik olarak seçilen kodlamayı geçersiz kılacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Şifrelenmiş Belgeleri Yükle

Parola ile şifrelenmiş Word belgelerini yükleyebilirsiniz. Bunu yapmak için, [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/) nesnesini kabul eden özel bir kurucu aşırı yüklemesi kullanın. Bu nesne, parola dizesini belirten [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/) özelliğini içerir.

Aşağıdaki kod örneği, parola ile şifrelenmiş bir belgenin nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Dosyanın şifrelenip şifrelenmediğini önceden bilmiyorsanız, dosya biçimini algılama veya dosya uzantılarını dosya biçimi numaralandırmalarına dönüştürme gibi dosya biçimleriyle çalışmak için yardımcı yöntemler sağlayan [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/) sınıfını kullanabilirsiniz. Belgenin şifrelenip şifrelenmediğini ve açmak için bir parola gerektirip gerektirmediğini algılamak için `IsEncrypted` özelliğini kullanın.

Aşağıdaki kod örneği, şifrelenmiş olup olmadığının OpenDocument nasıl doğrulanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
