---
title: Dijital İmzalarla Çalışın Java
second_title: Aspose.Words için Java
articleTitle: Dijital İmzalarla Çalışın
linktitle: Dijital İmzalarla Çalışın
description: "Dijital olarak belgeleri imzala ve mevcut dijital imzaları tespit et, say, doğrula, kaldırmak için Java kullan."
type: docs
weight: 30
url: /tr/java/working-with-digital-signatures/
---

Bir dijital imza, imzalamak ve imzalayanı doğrulamak için elektronik imzaların teknolojik uygulamasıdır, böylece belgenin o imzalandığından beri değiştirilmediğini garanti eder. Her dijital imza, her imzalayan için benzersizdir çünkü hem kamusal hem de özel anahtarları oluşturmak için PKI protokolünü izler. Bir belgeyi dijital olarak imzalamak, imzalayanın özel anahtarını kullanarak bir matematiksel algoritmanın şifrelemesini kullandığı bir imza oluşturmakla ilgilidir.

Aspose.Words size mevcut dijital imzaları tespit etmenizi, saymanızı veya doğrulamanızı sağlar ve belgenize yeni bir imza eklemenizi sağlar böylece herhangi bir değişiklik olup olmadığını bulabilirsiniz. Ayrıca tüm dijital imzaları bir belgeden kaldırabilirsiniz. Dijital imzalarla çalışmak için [DigitalSignatureUtil](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/) sınıfını kullanın.

Bu makale bir dijital belgenin doğrulanabilirliğini ve bütünlüğünü doğrulamak için tüm yukarıdaki işlemleri nasıl yapılacağını açıklar.

{{% alert color="primary" %}}

Not edin ki, sizin belgenize ait dijital imzaları yalnızca Java 6 ve üstü sürüm çalıştırdığınızda erişebilirsiniz.

{{% /alert %}}

{{% alert color="primary" %}}

**Çevrimiçi dene**

Bu işlevselliği bizim [Free online signature](https://products.aspose.app/words/signature)'imizle deneyebilirsiniz.

{{% /alert %}}

## Desteklenen Biçimlerin

Aspose.Words sizinle DOC, OOXML ve ODT belgeleri üzerinde dijital imzalar ile çalışmanıza izin verir ve oluşturulan belgeyi PDF veya XPS formatında imzalayabilirsiniz.

## Dijital İmzaların Sınırlamaları

Aşağıdaki tablo, Aspose.Words ile dijital imzalar aracılığıyla çalışırken karşılaşabileceğiniz bazı sınırlamaları ve bazı alternatif seçenekleri açıklar.

| Sınırlama | Alternatif seçenek |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| Bir belgeden dijital imza kaybı yükleme ve kaydetme işleminden sonra. Bu nedenle bir belgeyi bir sunucuya işlemek tüm dijital imzaların kaybına neden olabilir herhangi bir bildirim olmadan. | Bir belgenin dijital imzaları olup olmadığını kontrol edin ve bunlardan herhangi biri bulunduğunda uygun eylemi gerçekleştirin. Örneğin, müşterilere bildirimde bulunarak onlara yükledikleri belgenin dijital imzalar içerdiğini ve işlendiğinde kaybolacağını bildirin. |
| Aspose.Words bir belge içinde makrolarla çalışmayı destekler. Fakat Aspose.Words, henüz makrolar üzerinde dijital imzaları desteklemiyor. | Belgeyi herhangi bir Word biçimine geri dışa aktarın ve Microsoft Word kullanarak makrolara dijital imza ekleyin. |

## Dijital İmzaları Algıla, Sayı ve Doğrula

Aspose.Words size bir belgedeki dijital imzayı tespit etmek için [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.io.InputStream) yöntemini ve [HasDigitalSignature](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasDigitalSignature) özelliğini kullanmanıza olanak tanır. Böyle bir denetimin sadece imzanın olduğunu ancak geçerliliğini değil bildiğinizi belirtmek gerekir.

Bir belge birden fazla kez imzalanabilir ve bu farklı kullanıcılar tarafından yapılabilir. Dijital imzaların geçerliliğini kontrol etmek için, onları belgeden [LoadSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#loadSignatures-java.io.InputStream) yöntemiyle yüklemeniz ve [IsValid](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#isValid) özelliğini kullanmanız gerekir. Ayrıca Aspose.Words özelliği, bir belgede tüm dijital imzaları saymak için [Count](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturecollection/#getCount) özelliğini kullanmanıza olanak tanır.

Bütün bunlar, bir belgeyi işleme olmadan önce imzaları kontrol etmek için verimli ve güvenli bir yol sağlar.

Aşağıdaki kod örneği, dijital imzaların varlığını nasıl tespit edip doğrulayacağını gösterir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "detect-document-signatures.java" >}}

