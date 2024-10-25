---
title: C++ içindeki Yazı Tipi İşleme ve Performans Sorunları
second_title: Aspose.Words için C++
articleTitle: Yazı Tipi İşleme ve Performans Sorunları
linktitle: Yazı Tipi İşleme ve Performans Sorunları
description: "Aspose.Words için C++ gerekli yazı tipi verilerini veya istenen yazı tipi için uygun bir yedeği bulmak için yazı tipi tam adını, soyadını, sürümünü, stilini kullanır. FontSettings belgelerin yüklenmesini hızlandırmanızı sağlar."
type: docs
weight: 11
url: /tr/cpp/font-manipulation-and-performance-issues/
---

Mevcut tüm yazı tipi işleme mekanizmaları [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings) sınıfında bulunur. Bu sınıf, tanımlanmış font kaynakları içindeki fontların alınmasından ve aşağıda açıklandığı gibi Font Değiştirme işleminden sorumludur.

## Çözümlenen Yazı Tiplerini Ayrıştırma

Yazı tipleri birkaç adımda ayrıştırılır:

1. Yazı tipi için bilgi edinme, mevcut tüm yazı tiplerinden çözümleme.
1. Kullanılabilir glifleri ve metrikleri (yatay ve dikey) elde etmek için çözümlenen yazı tiplerini ayrıştırma.
1. Çözümlenen yazı tiplerini katıştırma ve alt kümeleme için ayrıştırma.

Aspose.Words belgede bir yazı tipiyle ilk kez karşılaştığında, her yazı tipi kaynağında bulunan yazı tipi dosyalarından yazı tipi tam adı, soyadı, sürümü, stili gibi temel yazı tipi bilgilerini almaya çalışır. Tüm fontlar alındıktan sonra Aspose.Words, gerekli font verilerini veya istenen font için uygun bir yedeği bulmak için bu ayrıntıları kullanır.

## Yazı Tiplerini Değiştirirken Performans Sorunu

Yukarıda açıklanan prosedür zaman alıcı olduğundan, ilk lansmanında uygulama performansını olumsuz yönde etkileyebilir. Ancak, her **FontSettings** örneğinin kendi önbelleği vardır, bu da sonraki belgelerin işlem süresini kısaltabilir. Örneğin, **FontSettings** sınıfının bir örneğini farklı belgeler arasında paylaşabilirsiniz, bu da belgelerin yüklenmesini hızlandırmanıza olanak tanır. Aşağıdaki örnek bunu göstermektedir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

**FontSettings** açıkça tanımlanmadığında, Aspose.Words varsayılan **FontSettings** örneğini kullanır. Bu örnek aynı zamanda belgeler arasında otomatik olarak paylaşılır ve aşağıdaki gibi çıkarılabilir:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Varsayılan FontSettings Örneğini Kullanma

Tüm işleme belgelerinin aynı yazı tipi ayarlarını gerektirdiğinden eminseniz, varsayılan **FontSettings** örneğini ayarlamanız ve kullanmanız önerilir. Tüm belgeleriniz için aynı yazı tipi kaynaklarını kullanmanız gerektiğini varsayalım. Bu durumda, varsayılan örneği aşağıdaki gibi değiştirebilirsiniz:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Özel **FontSettings**, varsayılan örnekten daha yüksek önceliğe sahiptir.

{{% /alert %}}