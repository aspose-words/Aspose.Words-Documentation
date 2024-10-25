---
title: Dosya Biçimini Algıla ve Biçim Uyumluluğunu Kontrol Et
second_title: Aspose.Words için C++
articleTitle: Dosya Biçimini Algıla ve Biçim Uyumluluğunu Kontrol Et
linktitle: Dosya Biçimini Algıla ve Biçim Uyumluluğunu Kontrol Et
description: "Dosyanın gerçek içeriğinin ne olduğundan emin değilseniz veya biçim uyumluluğunu denetlemek için dosya biçimini C++ olarak belirleyin."
type: docs
weight: 20
url: /tr/cpp/detect-file-format-and-check-format-compatibility/
---

Bazen açmadan önce bir belgenin formatını belirlemek gerekir, çünkü dosya uzantısı dosyanın içeriğinin uygun olduğunu garanti etmez. Örneğin, Crystal Reports'un belgeleri genellikle RTF biçiminde çıkardığı, ancak bunları verdiği bilinmektedir.doküman uzantısı.

Aspose.Words, dosyanın gerçek içeriğinin ne olduğundan emin değilseniz, bir istisnadan kaçınmak için dosya türü hakkında bilgi edinme olanağı sağlar.

## İstisnasız Dosya Biçimini Algıla

Çeşitli dosya biçimlerinde birden çok belgeyle uğraşırken, Aspose.Words tarafından işlenebilen dosyaları işlenemeyenlerden ayırmanız gerekebilir. Bazı belgelerin neden işlenemediğini de bilmek isteyebilirsiniz.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) nesnesine bir dosya yüklemeye çalışırsanız ve Aspose.Words dosya biçimini tanıyamazsa veya biçim desteklenmiyorsa, Aspose.Words bir özel durum oluşturur. Bu istisnaları yakalayabilir ve analiz edebilirsiniz, ancak Aspose.Words, olası istisnalar dışında bir belge yüklemeden dosya biçimini hızlı bir şekilde belirlememize olanak tanıyan [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) yöntemini de sağlar. Bu yöntem, dosya türü hakkında algılanan bilgileri içeren bir [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) nesnesi döndürür.

{{% alert color="primary" %}}

DetectFileFormat yalnızca dosya biçimini denetler, ancak dosya biçimini doğrulamaz. **DetectFileFormat** desteklenen biçimlerden biri olduğunu döndürse bile dosyanın başarıyla açılacağının garantisi yoktur. Bunun nedeni, **DetectFileFormat** yönteminin yalnızca kısmi dosya biçimi verilerini okumasıdır, dosya biçimini kontrol etmek için yeterlidir, ancak tam doğrulama için yeterli değildir.

{{% /alert %}}

## Dosya Formatı Uyumluluğunu Kontrol Edin

Seçilen klasördeki tüm dosyaların format uyumluluğunu kontrol edebilir ve bunları formata göre karşılık gelen alt klasörlere göre sıralayabiliriz.

Bir klasördeki içeriklerle uğraştığımız için yapmamız gereken ilk şey, `Directory` sınıfının **GetFiles** yöntemini (`System.IO` ad alanından) kullanarak bu klasördeki tüm dosyaların bir koleksiyonunu elde etmektir.

Aşağıdaki kod örneği, klasördeki tüm dosyaların listesini nasıl alacağınızı gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Tüm dosyalar toplandığında, işin geri kalanı dosya biçimini kontrol eden **DetectFileFormat** yöntemiyle yapılır.

Aşağıdaki kod örneği, toplanan dosyalar listesinde yinelemenin, her dosyanın biçimini denetlemenin ve her dosyayı uygun klasöre taşımanın yollarını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Dosyalar, aynı `System.IO` ad alanından `File` sınıfının `Move` yöntemi kullanılarak uygun alt klasörlere taşınır.

Yukarıdaki örnekte aşağıdaki dosyalar kullanılmaktadır. Dosya adı solda ve açıklaması sağda:

| Dosya Grubu | Giriş Belgesi | Tip |
| :- | :- | :- |
| Desteklenen dosya biçimleri | Test File (DOC).doc | Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 belgesi. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 şablonu. |
|  | Test File (DOCX).docx | Office, makrolar olmadan XML WordprocessingML belgesini açar. |
|  | Test File (DOCM).docm | Office XML WordprocessingML belgesini makrolarla açın. |
|  | Test File (DOTX).dotx | Office Açık XML WordprocessingML şablonu. |
|  | Test File (DOTM).dotm | Office XML WordprocessingML şablonunu makrolarla açın. |
|  | Test File (XML).xml | FlatOPC OOXML Belgesi. |
|  | Test File (RTF).rtf | Zengin Metin Biçimi belgesi. |
|  | Test File (WordML).xml | Microsoft Word 2003 WordprocessingML belgesi. |
|  | Test File (HTML).html | HTML belge. |
|  | Test File (MHTML).mhtml | MHTML (Web arşivi) belgesi. |
|  | Test File (ODT).odt | OpenDocument Metin (OpenOffice Yazar). |
|  | Test File (OTT).ott | OpenDocument Belge Şablonu. |
|  | Test Dosyası (DocPreWord60).doktor | Microsoft Word 2.0 belge. |
| Şifrelenmiş belgeler | Test File (Enc).doc | Şifrelenmiş Microsoft Word 95 / 6.0 veya Microsoft Word 97 – 2003 belgesi. |
|  | Test File (Enc).docx | Şifrelenmiş Office XML WordprocessingML belgesini açar. |
| Desteklenmeyen dosya biçimleri | Test File (JPG).jpg | JPEG resim dosyası. |

