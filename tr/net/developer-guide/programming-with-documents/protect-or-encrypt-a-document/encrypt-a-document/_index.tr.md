---
title: C#'te bir Belgeyi Şifreleyin
second_title: .NET için Aspose.Words
articleTitle: Belgeyi Şifrele
linktitle: Belgeyi Şifrele
description: "C#'teki belirli belge formatları için uygun şifreleme algoritmalarını kullanarak belgenizi şifreleyin."
type: docs
weight: 20
url: /tr/net/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Şifreleme, okunabilir metni anlamsız bayt dizilerine dönüştüren ve böylece yalnızca şifre çözme anahtarına veya gizli koda sahip olan kişi tarafından okunabilen işlemdir. Bu süreç içeriğinizin güvenliğini sağlamada önemli bir rol oynar. İçeriğin kodlanmasına, bir belgenin kaynağının doğrulanmasına, içeriğin gönderildikten sonra değiştirilmediğinin kanıtlanmasına ve belgedeki verilerin güvenli olduğundan emin olunmasına yardımcı olur.

Bu makalede Aspose.Words'in bir belgeyi şifrelemenize nasıl izin verdiği ve bir belgenin şifrelemesi olup olmadığının nasıl kontrol edileceği açıklanmaktadır.

## Şifreyle Şifrele

Bir belgeyi şifrelemek için, şifreleme anahtarı işlevi gören bir parola sağlamak üzere **Password** özelliğini kullanın. Bu, belgenizin içeriğini değiştirecek ve onu okunamaz hale getirecektir. Şifrelenmiş belgenin açılabilmesi için bu şifrenin girilmesi gerekecektir.

{{% alert color="primary" %}}

Gerekli format için uygun **Password** özelliğini bulabilirsiniz. [Ad Alanı Kaydediliyor](https://reference.aspose.com/words/tr/net/aspose.words.saving/)'deki her belge kaydetme biçimi, bu biçim için kaydetme seçeneklerini içeren karşılık gelen bir sınıfa sahiptir. Örneğin, DOC için [DocSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/docsaveoptions/) sınıfındaki [Password](https://reference.aspose.com/words/tr/net/aspose.words.saving/docsaveoptions/password/) özelliği veya DOCX, DOCM, DOTX, DOTM ve FlatOpc için [OoxmlSaveOptions](https://reference.aspose.com/words/tr/net/aspose.words.saving/ooxmlsaveoptions/) sınıfındaki [Password](https://reference.aspose.com/words/tr/net/aspose.words.saving/ooxmlsaveoptions/password/) özelliği.

{{% /alert %}}

{{% alert color="primary" %}}

Yalnızca belirli belge biçimlerinin şifrelemeyi desteklediğini unutmayın. Örneğin RTF şifrelemeyi desteklemez.

{{% /alert %}}

Aşağıdaki tabloda Aspose.Words tarafından desteklenen formatlar ve şifreleme algoritmaları listelenmektedir:

| Biçim |  Yükleme Sırasında Desteklenen Şifreleme |  Kaydederken Desteklenen Şifreleme |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR şifreleme40 bit RC4 ŞifrelemeCryptoAPI RC4 Şifreleme |  RC4 Şifreleme (40 bit) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standart ŞifrelemeECMA-376 Çevik Şifreleme |  ECMA-376 Standart Şifreleme (AES128 + SHA1) |
|  ODT, OTT |  ODF Şifrelemesi (Blowfish/AES) |  ODF Şifrelemesi (AES256 + SHA256) |
|  PDF'ler |  -                                                            |  RC4 Şifreleme (40/128 bit) |

Aşağıdaki kod örneği, bir belgenin parolayla nasıl şifreleneceğini gösterir:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Bir Belgenin Şifreli Olup Olmadığını Kontrol Edin

Bazı durumlarda, okunamayan bir belgeniz olabilir ve belgenin şifrelendiğinden, bozulmadığından veya sıkıştırılmadığından emin olmak isteyebilirsiniz.

Bir belgenin şifrelenip şifrelenmediğini ve şifre gerekip gerekmediğini tespit etmek için [FileFormatInfo](https://reference.aspose.com/words/tr/net/aspose.words/fileformatinfo/) sınıfının [IsEncrypted](https://reference.aspose.com/words/tr/net/aspose.words/fileformatinfo/isencrypted/) özelliğini kullanabilirsiniz. Bu özellik aynı zamanda bir belgeyi yüklemeden önce, örneğin kullanıcıya parola girmesini bildirmek gibi bazı eylemleri gerçekleştirmenize de olanak tanır.

Aşağıdaki kod örneği, belge şifrelemesinin nasıl algılanacağını gösterir:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Parolalı veya Parolasız Bir Belgeyi Açma

Bir belgenin şifrelendiğinden emin olduğumuzda, bu belgeyi parola olmadan açmayı deneyebiliriz, bu da bir istisnaya yol açacaktır.

Aşağıdaki kod örneği, şifrelenmiş bir belgeyi parola olmadan açmanın nasıl deneneceğini gösterir:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Şifrelenmiş bir belgenin şifre olmadan açılamayacağını gördükten sonra şifreyi girerek açmayı deneyebiliriz.

Aşağıdaki kod örneği, şifrelenmiş bir belgenin parolayla nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
