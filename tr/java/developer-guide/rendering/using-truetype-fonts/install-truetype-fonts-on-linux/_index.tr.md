---
title: TrueType Yazı Tiplerini Linux'de Java'da Yükleyin
second_title: Aspose.Words için Java
articleTitle: TrueType Yazı Tiplerini Linux'a Yükle
linktitle: TrueType Yazı Tiplerini Linux'a Yükle
description: "Aspose.Words için Java'de, bir Microsoft Word ile oluşturulan bir belgeyi en iyi doğruluğu olan bir Linux makinesinde işleyebilirsiniz."
type: docs
weight: 20
url: /tr/java/install-truetype-fonts-on-linux/
---

En sık, DOC veya DOCX belgeleri PDF formatına dönüştürmek için Aspose.Words kullanırsınız. Bunu bir Linux makine üzerinde yapmanız gerekiyorsa, bu konu size Aspose.Words'ın belgelerinizi en iyi doğrulukla nasıl oluşturacağını öğrenmenize yardımcı olacak.

Çok sık rastlanan şekilde, dönüştürülmesi gereken DOC ve DOCX belgeleri bir Microsoft Word, bir Windows veya Mac OS işletim sisteminde oluşturuldu. Bu nedenle, DOC ve DOCX belgelerinde kullanılan çoğu yazı tipi " Windows yazı tipleri" veya "Ofis yazı tipleri ", bu yazı tiplerinin kurulumuyla birlikte gelen Microsoft Windows veya Microsoft Ofis. Bu yazı tipleri Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings ve birçok diğerini içerir.

Sorun şu ki yukarıdaki `TrueType` yazı tipleri varsayılan olarak Linux dağıtımlarında yüklenmiyor. Eğer Cambria yazı tipini kullanarak biçimlendirilmiş tipik bir DOCX belgesine sahipseniz ve onu Linux üzerinde PDF biçimine dönüştürmeye çalışırsanız, Aspose.Words farklı bir yazı tipi kullanacaktır çünkü Cambria mevcut değildir. Sonuç olarak, PDF belgesi orijinal DOCX belgesinden farklı görünecektir. Buğulanan belgelerin orijinaline mümkün olduğunca yakın görünmesini sağlamak için, Aspose.Words tarafından dönüştürülmüş olanları Linux sisteminizde Windows yazı tiplerini yüklemeniz gerekir.

Bir Linux sisteminde TrueType yazı tiplerini elde etmenin iki ana yolu vardır:

- Windows makinesinden .TTF ve .TTC dosyalarını Linux makinenize kopyalayın
- Bir `TrueType` yazı tipi paketini yükleyin, örneğin *msttcorefonts*

## Bir Windows Makineden Yazı Kopyalamak

TrueType yazı tiplerini bir Linux sistemine yüklemenin kolay ve hızlı bir yolu, bir Windows makinesinden `C:\Windows\Fonts` dizinindeki .TTF ve .TTC dosyalarını Linux makinenizin bazı bir dizinine kopyalamaktır. Bu yazı tiplerini Linux üzerinde herhangi bir şekilde yüklemenize veya kaydetmenize gerek yok; sizin sadece yazı tiplerinin konumunu [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) sınıfını kullanarak Aspose.Words'de belirtmeniz yeterlidir.

{{% alert color="primary" %}}

Font lisanslama gerekip gerektirmediğini kontrol edin ve herhangi bir Linux işletim sistemine MS yazı tiplerini yüklemeden önce EULA'yı dikkatlice okuyun.

{{% /alert %}}

## Bir `TrueType` Yazı Paketi Yükleyin

Birkaç Linux paket, içerdikleri Microsoft TrueType yazı tiplerini senin Linux makineye indirebilir ve yükleyebilirsiniz. Aynen doğru adımlar çeşitli Linux dağıtımları üzerinde farklı olabilir.

-On Ubuntu 'da, Synaptic Paket Yöneticisini kullanarak *ttf-mscorefonts-installer* paketini bulup yükleyin.
- openSUSE'de, Yast2 → Yazılım Yönetimi'ni kullanarak *fetchmsttfonts* paketini bulup yükleyin.
- Liberation Yazı Tipleri (OFL altında lisanslı) standart Windows yazı tiplerinin (Arial, Times New Roman ve Courier New) alternatifini kullanın:
- Diğer Linux dağıtımlarına uygun yazı tipleri paketleri için net bulunan belgelere bakın.

Paketi yükledikten sonra, Aspose.Words bu yazı tiplerini sisteminizdeki klasörlerde bulacak ve bunları belgelerle çalışırken kullanacaktır.

## Ayrıca bakınız

- [Liberation Fonts](https://github.com/liberationfonts) standart Windows yazı tiplerinin bir alternatifi olarak
