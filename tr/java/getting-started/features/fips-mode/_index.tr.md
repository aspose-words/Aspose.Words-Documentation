---
title: FIPS Modu
second_title: Aspose.Words Java için
articleTitle: FIPS Modu
linktitle: FIPS Modu
description: "Aspose.Words için Java, belgelerin işlenmesinde şifreleme ve karma algoritmalarını kullanmak için NIST standartlarına uygundur."
type: docs
weight: 80
url: /tr/java/fips-mode/
timestamp: 2024-05-08-10-19-58
---

Aspose.Words belgeler işlenirken birden fazla şifreleme ve karma algoritması kullanır ve bu makale bunun nasıl fips standartları ile ilişkili olduğu hakkında bilgi verir.

Federal Bilgi İşlem Standartları (FIP'ler), çeşitli amaçlar için, örneğin bilgisayar güvenliğini ve uyumluluğu sağlama için, Birleşik Devletler federal hükümet tarafından geliştirilen açık standartlardan oluşan bir kümedir.

## BouncyCastle Kıyıda

Aspose.Words için Java ve Aspose.Words için Android şifreleme, şifre çözme ve belge imzalamak için Bouncy Castle FIPS JAR kullanın. The JAR tasarlanmış ve uygulanmıştır. FBIPS 140-2, Seviye 1 gereksinimlerini karşılamak için.

FIPS 140-2, şifreleme modüllerini onaylamak için kullanılan bir ABD hükümeti bilgisayar güvenlik standardıdır. Bu standart, kriptografik modülün karşılanması gereken güvenlik gereksinimlerini belirtir ve çeşitli potansiyel uygulamalar ve ortamlar için yüksek güvenlik seviyeleri sağlar. FIPS 140-2 hakkında daha fazla ayrıntı için [NIST publication](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003) bakın.

Aspose.Words için .NET kullanırken genel Bouncy Castle sürümü, FIPS desteği olmadan kullanılır.

## FIPS Mod Aktivasyonu

Sürüm 18.10'dan başlayarak Aspose.Words iki modda çalışmak için izin verir: Genel ve FIPS.

Varsayılan olarak Aspose.Words Genel modda çalışır, bu nedenle algoritma ve anahtarların kullanımında herhangi bir kısıtlama yoktur.

Genel moddan FIPS moduna geçmek için Aspose.Words'i aşağıdaki yöntemi kullanarak açabilirsiniz:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Güvenlik için, çalışma zamanında modu Genel olarak değiştiremezsiniz.

Ayrıca not edin ki Aspose.Words otomatik olarak işletim sisteminizin FIPS modunda olup olmadığını tanımıyor bu yüzden Aspose.Words'i açıkça FIPs moduna geçirmek zorunda kalıyorsunuz

Aşağıdaki yöntemi Aspose.Words'in Java için FIFA modunda olduğundan emin olmak için uygulayın:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

FIPS modu etkin olduğunda, Aspose Words onaylanmamış uzunluklara sahip bazı şifreleme algoritmalarını ve anahtarlarını kullanmanızı engelleyecektir.

Örneğin, bir ODT şifreli belgeyi IPS modu etkinken açmaya çalışırken, aşağıdaki özel durumu görebilirsiniz:

{{% alert color="primary" %}}

OnaylanmamışGüvenlikOperasyonuHataları: Blowfish algoritmasını kullanan bir ODT dosyasını açmaya çalışmak. Bu algoritma NIST onaylı algoritma listesinde yer almıyor.

{{% /alert %}}

Bu, Blowfish algoritmasının NIST onaylı algoritmalar listesinde olmadığından gerçekleşir.

Uygunsuz uzunluktaki anahtarların kullanılması durumunda benzer bir özel durum meydana gelebilir:

OnaylanmamışSecurity OperaçãoionException: Bir anahtar boyutunun 1024 kullanamazsınız bir RSA şifreleme için NIST modunda.

Onaylanmış algoritmalar listesi hakkında daha fazla ayrıntı için [BouncyCastle User Guide](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf) 'ye bakın," "Sifre Algoritmaları (Simetrik)"".


