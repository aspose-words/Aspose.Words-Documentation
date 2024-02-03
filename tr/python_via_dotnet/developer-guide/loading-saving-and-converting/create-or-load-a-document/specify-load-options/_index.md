---
title: Python'te Yükleme Seçeneklerini Belirleyin
second_title: Python via .NET için Aspose.Words
articleTitle: Yükleme Seçeneklerini Belirtin
linktitle: Yükleme Seçeneklerini Belirtin
description: "Python'i kullanarak yükleme sürecini daha doğru bir şekilde kontrol edin."
type: docs
weight: 10
url: /tr/python-net/specify-load-options/
---

Bir belgeyi yüklerken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size yükleme sürecinin daha hassas kontrolüne olanak tanıyan [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) sınıfını sağlar. Bazı yükleme formatlarında, bu yükleme formatına yönelik yükleme seçeneklerini içeren karşılık gelen bir sınıf bulunur; örneğin, PDF formatına yüklemek için [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) veya TXT'ye yüklemek için [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) vardır. Bu makalede, [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) sınıfının seçenekleriyle çalışmaya ilişkin örnekler verilmektedir.

## Görünümü Değiştirmek için Microsoft Word Sürümünü Ayarlayın

Microsoft Word uygulamasının farklı sürümleri belgeleri farklı şekilde görüntüleyebilir. Örneğin WPS Office kullanılarak üretilen DOCX veya DOTX gibi OOXML belgelerinde iyi bilinen bir sorun vardır. Böyle bir durumda, temel belge işaretleme öğeleri eksik olabilir veya farklı şekilde yorumlanabilir ve bu da Microsoft Word 2019'un böyle bir belgeyi Microsoft Word 2010'a göre farklı göstermesine neden olabilir.

Aspose.Words, varsayılan olarak belgeleri Microsoft Word 2019 kurallarını kullanarak açar. Belge yükleme işleminin önceki Microsoft Word uygulama sürümlerinden birinde olduğu gibi görünmesini sağlamanız gerekiyorsa, [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) sınıfının [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) özelliğini kullanarak istenen sürümü açıkça belirtmelisiniz.

Aşağıdaki kod örneği, Microsoft Word sürümünün yükleme seçenekleriyle nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Görünümü Değiştirmek için Dil Tercihlerini Ayarlayın

Bir belgeyi Microsoft Word'te görüntülemenin ayrıntıları yalnızca uygulama sürümüne ve [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) özellik değerine değil aynı zamanda dil ayarlarına da bağlıdır. Microsoft Word, "Dosya → Seçenekler → Dil" bölümünde bulunabilen "Ofis Dil Tercihleri" iletişim kutusu ayarlarına bağlı olarak belgeleri farklı şekilde gösterebilir. Bu iletişim kutusunu kullanarak kullanıcı örneğin birincil dili, yazım denetleme dillerini, görüntüleme dillerini vb. seçebilir. Aspose.Words, [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) özelliğini bu iletişim kutusunun eşdeğeri olarak sağlar. Aspose.Words çıktısı Microsoft Word çıktısından farklıysa [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) için uygun değeri ayarlayın; bu, çıktı belgesini iyileştirebilir.

Aşağıdaki kod örneği, Japonca'nın [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) olarak nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Bellek İstisnasını Önlemek için TempFolder'ı Kullanın

Aspose.Words, zengin içerikle dolu binlerce sayfaya sahip son derece büyük belgeleri destekler. Bu tür belgelerin yüklenmesi çok fazla RAM gerektirebilir. Yükleme sürecinde, Aspose.Words'in bir belgeyi ayrıştırmak için kullanılan geçici yapıları tutmak için daha da fazla belleğe ihtiyacı vardır.

Belge yüklerken Bellek Yetersizliği istisnasıyla ilgili bir sorunla karşılaşırsanız [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) özelliğini kullanmayı deneyin. Bu durumda Aspose.Words, bazı verileri bellek yerine geçici dosyalarda saklar ve bu, böyle bir istisnanın önlenmesine yardımcı olabilir.

Aşağıdaki kod örneği [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/)'in nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Kodlamayı Açıkça Ayarlayın

Çoğu modern belge formatı, içeriklerini Unicode'da saklar ve özel bir işlem gerektirmez. Öte yandan, Unicode öncesi bazı kodlamaları kullanan ve bazen kodlama bilgilerini kaçıran veya doğası gereği kodlama bilgilerini bile desteklemeyen birçok belge hala vardır. Aspose.Words, varsayılan olarak uygun kodlamayı otomatik olarak algılamaya çalışır, ancak nadir bir durumda, kodlama tanıma algoritmamız tarafından algılanandan farklı bir kodlama kullanmanız gerekebilir. Bu durumda kodlamayı almak veya ayarlamak için [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) özelliğini kullanın.

Aşağıdaki kod örneği, kodlamanın otomatik olarak seçilen kodlamayı geçersiz kılacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Şifreli Belgeleri Yükle

Bir parola ile şifrelenmiş Word belgelerini yükleyebilirsiniz. Bunu yapmak için [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) nesnesini kabul eden özel bir yapıcı aşırı yüklemesi kullanın. Bu nesne, parola dizesini belirten [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) özelliğini içerir.

Aşağıdaki kod örneği, parolayla şifrelenmiş bir belgenin nasıl yükleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Dosyanın şifrelenip şifrelenmediğini önceden bilmiyorsanız, dosya formatlarıyla çalışmak için dosya formatını algılama veya dosya uzantılarını dosya formatı numaralandırmalarına/dosya uzantılarından dönüştürme gibi yardımcı yöntemler sağlayan [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) sınıfını kullanabilirsiniz. Belgenin şifrelenip şifrelenmediğini ve onu açmak için parola gerekip gerekmediğini tespit etmek için [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) özelliğini kullanın.

Aşağıdaki kod örneği, belgenin şifrelenmiş olup olmadığının nasıl doğrulanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
