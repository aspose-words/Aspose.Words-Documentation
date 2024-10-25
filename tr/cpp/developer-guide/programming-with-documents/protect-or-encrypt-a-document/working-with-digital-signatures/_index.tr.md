---
title: C++ 'da Dijital İmzalarla Çalışma
second_title: Aspose.Words için C++
articleTitle: Dijital imzalarla Çalışma
linktitle: Dijital imzalarla Çalışma
description: "Belgeleri dijital olarak imzalayın ve mevcut dijital imzaları tespit edin, sayın, doğrulayın ve kaldırın."
type: docs
weight: 160
url: /tr/cpp/working-with-digital-signatures/
---

Dijital imza, bir belgenin imzalandığından beri değiştirilmediğini garanti etmek için belgeleri imzalamak ve imzalayanın kimliğini doğrulamak için elektronik imzaların teknolojik bir uygulamasıdır. Her dijital imza, hem genel hem de özel anahtarlar oluşturmak için PKI protokolünü takip etmesi nedeniyle her imzalayan için benzersizdir. Bir belgeyi dijital olarak imzalamak, oluşturulan karmayı şifrelemek için matematiksel bir algoritmanın kullanıldığı imzalayanın özel anahtarını kullanarak imza oluşturmak anlamına gelir.

Aspose.Words mevcut dijital imzaları algılamanıza, saymanıza veya doğrulamanıza ve ayrıca belgenizdeki herhangi bir tahrifatı bulmak için belgenize yeni bir imza eklemenize olanak tanır. Bir belgedeki tüm dijital imzaları da kaldırabilirsiniz. Dijital imzalarla çalışmak için [DigitalSignatureUtil](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/) sınıfını kullanın.

Bu makalede, bir dijital belgenin gerçekliğini ve bütünlüğünü doğrulamak için yukarıdakilerin hepsinin nasıl yapılacağı açıklanmaktadır.

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği bizim ile deneyebilirsiniz [Ücretsiz çevrimiçi imza](https://products.aspose.app/words/signature).

{{% /alert %}}

## Desteklenen Formatlar

Aspose.Words, DOC, OOXML ve ODT belgeler üzerinde dijital imzalarla çalışmanıza ve oluşturulan belgeyi PDF veya XPS biçiminde imzalamanıza olanak tanır.

## Dijital İmzaların Sınırlamaları

Aşağıdaki tabloda, Aspose.Words aracılığıyla dijital imzalarla çalışırken karşılaşabileceğiniz birkaç sınırlamanın yanı sıra bazı alternatif seçenekler açıklanmaktadır.

| Sınırlama | Alternatif seçenek |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Bir belgeyi yükledikten ve kaydettikten sonra dijital imza kaybı. Bu nedenle, bir belgeyi bir sunucuya işlemek, önceden haber verilmeksizin tüm dijital imzaların kaybolmasına neden olabilir. | Bir belgenin dijital imzaları olup olmadığını kontrol edin ve varsa uygun işlemi yapın. Örneğin, istemcilere, yükledikleri belgenin işlendiğinde kaybolacak dijital imzalar içerdiğini bildiren bir uyarı gönderin. |
| Aspose.Words bir belgedeki makrolarla çalışmayı destekler. Ancak Aspose.Words makrolardaki dijital imzaları henüz desteklemiyor. | Belgeyi herhangi bir Word biçimine geri verin ve makrolara dijital imza eklemek için Microsoft Word kullanın. |

## Dijital İmzaları Algılama, Sayma ve Doğrulama

Aspose.Words, [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) yöntemini ve [HasDigitalSignature](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_hasdigitalsignature/) özelliğini kullanarak bir belgedeki dijital imzayı algılamanıza olanak tanır. Böyle bir çekin yalnızca imzanın gerçeğini tespit edeceğini, ancak geçerliliğini tespit etmeyeceğini belirtmekte fayda var.

Bir belge birden fazla kez imzalanabilir ve bu çeşitli kullanıcılar tarafından yapılabilir. Dijital imzaların geçerliliğini kontrol etmek için bunları [LoadSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/) yöntemini kullanarak belgeden yüklemeniz ve [IsValid](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_isvalid/) özelliğini kullanmanız gerekir. Ayrıca Aspose.Words, [Count](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignaturecollection/get_count/) özelliğini kullanarak bir belgedeki tüm dijital imza kümesini saymanıza olanak tanır.

Tüm bunlar, bir belgeyi işlemeden önce imzalar için kontrol etmenin etkili ve güvenli bir yolunu sağlar.

Aşağıdaki kod örneği, dijital imzaların varlığını nasıl algılayacağınızı ve bunları nasıl doğrulayacağınızı gösterir:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "detect-document-signatures.h" >}}

