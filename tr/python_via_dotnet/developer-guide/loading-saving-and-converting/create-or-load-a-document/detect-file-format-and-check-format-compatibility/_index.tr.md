---
title: Yükleme Sırasında Dosya Formatını Algıla
second_title: Python via .NET için Aspose.Words
articleTitle: Dosya Formatını Algıla ve Format Uyumluluğunu Kontrol Et
linktitle: Dosya Formatını Algıla ve Format Uyumluluğunu Kontrol Et
description: "Dosyanın gerçek içeriğinin ne olduğundan emin değilseniz veya format uyumluluğunu kontrol etmek için Python'teki dosya formatını belirleyin."
type: docs
weight: 20
url: /tr/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Bazen bir belgeyi açmadan önce formatının belirlenmesi gerekebilir çünkü dosya uzantısı, dosya içeriğinin uygun olduğunu garanti etmez. Örneğin Crystal Reports'un çoğu zaman belgeleri RTF formatında çıkardığı ancak bunlara .doc uzantısını verdiği bilinmektedir.

Aspose.Words, dosyanın gerçek içeriğinin ne olduğundan emin değilseniz bir istisnayı önlemek için dosya türü hakkında bilgi edinme yeteneği sağlar.

## İstisnasız Dosya Formatını Algıla

Çeşitli dosya formatlarında birden fazla belgeyle uğraşırken, Aspose.Words tarafından işlenebilen dosyaları işlenemeyenlerden ayırmanız gerekebilir. Ayrıca bazı belgelerin neden işlenemediğini de bilmek isteyebilirsiniz.

Bir [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) nesnesine dosya yüklemeye çalışırsanız ve Aspose.Words, dosya formatını tanıyamazsa veya format desteklenmiyorsa, Aspose.Words bir istisna oluşturacaktır. Bu istisnaları yakalayabilir ve analiz edebilirsiniz, ancak Aspose.Words aynı zamanda olası istisnaları olan bir belgeyi yüklemeden dosya formatını hızlı bir şekilde belirlememize olanak tanıyan [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yöntemini de sağlar. Bu yöntem, dosya türüyle ilgili algılanan bilgileri içeren bir [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) nesnesi döndürür.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yalnızca dosya biçimini kontrol eder ancak dosya biçimini doğrulamaz. [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), desteklenen formatlardan biri olduğunu gösterse bile dosyanın başarıyla açılacağına dair bir garanti yoktur. Bunun nedeni, [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yönteminin yalnızca kısmi dosya formatı verilerini okumasıdır; bu, dosya formatını kontrol etmek için yeterlidir, ancak tam doğrulama için yeterli değildir.

{{% /alert %}}

## Dosya Formatı Uyumluluğunu Kontrol Edin

Seçilen klasördeki tüm dosyaların format uyumluluğunu kontrol edebilir ve bunları formata göre ilgili alt klasörlere sıralayabiliriz.

Bir klasördeki içeriklerle uğraştığımız için yapmamız gereken ilk şey, **işletim sistemi** modülünün **listedir** yöntemini kullanarak bu klasördeki tüm dosyaların bir koleksiyonunu almaktır.

Aşağıdaki kod örneği, klasördeki tüm dosyaların listesinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Tüm dosyalar toplandığında işin geri kalanı dosya formatını kontrol eden [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yöntemiyle yapılır.

Aşağıdaki kod örneği, toplanan dosya listesi üzerinde nasıl yineleme yapılacağını, her dosyanın biçiminin nasıl kontrol edileceğini ve her dosyanın uygun klasöre nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Dosyalar, **kapalı** modülünün **dosya kopyala** yöntemi kullanılarak uygun alt klasörlere taşınır.

Yukarıdaki örnekte aşağıdaki dosyalar kullanılmıştır. Dosya adı solda ve açıklaması sağdadır:

| Dosyaların Group'i | Giriş Belgesi | Tip |
|  :-  |  :-  |  :-  |
| Desteklenen dosya formatları | Test Dosyası (Doc).doc | Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 belgesi. |
|  | Test Dosyası (`Dot`).dot | Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 şablonu. |
|  | Test Dosyası (Docx).docx | Office Makrolar olmadan XML WordprocessingML belgesini açın. |
|  | Test Dosyası (Docm).docm | Office Makrolarla birlikte XML WordprocessingML belgesini açın. |
|  | Test Dosyası (Dotx).dotx | Office Açık XML WordprocessingML şablonu. |
|  | Test Dosyası (Dotm).dotm | Makrolar içeren Office Açık XML WordprocessingML şablonu. |
|  | Test Dosyası (XML).xml | FlatOPC OOXML Belgesi. |
|  | Test Dosyası (RTF).rtf | Zengin Metin Biçimi belgesi. |
|  | Test Dosyası (WordML).xml | Microsoft Word 2003 Kelime İşlemeML belgesi. |
|  | Test Dosyası (HTML).html | HTML belgesi. |
|  | Test Dosyası (MHTML).mhtml | MHTML (Web arşivi) belgesi. |
|  | Test Dosyası (Odt).odt | OpenDocument Metni (OpenOffice Writer). |
|  | Test Dosyası (Ott).ott | OpenDocument Belge Şablonu. |
|  | Test Dosyası (DocPreWord60).doc | Microsoft Word 2.0 belgesi. |
| Şifrelenmiş belgeler | Test Dosyası (Enc).doc | Şifrelenmiş Microsoft Word 95/6.0 veya Microsoft Word 97 – 2003 belgesi. |
|  | Test Dosyası (Enc).docx | Şifrelenmiş Office Açık XML WordprocessingML belgesi. |
| Desteklenmeyen dosya biçimleri | Test Dosyası (JPG).jpg | JPEG resim dosyası. |

