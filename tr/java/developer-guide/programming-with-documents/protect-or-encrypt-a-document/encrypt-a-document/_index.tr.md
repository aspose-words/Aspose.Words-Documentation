---
title: Bir belgeyi Java'de şifreleyin
second_title: Aspose.Words için Java
articleTitle: Bir belgeyi şifrele
linktitle: Bir belgeyi şifrele
description: "Belgenizi belirli belge formatları için uygun şifreleme algoritmaları kullanarak Java'da şifreleyin."
type: docs
weight: 20
url: /tr/java/encrypt-a-document/
---

Şifreleme, okunabilir metni anlamsız bayt sıralarına çeviren bir işlemdir ki onu yalnızca şifre çözme anahtarına veya gizli koda sahip olan kişi okuyabilir. Bu süreç içeriği güvence altına almak için önemli bir rol oynar. İçeriği kodlamaya yardım eder, bir belgenin kaynağını doğrular, içeriğin gönderildikten sonra değiştirilmediğini kanıtlar ve belgeden gelen verilerin güvenli olduğundan emin olur.

Bu makale Aspose.Words'in bir belgenin şifrelemenize nasıl izin verdiğini ve bir belgenin şifrelendiğini veya olmadığını nasıl kontrol edebileceğinizi açıklar.

## Şifrele Şifresiyle

Bir belgeyi şifrelemek için, **Password** özelliğini bir şifreleme anahtarını çalıştıran bir şifre sağlamak için kullanın. Bu, belgenizin içeriğini değiştirecek ve onu okunamaz hale getirecektir. Şifreli belgeyi açmak için önce bu parolanın girilmesi gerekecektir.

{{% alert color="primary" %}}

Gerekli formata uygun **Password** özelliğini bulabilirsiniz. Her belge kaydedme biçimi eş karşılıklı bir sınıfa sahiptir bu format için kaydetme seçenekleri. Örneğin, [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) özelliği [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) sınıfındaki DOC veya [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) özelliği [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) sınıfındaki DOCX, DOCM, DOTX, DOTM ve FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Şunlara dikkat edin; yalnızca bazı belge formatları şifreleme destekler. Örneğin, RTF şifreleme desteklemez.

{{% /alert %}}

Aşağıdaki tablo Aspose.Words tarafından desteklenen formatları ve şifreleme algoritmalarını listeler:

| Biçim | Yüklenirken Desteklenen Şifreleme | Kaydetirken Desteklenen Şifreleme |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR şifreleme40-bit RC4 ŞifrelemeCrypto API RC4 Şifreleme | RC4 Şifreleme (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standart ŞifrelemeECMA-376 Esnek Şifreleme | ECMA-376 Standart Şifreleme (AES128 + SHA1) |
| ODT, OTT | ODF Şifreleme (Blowfish/AES) | ODF Şifreleme (AES256 + SHA256) |
| PDF | - | RC4 Şifreleme (40/128 Bit) |

Aşağıdaki kod örneği bir parolayla bir belgeyi şifrelemeyi nasıl gösterir:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Bir Dokümanın Şifrelenmiş olup olmadığını Kontrol Et

Bazı durumlarda, okunaksız bir belgeye sahip olabilirsiniz ve belgenin şifrelenmiş ve bozuk veya sıkıştırılmış olmadığından emin olmak isteyebilirsiniz.

Bir belge şifrelendiğinde ve bir parola gerektiğinde tespit etmek için [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) özelliğini [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) sınıfını kullanabilirsiniz. Bu özellik ayrıca bir belge yüklenmeden önce bir eylem gerçekleştirmenize de olanak tanır, örneğin bir kullanıcıya bir parolayı sağlamasını bildirmek.

Aşağıdaki kod örneği, bir belge şifrelemesini nasıl tespit edeceğini göstermektedir:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Şifre Kullanarak veya Kullanmadan Bir Belgeyi Açın

Bir belgenin şifrelendiğini doğruladıktan sonra, bir parola olmadan bu belgeyi açmaya çalışabiliriz ki bu da bir istisna yaratmalıdır.

Aşağıdaki kod örneği, bir parolası olmadan şifreli bir belgeyi nasıl açmaya çalışılacağını göstermektedir:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Şifreli bir belgenin şifresi olmadan açılamayacağını gördükten sonra, şifreyi girmek suretiyle açmayı deneyebiliriz.

Aşağıdaki kod örneğinde bir şifreli belgeyi parolayla açmaya nasıl denemede bulunulur gösterilmektedir:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