## Dijital İmza Oluşturma {#create-a-digital-signature}

Dijital imza oluşturmak için kimliği doğrulayan bir imza sertifikası yüklemeniz gerekir. Dijital olarak imzalanmış bir belge gönderdiğinizde, sertifikanızı ve ortak anahtarınızı da gönderirsiniz.

Aspose.Words bir ortak anahtarın sertifikanın içinde bulunan imzalayana ait olduğunu doğrulamak için uluslararası kabul görmüş X.509 PKI standardını kullanan bir dijital sertifika olan X.509 sertifikası oluşturmanıza olanak tanır. Bunu yapmak için [CertificateHolder](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder) sınıfındaki [Create](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/certificateholder/create/) yöntemini kullanın.

Sonraki bölümlerde dijital imzanın, imza satırının nasıl ekleneceği ve oluşturulan PDF belgenin nasıl imzalanacağı açıklanmaktadır.

### Belge İmzalama

Aspose.Words, [Sign](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/sign/) yöntemini ve [SignOptions](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/signoptions/) özelliklerini kullanarak bir DOC, DOCX veya ODT belgesini dijital olarak imzalamanıza olanak tanır.

Aşağıdaki kod örneği, sertifika sahibi ve imzalama seçeneklerini kullanarak belgelerin nasıl imzalanacağını gösterir:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "sign-document.h" >}}

### İmza Satırı Ekleme

İmza satırı, bir belgedeki dijital imzanın görsel temsilidir. Aspose.Words [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertsignatureline/) yöntemini kullanarak bir imza satırı eklemenizi sağlar. Bu gösterim için parametreleri [SignatureLineOptions](https://reference.aspose.com/words/cpp/aspose.words/signaturelineoptions/) sınıfını kullanarak da ayarlayabilirsiniz.

Örneğin, aşağıdaki resim geçerli ve geçersiz imzaların nasıl görüntülenebileceğini göstermektedir.

<img src="valid.png" alt="valid-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-signature" style="width:300px"/>

Ayrıca, bir belgede imza satırı varsa ve dijital imza yoksa, kullanıcıdan imza eklemesini isteme özelliği vardır.

Aşağıdaki kod örneği, kişisel sertifika ve belirli bir imza satırı içeren bir belgenin nasıl imzalanacağını gösterir:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "create-new-signature-line-and-set-provider-id.h" >}}

### Oluşturulan Bir Belgeyi İmzalayın PDF {#sign-a-generated-pdf-document}

Aspose.Words, [PdfDigitalSignatureDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfdigitalsignaturedetails/) özelliklerini kullanarak bir PDF belgesinin tüm ayrıntılarını imzalamanıza ve almanıza olanak tanır.

Aşağıdaki kod örneği, oluşturulan bir PDF'ın nasıl imzalanacağını gösterir.:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "digitally-signed-pdf-using-certificate-holder.h" >}}

## Dijital İmza Değerini Al

Aspose.Words ayrıca, [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) özelliğini kullanarak dijital olarak imzalanmış bir belgeden dijital imza değerini bayt dizisi olarak alma olanağı sağlar.

Aşağıdaki kod örneği, dijital imza değerinin bir belgeden bayt dizisi olarak nasıl elde edileceğini gösterir:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "signature-value.h" >}}

## Dijital İmzaları Kaldır

Aspose.Words, [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) yöntemini kullanarak imzalı bir belgedeki tüm dijital imzaları kaldırmanıza olanak tanır.

Aşağıdaki kod örneği, bir belgeden dijital imzaların nasıl yükleneceğini ve kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "cf0914fc4ceb93b503278282432ceaeb" "remove-signatures.h" >}}

{{% alert color="primary" %}}

Belgenizde yalnızca bir dijital imzayı kaldıramayacağınızı unutmayın.

{{% /alert %}}
