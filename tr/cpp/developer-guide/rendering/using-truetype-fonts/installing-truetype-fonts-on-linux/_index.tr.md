---
title: TrueType Yazı Tiplerini Linux 'e C++'ye yükleyin
second_title: Aspose.Words için C++
articleTitle: TrueType Yazı Tiplerini Linux üzerine yükle
linktitle: TrueType Yazı Tiplerini Linux üzerine yükle
description: "Aspose.Words için C++ Linux makinede Microsoft Word kullanılarak oluşturulan bir belgenin en iyi doğrulukla oluşturulmasına izin verir. Bunu başarmak için, yazı tipi dosyalarını bir Windows makineden kopyalayın veya `TrueType` yazı tipi paketini Linux makinenize yükleyin."
type: docs
weight: 20
url: /tr/cpp/install-truetype-fonts-on-linux/
---

Çoğu zaman, DOC veya DOCX belgeleri PDF biçimine dönüştürmek için Aspose.Words kullanırsınız. Bunu bir Linux makinede yapmanız gerekiyorsa, bu konu Aspose.Words'ın belgelerinizi en iyi doğrulukla oluşturduğundan nasıl emin olacağınızı öğrenmenize yardımcı olacaktır.

Çoğu zaman, dönüştürülmesi gereken DOC ve DOCX belgeleri Microsoft Word kullanılarak, Windows veya Mac OS işletim sisteminde oluşturulmuştur. Bu nedenle, DOC ve DOCX belgelerinde kullanılan yazı tiplerinin çoğu, Microsoft Windows veya Microsoft Office ile yüklenen yazı tipleri olan "Windows yazı tipleri" veya "Office yazı tipleri" dir. Bu yazı tipleri arasında Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings ve diğerleri bulunur.

Sorun, yukarıda listelenen `TrueType` yazı tiplerinin Linux dağıtımlarına varsayılan olarak yüklenmemesidir. Cambria yazı tipiyle biçimlendirilmiş tipik bir DOCX belgeyi alıp Linux üzerinde PDF biçimine dönüştürmeye çalışırsanız, Aspose.Words Cambria kullanılamadığından farklı bir yazı tipi kullanır. Sonuç olarak, PDF belgesi, orijinal DOCX belgesine kıyasla farklı görünecektir. Aspose.Words tarafından dönüştürülen belgelerin orijinaline mümkün olduğunca yakın göründüğünden emin olmak için Linux sisteminize "Windows yazı tipleri" yüklemeniz gerekir.

Bir Linux sistemde TrueType yazı tipi almanın iki ana yolu vardır:

- Kopyalamak.TTF ve .TTC Windows makineden Linux makinenize dosyalar
- *msttcorefonts* gibi bir `TrueType` yazı tipi paketi yükleyin

## Windows Makineden Yazı Tiplerini Kopyalama

Linux sistemde TrueType yazı tipi almanın kolay ve hızlı bir yolu kopyalamaktır.TTF ve .TTC bir Windows makinedeki C: \Windows\Fonts dizininden Linux makinenizdeki bir dizine dosyalar. Bu fontları hiçbir şekilde Linux üzerine kurmanıza veya kaydetmenize gerek yoktur; Sadece Aspose.Words içindeki [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) sınıfını kullanarak fontların konumunu belirtmeniz yeterlidir.

{{% alert color="primary" %}}

Yazı tipi lisansının gerekli olup olmadığını doğrulayın ve herhangi bir Linux işletim sistemine MS Yazı Tipi yüklemeden önce EULA'i dikkatlice okuyun.

{{% /alert %}}

## `TrueType` Yazı Tipi Paketi Yükleme

Linux makinenize indirip yükleyebileceğiniz Microsoft TrueType yazı tiplerini içeren bir dizi Linux paketi vardır. Kesin adımlar çeşitli Linux dağılımlarında farklı olabilir.

- Ubuntu'de, *ttf-mscorefonts-installer* paketini bulup yüklemek için Synaptic Paket Yöneticisi'ni kullanın.
- Opensuse'da *fetchmsttfonts* paketini bulmak ve kurmak için Yast2 → Yazılım Yönetimi'ni kullanın.
- Standart Windows yazı tiplerine alternatif olarak OFL altında lisanslanan Liberation Yazı Tiplerini kullanın: Arial, Times New Roman ve Courier New.
- Diğer Linux dağıtımlarına uygun yazı tipi paketleri için internette mevcut belgeleri arayın.

Paketi yükledikten sonra Aspose.Words bu yazı tiplerini sisteminizdeki klasörlerde bulacak ve belgelerle çalışırken kullanacaktır.

## Ayrıca bakınız

- [Kurtuluş Yazı Tipleri](https://github.com/liberationfonts) standart Windows yazı tiplerine alternatif olarak
