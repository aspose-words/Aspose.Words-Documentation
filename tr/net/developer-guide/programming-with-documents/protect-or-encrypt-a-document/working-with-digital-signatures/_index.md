---
title: C#'te Dijital İmzalarla Çalışma
second_title: .NET için Aspose.Words
articleTitle: Dijital İmzalarla Çalışma
linktitle: Dijital İmzalarla Çalışma
description: "Belgeleri dijital olarak imzalayın ve C#'i kullanarak mevcut dijital imzaları tespit edin, sayın, doğrulayın ve kaldırın."
type: docs
weight: 40
url: /tr/net/working-with-digital-signatures/
---

Dijital imza, belgeleri imzalamak ve belgenin imzalanmasından bu yana değiştirilmediğini garanti etmek amacıyla imzalayanın kimliğini doğrulamak için elektronik imzaların teknolojik bir uygulamasıdır. Hem genel hem de özel anahtarlar oluşturmak için PKI protokolünü takip etmesi nedeniyle her dijital imza, her imzalayan için benzersizdir. Bir belgeyi dijital olarak imzalamak, imzalayanın özel anahtarını kullanarak bir imza oluşturmak anlamına gelir; burada oluşturulan karmayı şifrelemek için matematiksel bir algoritma kullanılır.

Aspose.Words, mevcut dijital imzaları tespit etmenize, saymanıza veya doğrulamanıza ve ayrıca belgenizdeki herhangi bir tahrifatı tespit etmek için belgenize yeni bir imza eklemenize olanak tanır. Ayrıca bir belgedeki tüm dijital imzaları da kaldırabilirsiniz. Dijital imzalarla çalışmak için [DigitalSignatureUtil](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/) sınıfını kullanın.

Bu makalede, dijital bir belgenin orijinalliğini ve bütünlüğünü doğrulamak için yukarıdakilerin hepsinin nasıl yapılacağı açıklanmaktadır.

{{% alert color="primary" %}}

Belgenizin dijital imzalarına yalnızca .NET Framework 2.0 sürümünü ve üstünü çalıştırırken erişebileceğinizi unutmayın.

{{% /alert %}}

{{% alert color="primary" %}}

**Çevrimiçi deneyin**

Bu işlevselliği [Ücretsiz çevrimiçi imza](https://products.aspose.app/words/signature)'imizle deneyebilirsiniz.

{{% /alert %}}

## Desteklenen Formatlar

Aspose.Words, DOC, OOXML ve ODT belgelerinde dijital imzalarla çalışmanıza ve oluşturulan belgeyi PDF veya XPS formatında imzalamanıza olanak tanır.

## Dijital İmzaların Sınırlamaları

Aşağıdaki tabloda, Aspose.Words aracılığıyla dijital imzalarla çalışırken karşılaşabileceğiniz birkaç sınırlamanın yanı sıra bazı alternatif seçenekler de açıklanmaktadır.

|  Sınırlama |  Alternatif seçenek |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  Bir belgeyi yükleyip kaydettikten sonra dijital imzaların kaybolması. Bu nedenle, bir belgenin bir sunucuya işlenmesi, tüm dijital imzaların önceden haber verilmeksizin kaybedilmesine neden olabilir |  Bir belgede dijital imza olup olmadığını kontrol edin ve varsa uygun işlemi yapın. Örneğin, istemcilere, yükledikleri belgenin işlenirse kaybolacak dijital imzalar içerdiğini bildiren bir uyarı gönderin |
|  Aspose.Words, bir belgedeki makrolarla çalışmayı destekler. Ancak Aspose.Words henüz makrolardaki dijital imzaları desteklemiyor |  Belgeyi herhangi bir Word formatına geri aktarın ve makrolara dijital imza eklemek için Microsoft Word'i kullanın |

## Dijital İmzaları Algıla, Say ve Doğrula

Aspose.Words, [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/#detectfileformat/) yöntemini ve [HasDigitalSignature](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasdigitalsignature/) özelliğini kullanarak bir belgedeki dijital imzayı algılamanıza olanak tanır. Böyle bir kontrolün yalnızca imzanın gerçekliğini tespit edeceğini ancak geçerliliğini tespit etmeyeceğini belirtmekte fayda var.

Bir belge birden fazla kez imzalanabilir ve bu, farklı kullanıcılar tarafından yapılabilir. Dijital imzaların geçerliliğini kontrol etmek için bunları belgeden [LoadSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/loadsignatures/#loadsignatures/) yöntemini kullanarak yüklemeniz ve [IsValid](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/isvalid/) özelliğini kullanmanız gerekir. Ayrıca Aspose.Words, [Count](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignaturecollection/count/) özelliğini kullanarak bir belgedeki tüm dijital imzaları saymanıza olanak tanır.

Tüm bunlar, bir belgeyi işlemeden önce imza açısından kontrol etmenin etkili ve güvenli bir yolunu sağlar.

Aşağıdaki kod örneği, dijital imzaların varlığının nasıl algılanacağını ve bunların nasıl doğrulanacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "detect-document-signatures.cs" >}}

## Dijital İmza {#create-a-digital-signature} Oluşturun

Dijital imza oluşturmak için kimliği doğrulayan bir imzalama sertifikası yüklemeniz gerekir. Dijital olarak imzalanmış bir belge gönderdiğinizde sertifikanızı ve ortak anahtarınızı da gönderirsiniz.

Aspose.Words, ortak anahtarın sertifikaya dahil olan imzalayana ait olduğunu doğrulamak için uluslararası kabul görmüş X.509 PKI standardını kullanan bir dijital sertifika olan X.509 sertifikası oluşturmanıza olanak tanır. Bunu yapmak için [CertificateHolder](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/) sınıfı içindeki [Create](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/certificateholder/create/) yöntemini kullanın.

Sonraki bölümlerde dijital imzanın, imza satırının nasıl ekleneceği ve oluşturulan bir PDF belgesinin nasıl imzalanacağı açıklanmaktadır.

### Bir Belgeyi İmzalayın

Aspose.Words, bir DOC, DOCX, XPS veya ODT belgesini [Sign](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/sign/#sign/) yöntemini ve [SignOptions](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/) özelliklerini kullanarak dijital olarak imzalamanıza olanak tanır.

Aşağıdaki kod örneği, sertifika sahibini ve imzalama seçeneklerini kullanarak belgelerin nasıl imzalanacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "sign-document.cs" >}}

