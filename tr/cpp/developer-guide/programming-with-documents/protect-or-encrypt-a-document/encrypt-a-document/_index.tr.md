---
title: Bir Belgeyi C++ içinde Şifreleyin
second_title: Aspose.Words için C++
articleTitle: Bir Belgeyi Şifrele
linktitle: Bir Belgeyi Şifrele
description: "Belirli belge biçimleri için uygun şifreleme algoritmalarını kullanarak belgenizi şifreleyin."
type: docs
weight: 20
url: /tr/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Şifreleme, okunabilir metni anlamsız bayt dizilerine çeviren işlemdir, böylece yalnızca şifre çözme anahtarı veya gizli kodu olan kişi tarafından okunabilir. Bu süreç, içeriğinizin güvenliğini sağlamada önemli bir rol oynar. İçeriği kodlamaya, belgenin kaynağını doğrulamaya, içeriğin gönderildikten sonra değiştirilmediğini kanıtlamaya ve belgedeki verilerin güvende olduğundan emin olmaya yardımcı olur.

Bu makalede, Aspose.Words 'ın bir belgeyi şifrelemenize nasıl izin verdiği ve bir belgenin şifrelemesi olup olmadığını nasıl kontrol edeceğiniz açıklanmaktadır.

## Şifre ile Şifrele

Bir belgeyi şifrelemek için, şifreleme anahtarı işlevi gören bir parola sağlamak üzere **Password** özelliğini kullanın. Bu, belgenizin içeriğini değiştirecek ve okunamaz hale getirecektir. Şifrelenmiş belgenin açılmadan önce bu parolanın girilmesi gerekir.

{{% alert color="primary" %}}

Gerekli format için uygun **Password** özelliğini bulabilirsiniz. [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) içindeki her belge kaydetme biçimi, bu biçim için kaydetme seçeneklerini içeren karşılık gelen bir sınıfa sahiptir. Örneğin, DOC için [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) sınıfındaki [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) özelliği veya [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) sınıfındaki [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) özelliği DOCX, DOCM, DOTX, DOTM, ve FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Yalnızca belirli belge biçimlerinin şifrelemeyi desteklediğini unutmayın. Örneğin, RTF şifrelemeyi desteklemez.

{{% /alert %}}

Aşağıdaki tabloda Aspose.Words tarafından desteklenen biçimler ve şifreleme algoritmaları listelenmiştir:

| Biçim | Yükleme sırasında Desteklenen Şifreleme | Kaydederken Desteklenen Şifreleme |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR şifreleme40-bit RC4 EncryptionCryptoAPI RC4 Şifreleme | RC4 Şifreleme (40 bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standart Şifreleme ECMA-376 Çevik Şifreleme | ECMA-376 Standart Şifreleme (AES128 + SHA1) |
| ODT, OTT | ODF Şifreleme (Blowfish /AES) | ODF Şifreleme (AES256 + SHA256) |
| PDF | RC4 Şifreleme (40/128 bit) |

Aşağıdaki kod örneği, bir belgenin parola ile nasıl şifreleneceğini gösterir:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Bir Belgenin Şifreli Olup Olmadığını Kontrol Edin

Bazı durumlarda, okunamayan bir belgeniz olabilir ve belgenin şifrelendiğinden ve bozulmadığından veya sıkıştırılmadığından emin olmak isteyebilirsiniz.

Bir belgenin şifrelenip şifrelenmediğini ve bir parola gerekip gerekmediğini algılamak için [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) sınıfının [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) özelliğini kullanabilirsiniz. Bu özellik ayrıca, bir belgeyi yüklemeden önce, örneğin bir kullanıcıyı parola sağlaması konusunda bilgilendirmek gibi bazı işlemler gerçekleştirmenize de olanak tanır.

Aşağıdaki kod örneği, belge şifrelemesinin nasıl algılanacağını gösterir:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Parolasız veya Parolasız Bir Belge Açma

Bir belgenin şifrelendiğinden emin olduğumuzda, bu belgeyi şifre olmadan açmayı deneyebiliriz, bu da bir istisnaya yol açmalıdır.

Aşağıdaki kod örneği, şifrelenmiş bir belgeyi şifresiz açmayı nasıl deneyeceğinizi gösterir:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Şifrelenmiş bir belgenin şifresiz açılamayacağını gördükten sonra şifreyi girerek açmayı deneyebiliriz.

Aşağıdaki kod örneği, şifrelenmiş bir belgeyi parola ile açmayı nasıl deneyeceğinizi gösterir:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