## Dijital İmza Oluştur {#create-a-digital-signature}

Dijital imza oluşturmak için bir imzalama sertifikası yüklemeniz gerekir ki bu kimlik onaylar. Dijital olarak imzalı bir belge gönderdiğinizde aynı zamanda sertifikanızı ve ortak anahtarınızı gönderirsiniz.

Aspose.Words size bir X.509 sertifikasının oluşturulmasına izin verir. Bu dijital sertifika, imza sahibi dahil olmak üzere sertifikanın içinde bulunan bir genel anahtarın sahipliğini doğrulamak için uluslararası olarak kabul edilen X.509 PKI standardını kullanır. Bunu yapmak için [CertificateHolder](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/) sınıfının içindeki [Create](https://reference.aspose.com/words/java/com.aspose.words/certificateholder/#create-byte---java.lang.String) yöntemini kullanın.

Aşağıdaki bölümler bir dijital imza ekleme, imza satırı ve nasıl bir oluşturulan PDF belgesi imzalamak için açıklar.

### Bir Belge İmzala

Aspose.Words size [Sign](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#sign-java.io.InputStream-java.io.OutputStream-com.aspose.words.CertificateHolder) yöntemini ve [SignOptions](https://reference.aspose.com/words/java/com.aspose.words/signoptions/) özelliklerini kullanarak bir DOC, DOCX veya ODT belgesinin dijital olarak imzalanmasını sağlar.

Aşağıdaki kod örneği, bir sertifika sahibi ve imza seçenekleri kullanarak nasıl belge imzalayacağını göstermektedir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "sign-document.java" >}}

### İmza Çizgisi Ekle

Bir imza satırı, bir belge içinde dijital imzayı görsel olarak temsil eder. Aspose.Words size [DocumentBuilder.InsertSignatureLine](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertSignatureLine-com.aspose.words.SignatureLineOptions) yöntemi kullanarak bir imza satırı eklemenize olanak tanır. Bu temsil için parametreleri ayarlayabilirsiniz de [SignatureLineOptions](https://reference.aspose.com/words/java/com.aspose.words/signaturelineoptions/) sınıfını kullanırsınız.

Örneğin, aşağıdaki resimde geçerli ve geçersiz imzaların nasıl gösterileceğini gösterir.

<img src="valid.png" alt="valid-digital-signature" style="width:300px"/>

<img src="invalid.png" alt="invalid-digital-signature" style="width:300px"/>

Ayrıca, bir belge bir imza satırını içeriyorsa ancak dijital bir imza içermiyorsa, kullanıcının bir imza eklemesini isteyen bir özellik vardır.

Aşağıdaki kod örneğinde kişisel bir sertifika ve belirli bir imza satırıyla bir belge nasıl imzalanacağını göstermektedir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "create-new-signature-line-and-set-provider-id.java" >}}

### Oluşturulan PDF Dokümanını İmzalayın {#sign-a-generated-pdf-document}

Aspose.Words size bir PDF belgesinin tüm ayrıntılarını imzalamak ve almak için [PdfDigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfdigitalsignaturedetails/) özelliklerini kullanma imkanı verir.

Aşağıdaki kod örneği, oluşturulan bir PDF'yi nasıl imzalayacağınızı gösterir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "digitally-signed-pdf-using-certificate-holder.java" >}}

Aşağıdaki resim, oluşturulan PDF belgesinin Adobe Acrobat'da açıldığını ve dijital imzadan geçerli olarak teyit edildiğini göstermektedir.

![create-digital-signed-pdf-aspose-words-java](signed-pdf-aspose-words-java.png)

## Dijital İmza Değerini Geri Alın

Aspose.Words ayrıca dijital olarak imzalanmış bir belgeyi bayttan oluşan bir dizi kullanarak dijital imza değerini almak için [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) özelliğini sağlar.

Aşağıdaki kod örneği bir belgeden dijital imza değerini bayt dizisi olarak nasıl elde edileceğini gösterir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "signature-value.java" >}}

## Dijital İmzaları Kaldır

Aspose.Words imzalı bir belgeden tüm dijital imzaları kaldırmanıza izin verir. [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) yöntemini kullanın.

Aşağıdaki kod örneği bir belgeden dijital imzaları yükleme ve kaldırma şeklini gösterir:

{{< gist "aspose-words-gists" "39ea49b7754e472caf41179f8b5970a0" "remove-signatures.java" >}}

{{% alert color="primary" %}}

Not edin ki sizin belgelerinizde tek bir dijital imza kaldıramazsınız.

{{% /alert %}}
