---
title: Dosya Biçimini Tespit Et
second_title: Aspose.Words için Java
articleTitle: Dosya Biçimini Tespit Et ve Biçim Uyumluluğunu Kontrol Et
linktitle: Dosya Biçimini Tespit Et ve Biçim Uyumluluğunu Kontrol Et
description: "Açarken dosya formatı hakkında bilgi elde etmek isteyip istemediğinizi sorun, eğer emin değilseniz dosyanın gerçek içeriğini Java'u kullanın."
type: docs
weight: 20
url: /tr/java/detect-file-format-and-check-format-compatibility/
---

Bazen bir dosyayı açmadan önce dosya formatını belirlemenin gerekli olduğu durumlar olur çünkü dosya uzantısı dosyanın içeriğinin uygun olduğunu garanti etmez. Örneğin, Crystal Reports'un sık sık RTF formatında belgeler ürettiği biliniyor ama onlara .doc uzantısını veriyor.

Aspose.Words" dosya türü hakkında bilgi elde etmek için bir yeteneği sağlar, böylece eğer dosyanın gerçek içeriği hakkında emin değilseniz bir özel durum oluşmasını önler.

## Dosya Biçimini İstisna Olmadan Algıla

Çeşitli dosya formatlarında birden fazla belge ile uğraşırken, Aspose.Words tarafından işlenebilen dosyaları bu olamayanlardan ayırmak isteyebilirsiniz. Ayrıca bazı belgelerin neden işlenemeyeceğini bilmek isteyebilirsiniz.

Bir dosyayı bir [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nesnesine yüklemeye çalışırsanız ve Aspose.Words dosya biçimini tanıma veya biçim desteklenmiyorsa, Aspose.Words bir özel durum atar. Bu özel durumları yakalayabilir ve analiz edebilirsiniz, ancak Aspose.Words ayrıca bize olası özel durumlarla ilgili hızlı bir şekilde dosya formatını belirlememizi sağlayan [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) yöntemini de sağlar. Bu yöntem, dosya türü hakkında tespit edilen bilgileri içeren bir [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) nesnesi döndürür.

{{% alert color="primary" %}}

DetectFileFormat yalnızca dosya formatını kontrol eder ama onu doğrulamaz. Dosyanın başarıyla açılacağını garanti yoktur, hatta **DetectFileFormat** desteklenen bir formatta olduğunu döndürürse bile. Çünkü **DetectFileFormat** yöntemi dosya formatı için yeterli olan ancak tam doğrulama için yeterli olmayan kısmen dosya formatı verilerini okur.

{{% /alert %}}

## Dosya Biçim Uyumluluğunu Kontrol Et

Seçilen klasördeki tüm dosyaların biçim uyumluluğunu kontrol edebilir ve bunları karşılık gelen alt klasörlere biçimlerine göre sıralayabiliriz.

Bir klasördeki içeriği ele aldığımız için ilk yapmamız gereken şey **GetFiles** yöntemini kullanarak bu klasördeki tüm dosyaları içeren bir koleksiyon almaktır ( `System.IO` ad alanından `Directory` sınıfından ).

Aşağıdaki kod örneği, bir klasördeki tüm dosyaların listesini nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Tüm dosyalar toplandıktan sonra kalan iş **DetectFileFormat** yöntemi tarafından yapılır ve dosya biçimini kontrol eder.

Aşağıdaki kod örneği toplanan dosya listenin üzerinden nasıl geçileceğini, her bir dosyanın biçimini kontrol etmesini ve uygun klasöre taşınmasını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Dosyalar uygun alt klasörlere `Move` yöntemini kullanarak `File` sınıfından, aynı `System.IO` ad alanından taşınır.

Örnekte yukarıdaki dosyalar kullanılır. Dosya adı solundadır ve açıklaması sağda bulunur:

| Group Dosyalar | Giriş belgesi | Tür |
|  :-  |  :-  |  :-  |
| Desteklenen dosya biçimleri | Test Dosyası (Doc).doc | Microsoft Word 95/6.0 veya Microsoft Word 97 - 2003 belgesi. |
| | Test Dosyası (Nokta). dot | Microsoft Word 95/6.0 veya Microsoft Word 97 -2003 şablonu. |
| | Test Dosyası (Docx). docx | Ofis Open XML, makro içermeyen bir WordprocessingML belgesi. |
| | Test Dosyası (Docm) docm | Ofis Açık XML WordprocessingML belgesi makrolarla. |
| | Test Dosyası (Dotx).dotx | WordprocessingML şablonu. |
| | Test Dosyası (Dotm). dotm | Ofis Open XML WordprocessingML şablonu makrolarla. |
| | Test Dosyası (XML).xml | FlatOPC OOXML Dokümanı. |
| | Test Dosyası (RTF).rtf | Zengin Metin Biçimlendirme belgesi. |
| | Test Dosyası (WordML).xml | Microsoft Word 2003 WordprocessingML belgesi. |
| | Test Dosyası (HTML).html | HTML belgesi. |
| | Test Dosyası (MHTML).mhtml | MHTML (Web arşivleri) belgesi. |
| | Test Dosyası (Odt). odt | Açık Belge Metni (Açık Ofis Yazıcısı). |
| | Test Dosyası (Ott).ott | Açık Belge Şablonu. |
| | Test Dosyası (DocPreWord60).doc | Microsoft Word 2.0 belgesi. |
| Şifreli belgeler | Test Dosyası (Eng).doc | Şifreli Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 belge. |
| | Test Dosyası (Eng).docx | Şifreli Office Açık XML İşleme ML belgesi. |
| Desteklenmeyen dosya biçimleri | Test Dosyası (JPG).jpg | JPEG görüntü dosyası. |

