---
title: Dijital İmzalarla Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Dijital İmzalarla Çalışmak
linktitle: Dijital İmzalarla Çalışmak
description: "Belgeleri dijital olarak imzalayın ve Python'i kullanarak mevcut dijital imzaları tespit edin, sayın, doğrulayın ve kaldırın."
type: docs
weight: 40
url: /tr/python-net/working-with-digital-signatures/
---

Belgeyi gönderenin söylediği kişi olduğunu ve belge içeriğinin tahrif edilmediğini belirlemek amacıyla belgenin kimliğini doğrulamak için dijital imza kullanılır.

Aspose.Words, dijital imzalı belgeleri destekler ve bir belgedeki dijital imzaları tespit edip doğrulamanıza ve oluşturulan bir PDF belgesini sağlanan sertifikayla imzalamanıza olanak tanıyarak bunlara erişim sağlar. Şu anda DOC, OOXML ve ODT belgelerinde dijital imzalar desteklenmektedir. Oluşturulan belgelerin imzalanması PDF formatında desteklenir.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ücretsiz çevrimiçi imza](https://products.aspose.app/words/signature)'imizle deneyebilirsiniz.

{{% /alert %}}

## Dijital İmzalar Açma ve Kaydetme Sırasında Korunmaz

Dikkat edilmesi gereken önemli bir nokta, Aspose.Words kullanılarak yüklenen ve daha sonra kaydedilen bir belgenin, belgede imzalanmış tüm dijital imzaları kaybedeceğidir. Bu, tasarım gereğidir çünkü dijital imza, içeriğin değiştirilmemesini sağlar ve ayrıca belgeyi imzalayan kişinin kimliğini doğrular. Orijinal imzaların ortaya çıkan belgeye taşınması durumunda bu ilkeler geçersiz olacaktır.

Bu nedenle, bir sunucuya yüklenen belgeleri işlerseniz, bu, sunucunuza bu şekilde yüklenen bir belgeyi bilmeden bozabileceğiniz anlamına gelebilir. Bu nedenle, bir belgedeki dijital imzaları kontrol etmek ve bulunması durumunda uygun eylemi gerçekleştirmek en iyisidir; örneğin, müşteriye, ilettikleri belgenin dijital imzalar içerdiğini ve bu imzaların kaybolması durumunda kaybolacağını bildiren bir uyarı gönderilebilir. işlenmiş. Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)'ten indirebilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-DetectDocumentSignatures.py" >}}

Yukarıdaki kod, önce belgeyi yüklemeden bir belgenin dijital imza içerip içermediğini tespit etmek için [FileFormatUtil.detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) yöntemini kullanır. Bu, bir belgeyi işlemeden önce imza olup olmadığını kontrol etmenin etkili ve güvenli bir yolunu sağlar. Yöntem yürütüldüğünde, [FileFormatInfo.has_digital_signature](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_digital_signature/) özelliğini sağlayan bir [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) nesnesi döndürür. Bu özellik, belge bir veya daha fazla dijital imza içeriyorsa true değerini döndürür. Bu yöntemin imzaları doğrulamadığını, yalnızca imzaların mevcut olup olmadığını belirlediğini unutmamak önemlidir. Dijital imzaların doğrulanması bir sonraki bölümde ele alınmaktadır.

{{% alert color="primary" %}}

[Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) koleksiyonunun `Count` özelliğini kontrol ederek, yükleme sonrasında bir belgenin dijital imzalara sahip olup olmadığını da kontrol edebilirsiniz.

{{% /alert %}}

## Makrolarda Dijital İmzalar (VBA Projeleri)

Makrolardaki dijital imzalara erişilemez veya imzalanamaz. Bunun nedeni Aspose.Words'in bir belgedeki makrolarla doğrudan ilgilenmemesidir. Ancak, belge herhangi bir sözcük biçimine geri aktarılırken makrolardaki dijital imzalar korunur. Bu imzalar VBA kodunda korunabilir çünkü belgenin kendisi değiştirilse bile makroların ikili içeriği değişmez.

### Dijital İmzalara Erişim ve Doğrulama