### İmza Satırı Ekle

İmza satırı, bir belgedeki dijital imzanın görsel temsilidir. Aspose.Words, [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertsignatureline/) yöntemini kullanarak imza satırı eklemenizi sağlar. Bu gösterimin parametrelerini [SignatureLineOptions](https://reference.aspose.com/words/net/aspose.words/signaturelineoptions/) sınıfını kullanarak da ayarlayabilirsiniz.

Örneğin aşağıdaki resimde geçerli ve geçersiz imzaların nasıl görüntülenebileceği gösterilmektedir.

<img src="/words/net/working-with-digital-signatures/valid.png" alt="çizim" style="width:300px"/>

<img src="/words/net/working-with-digital-signatures/invalid.png" alt="çizim" style="width:300px"/>

Ayrıca bir belgenin imza satırı içermesi ve dijital imzanın bulunmaması durumunda kullanıcıdan imza eklemesini isteme özelliği bulunmaktadır.

Aşağıdaki kod örneği, bir belgenin kişisel sertifika ve belirli bir imza satırıyla nasıl imzalanacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "create-new-signature-line-and-set-provider-id.cs" >}}

### Oluşturulan bir PDF Belgesini İmzalayın {#sign-a-generated-pdf-document}

Aspose.Words, [PdfDigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfdigitalsignaturedetails/) özelliklerini kullanarak bir PDF belgesini imzalamanıza ve tüm ayrıntılarını almanıza olanak tanır.

Aşağıdaki kod örneği, oluşturulan bir PDF'nin nasıl imzalanacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "digitally-signed-pdf-using-certificate-holder.cs" >}}

## Dijital İmza Değerini Alın

Aspose.Words ayrıca, [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) özelliğini kullanarak dijital imzalı bir belgeden dijital imza değerini bayt dizisi olarak alma olanağı sağlar.

Aşağıdaki kod örneği, dijital imza değerinin bir belgeden bayt dizisi olarak nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "signature-value.cs" >}}

## Dijital İmzaları Kaldır

Aspose.Words, [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/#removeallsignatures/) yöntemini kullanarak imzalı bir belgedeki tüm dijital imzaları kaldırmanıza olanak tanır.

Aşağıdaki kod örneği, dijital imzaların bir belgeye nasıl yüklenip kaldırılacağını gösterir:

{{< gist "aspose-words-gists" "bdc15a6de6b25d9d4e66f2ce918fc01b" "remove-signatures.cs" >}}

{{% alert color="primary" %}}

Belgenizden yalnızca tek bir dijital imzayı kaldıramayacağınızı unutmayın.

{{% /alert %}}
