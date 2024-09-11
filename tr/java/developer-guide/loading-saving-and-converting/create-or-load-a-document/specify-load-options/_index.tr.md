---
title: Yük Seçeneklerini Java'da Belirtin
second_title: Aspose.Words için Java
articleTitle: Yük Seçeneklerini Belirtin
linktitle: Yük Seçeneklerini Belirtin
description: "Bir belgeyi yüklerken daha gelişmiş özellikler ayarlamak için Java'u kullanarak işlemin daha kesin kontrolü elde edin."
type: docs
weight: 10
url: /tr/java/specify-load-options/
---

Bir belge yüklerken bazı gelişmiş özellikleri ayarlayabilirsiniz. Aspose.Words size daha kesin kontrolü sağlayan [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) sınıfını sağlar. Bazı yükleme biçimleri bu yükleme biçimi için yükleme seçenekleri tutan karşılık gelen bir sınıfa sahiptir, örneğin PDF formatına yüklemek için [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) veya TXT formatına yüklemek için [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) vardır. Bu makale **LoadOptions** sınıfının seçenekleriyle çalışmanın örneklerini içerir.

## Görünümünü Değiştirmek İçin Microsoft Word Sürümü Ayarla

Farklı sürümlerdeki Microsoft Word uygulaması belgeleri farklı şekilde görüntüleyebilir. Örneğin, DOCX veya DOTX olarak üretilmiş WPS Office tarafından oluşturulan OOXML belgeleri ile ilgili iyi bilinen bir sorun vardır. Böyle durumlarda, temel belge işaretleme öğeleri eksik olabilir veya farklı yorumlanacaklar ve bu da Microsoft Word 2019'un böyle bir belgeyi Microsoft Word 2010'dan farklı şekilde görüntülemesine neden olacaktır.

Varsayılan olarak Aspose.Words belgeleri Microsoft Word 2019 kuralları kullanarak açar. Bir önceki Microsoft Word uygulama sürümlerinde bir belge yükleniyormuş gibi görünmesi gerekiyorsa, istediğiniz sürümü açıkça belirtmek için [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) özelliğini **LoadOptions** sınıfına kullanmalısınız.

Aşağıdaki kod örneği yükleme seçenekleri ile Microsoft Word sürümünü nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Dil Tercihlerini Değiştirerek Görünümü Değiştir

Bir belgeyi Microsoft Word içinde görüntülemenin ayrıntıları, yalnızca uygulama sürümü ve **MswVersion** özellik değeri değil, aynı zamanda dil ayarları da bağlıdır. Microsoft Word 'Office Language Preferences' iletişim kutusu ayarlarına bağlı olarak belgeleri farklı gösterebilir, bu iletişim kutusunu "Dosya → Seçenekler → Dil" altında bulabilirsiniz. Kullanıcı, örneğin, birincil dil, denetim dilleri, görüntüleme dilleri vb.'yi seçebilir. Aspose.Words 'den [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) özelliğini eşdeğer olarak alır. Aspose.Words'ün çıktısı farklıysa Microsoft Word'ün çıktısından, uygun değeri **EditingLanguage**'e ayarlayın - bu, çıktı belgelerini geliştirebilir.

Aşağıdaki kod örneği, Japonca **EditingLanguage**'i nasıl ayarlayacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Bir belge yüklerken sorunlarla başa çıkmak için WarningCallback kullanın

Bazı belgeler bozulmuş olabilir, geçersiz girdiler içerebilir veya şu anda Aspose.Words tarafından desteklenmeyen özellikler içerebilir. Bir belgenin yüklenirken meydana gelen sorunlar hakkında bilgi almak istiyorsanız, Aspose.Words [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) arayüzünü sağlar.

Aşağıdaki kod örneği **IWarningCallback** arabiriminin uygulanmasını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Tüm yükleme süreleri boyunca tüm sorunlar hakkında bilgi almak için [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback) özelliğini kullanın.

Aşağıdaki kod örneğinde bu özelliğin nasıl kullanılacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Dış Kaynak Yüklemesini Kontrol etmek için ResourceLoadingCallback Kullanın

Bir belge başka bir yerde bulunan ve yerel disklerde, ağlarda veya internette bulunan resimlere dış bağlantılar içerebilir. Aspose.Words otomatik olarak bu resimleri belgeye yükler fakat bu işlem kontrolü gereken durumlar vardır. Örneğin, belirli bir resmi gerçekten ihtiyacımız olup olmadığını ya da belki atlayıp geçip geçmeyeceğimizi karar vermemiz gerekir. [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) yükleme seçeneği size bunu kontrol etmenizi sağlar.

Aşağıdaki kod örneği [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) arayüzünün uygulanmasını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Aşağıdaki kod örneği, **ResourceLoadingCallback** özelliğini nasıl kullanacağınızı gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Bellek Özel Durmasını Kaçırmak için TempFolder Kullanın

Aspose.Words binlerce sayfalık zengin içeriğe sahip çok büyük belgeleri destekler. Bu gibi belgelerin yüklenmesi bol miktarda RAM gerektirebilir. Bir belgeyi ayrıştırırken kullanılan geçici yapılara sahip olabilmek için Aspose.Words'ın daha fazla bellekye ihtiyacı vardır.

Bir belge yüklerken bellek eksikliği özel durumuyla karşılaşırsanız, [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder) özelliğini kullanmayı deneyin. Bu durumda, Aspose.Words, bellek yerine geçici dosyalar içinde bazı verileri depolayacak ve bu tür bir özel durumu önlemeye yardımcı olabilir.

Aşağıdaki kod örneği **TempFolder**'ı nasıl ayarlayacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Kodu Açıkça Ayarla

Çoğu modern belge formatı içeriğini Unicode'de depolar ve özel bir işleme gerektirmez. Öte yandan, hala birçok belgenin bazı ön-Unicode kodlamayı kullandığı ve bazen kodlama bilgilerini eksik bıraktığı veya doğası gereği kodlama bilgisini desteklemediği durumlar vardır. Aspose.Words varsayılan olarak uygun kodlamayı otomatik olarak tespit etmeye çalışır fakat nadiren, algılanan kodlamadan farklı bir kodlamayı kullanmanız gerekebilir. Bu durumda, kodlamayı almak veya ayarlamak için [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) özelliğini kullanın.

Aşağıdaki kod örneği otomatik olarak seçilen kodlamayı geçersiz kılmak için kodlamayı nasıl ayarlayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Şifreli Dokümanları Yükle

Parola ile şifrelendiğinde Word belgelerini yükleyebilirsiniz. Bunu yapmak için özel bir oluşturucu aşırı yüklemesini kullanın ve bir [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) nesnesi kabul edin. Bu nesne [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword) özelliğini içerir ve parola dizesi belirtir.

Aşağıdaki kod örneği, bir parolayla şifrelenen bir belgeyi nasıl yükleyeceğinizi göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Eğer dosyanın şifrelendiğini önceden bilmiyorsanız [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/) sınıfını kullanabilirsiniz, bu sınıf dosya biçimleriyle çalışmak için yararlı yöntemler sağlar, örneğin dosya biçimini tespit etmek ya da dosya uzantılarını dosya biçimi numaralandırmalarından dönüştürmek. Eğer bir belge şifre korumalı ve açılabilmesi için şifre gerektiriyorsa [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) özelliğini kullanın.

Aşağıdaki kod örneğinde, OpenDocument'in şifreli olup olmadığına göre nasıl doğrulanacağını gösterir

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