Bir belgenin birden fazla dijital imzası olabilir. Bu imzaların tümüne [Document.digital_signatures](https://reference.aspose.com/words/python-net/aspose.words/document/digital_signatures/) koleksiyonu aracılığıyla erişilebilir. Döndürülen her nesne, belgeye ait tek bir dijital imzayı temsil eden bir [DigitalSignature](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/)'dir. Bu, imzanın geçerliliğini kontrol etmenize izin veren üyeler sağlar.

Dijital imzalarda kontrol edilmesi gereken en önemli özellik, belgedeki her imzanın geçerliliğidir. Belgedeki tüm imzalar, [DigitalSignatureCollection.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignaturecollection/is_valid/) özelliği çağrılarak tek seferde doğrulanabilir. Bu, belgedeki tüm imzalar geçerliyse veya belgede imza yoksa true, en az bir dijital imza geçerli değilse false değerini döndürür.

Her imza, [DigitalSignature.is_valid](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/is_valid/) çağrılarak ayrı ayrı da doğrulanabilir. Bir imza, çeşitli nedenlerden dolayı geçersiz hale gelebilir; örneğin, imzalandıktan sonra belgenin değiştirilmesi veya sertifikanın süresinin dolması. Ayrıca imzanın ekstra detaylarına da erişilebilir. Aşağıdaki kod örneği, bir belgedeki her imzanın nasıl doğrulanacağını ve imzayla ilgili temel bilgilerin nasıl görüntüleneceğini gösterir. Bu örneğin şablon dosyasını [Burada](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Digitally%20signed.docx)'den indirebilirsiniz.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-AccessAndVerifySignature.py" >}}

## Word Belgelerini İmzalamak

[DigitalSignatureUtil](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/) sınıfı belgeyi imzalamak için yöntemler sağlar. [DigitalSignatureUtil.sign](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/sign/) yöntemi, kaynak belgeyi verilen [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/)'i kullanarak dijital imzayla imzalar ve imzalanan belgeyi hedef akışa yazar

Aşağıdaki örnekte basit bir belgenin nasıl imzalanacağı gösterilmektedir

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SingDocument.py" >}}

Aşağıdaki örnekte şifrelenmiş belgenin nasıl imzalanacağı gösterilmektedir

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningEncryptedDocument.py" >}}

### İmza Satırı ile Word belgesini imzalama

Kaynak belgeyi verilen [CertificateHolder](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/certificateholder/) ve [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/)'yi kullanarak dijital imzayla imzalayabilir ve imzalanan belgeyi hedef dosyaya yazabilirsiniz. [SignOptions](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/) sınıfını kullanarak belge imzalama seçeneklerini belirleyebilirsiniz. Aşağıdaki örnekte yeni imza satırının nasıl oluşturulacağı ve belgenin nasıl imzalanacağı gösterilmektedir

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreatingAndSigningNewSignatureLine.py" >}}

Aşağıdaki örnekte mevcut imza satırının nasıl değiştirileceği ve belgenin nasıl imzalanacağı gösterilmektedir

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SigningExistingSignatureLine.py" >}}

### İmza Sağlayıcı Tanımlayıcısını Kullanarak Word Belgesini İmzalama

Aşağıdaki örnek, imza sağlayıcı tanımlayıcısını kullanarak Word belgesinin nasıl imzalanacağını gösterir. Şifreleme servis sağlayıcısı (CSP), kimlik doğrulama, kodlama ve şifreleme için aslında şifreleme algoritmaları gerçekleştiren bağımsız bir yazılım modülüdür. MS Office, varsayılan imza sağlayıcısı için {00000000-0000-0000-0000-000000000000} değerini saklı tutar.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-SetSignatureProviderID.py" >}}

### Sağlayıcı Tanımlayıcısını Kullanarak Yeni İmza Satırı İşareti Word Belgesi Oluşturun

Aşağıdaki örnekte imza satırının nasıl oluşturulacağı ve imza sağlayıcı tanımlayıcısını kullanarak Word belgesinin nasıl imzalanacağı gösterilmektedir.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-working_with_digital_sinatures-CreateNewSignatureLineAndSetProviderID.py" >}}

## Dijital İmza Değerini Alın

Aspose.Words ayrıca, [SignatureValue](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) özelliğini kullanarak dijital imzalı bir belgeden dijital imza değerini bayt dizisi olarak alma olanağı sağlar.

Aşağıdaki kod örneği, dijital imza değerinin bir belgeden bayt dizisi olarak nasıl alınacağını gösterir:

{{< highlight csharp >}}
doc = aw.Document(MY_DIR + "Digitally signed.docx")

for digital_signature in doc.digital_signatures:
    signature_value = base64.b64encode(digital_signature.signature_value)
    print(f"Base64 signature value is: {signature_value}")
{{< /highlight >}}