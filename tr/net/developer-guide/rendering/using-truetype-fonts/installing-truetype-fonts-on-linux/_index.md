---
title: C#'deki Linux'e TrueType Yazı Tiplerini Yükleme
second_title: .NET için Aspose.Words
articleTitle: TrueType Yazı Tiplerini Linux'e Yükleme
linktitle: TrueType Yazı Tiplerini Linux'e Yükleme
description: ".NET için Aspose.Words, Microsoft Word kullanılarak oluşturulan bir belgenin C# kullanılarak en iyi doğrulukla bir Linux makinesinde görüntülenmesine olanak tanır. Bunu gerçekleştirmek için yazı tipi dosyalarını bir Windows makinesinden kopyalayın veya C#'daki Linux makinenize bir `TrueType` yazı tipi paketi yükleyin."
type: docs
weight: 20
url: /tr/net/installing-truetype-fonts-on-linux/
---

Çoğu zaman DOC veya DOCX belgelerini PDF formatına dönüştürmek için Aspose.Words'yi kullanırsınız. Bunu bir Linux makinesinde yapmanız gerekiyorsa bu konu, Aspose.Words'nin belgelerinizi en iyi doğrulukla oluşturduğundan nasıl emin olacağınızı öğrenmenize yardımcı olacaktır.

Çoğunlukla, dönüştürülmesi gereken DOC ve DOCX belgeleri, Windows veya Mac OS işletim sisteminde Microsoft Word kullanılarak oluşturulmuştur. Bu nedenle, DOC ve DOCX belgelerinde kullanılan yazı tiplerinin çoğu, Microsoft Windows veya Microsoft Office ile yüklenen yazı tipleri olan "Windows yazı tipleri" veya "Office yazı tipleri"dir. Bu yazı tipleri Arial, Calibri, Cambria, Century Gotik, Courier New, Garamond, Tahoma, Verdana, Wingdings ve daha birçok yazı tipini içerir.

Sorun, yukarıda listelenen `TrueType` yazı tiplerinin varsayılan olarak Linux dağıtımlarına yüklenmemesidir. Cambria yazı tipiyle biçimlendirilmiş tipik bir DOCX belgesini alıp Linux'de PDF biçimine dönüştürmeye çalışırsanız, Cambria kullanılamadığından Aspose.Words farklı bir yazı tipi kullanacaktır. Sonuç olarak PDF belgesi, orijinal DOCX belgesiyle karşılaştırıldığında farklı görünecektir. Aspose.Words tarafından dönüştürülen belgelerin orijinaline mümkün olduğunca yakın görünmesini sağlamak için Linux sisteminize "Windows yazı tipleri" yüklemeniz gerekir.

Linux sisteminde TrueType yazı tiplerini almanın iki ana yolu vardır:

- .TTF ve .TTC dosyalarını Windows makinesinden Linux makinenize kopyalayın
- *msttcorefonts* gibi bir `TrueType` yazı tipi paketi yükleyin

## Yazı Tiplerini Windows Makinesinden Kopyalama

TrueType yazı tiplerini Linux sistemine almanın kolay ve hızlı bir yolu, .TTF ve .TTC dosyalarını Windows makinesindeki `C:\Windows\Fonts` dizininden Linux makinenizdeki bir dizine kopyalamaktır. Bu yazı tiplerini hiçbir şekilde Linux'e yüklemenize veya kaydetmenize gerek yoktur; Aspose.Words'daki [FontSettings](https://reference.aspose.com/words/net/aspose.words.fonts/fontsettings/) sınıfını kullanarak yazı tiplerinin konumunu belirtmeniz yeterlidir.

{{% alert color="primary" %}}

Yazı tipi lisansının gerekli olup olmadığını doğrulayın ve MS Fonts'u herhangi bir Linux işletim sistemine yüklemeden önce EULA'yı dikkatlice okuyun.

{{% /alert %}}

## `TrueType` Yazı Tipleri Paketini Kurun

Linux makinenize indirip yükleyebileceğiniz, Microsoft TrueType yazı tiplerini içeren çok sayıda Linux paketi vardır. Çeşitli Linux dağıtımlarında tam adımlar farklı olabilir.

- Ubuntu'te *ttf-mscorefonts-installer* paketini bulup yüklemek için Synaptic Paket Yöneticisini kullanın.
- openSUSE'de *fetchmsttfonts* paketini bulup yüklemek için Yast2 → Yazılım Yönetimi'ni kullanın.
- Standart Windows yazı tiplerine alternatif olarak OFL kapsamında lisanslanan Liberation Yazı Tiplerini kullanın: Arial, Times New Roman ve Courier New.
- Diğer Linux dağıtımlarına uygun yazı tipi paketleri için internetteki mevcut belgeleri arayın.

Paketi yükledikten sonra Aspose.Words bu yazı tiplerini sisteminizdeki klasörlerde bulacak ve belgelerle çalışırken bunları kullanacaktır.

## Ayrıca bakınız

- Standart Windows yazı tiplerine alternatif olarak [Kurtuluş Yazı Tipleri](https://github.com/liberationfonts)
