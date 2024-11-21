---
title: C++ içindeki Fontlarla Çalışma
second_title: Aspose.Words için C++
articleTitle: Yazı Tipleriyle Çalışma
linktitle: Yazı Tipleriyle Çalışma
description: "C++ kullanarak ayrıntılı olarak yazı tipi biçimlendirme."
type: docs
weight: 230
url: /tr/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Yazı tipi, belirli bir boyut, renk ve tasarıma sahip bir karakter kümesidir. Aspose.Words, [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) ad alanını ve [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) sınıfını kullanarak yazı tipleriyle çalışmanıza olanak tanır.

## Yazı Tipi Biçimlendirme

Geçerli yazı tipi biçimlendirmesi, [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) özelliği tarafından döndürülen **Font** nesnesiyle temsil edilir. **Font** sınıfı, Microsoft Word'de bulunanları kopyalayan çok çeşitli yazı tipi özellikleri içerir.

Aşağıdaki kod örneği, yazı tipi biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Dolgu özellikleri artık yazı tiplerinin metnin dolgu biçimlendirmesini ayarlaması için de kullanılabilir. Örneğin, metin dolgusunun ön plan rengini veya saydamlığını değiştirme yeteneği verir.

## Yazı Tipi Satır Aralığı Alma

Yazı tipi satır aralığı, birbirini izleyen iki metin satırının taban çizgileri arasındaki dikey mesafedir. Bu nedenle satır aralığı, karakterin yüksekliğiyle birlikte satırlar arasındaki boşluğu içerir.

[LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) özelliği, aşağıdaki örnekte gösterildiği gibi bu değeri elde etmek için **Font** sınıfına tanıtıldı:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Yazı tipi EmphasisMark

Bazı Doğu Asya dilleri, vurguyu belirtmek için özel bir vurgu işareti kullanır. **Font** sınıfı, biçimlendirme sırasında uygulanacak `EmphasisMark` numaralandırma değerlerini almak veya ayarlamak için [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) özelliğini sağlar.

Aşağıdaki kod örneği, **EphasisMark** özelliğinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
