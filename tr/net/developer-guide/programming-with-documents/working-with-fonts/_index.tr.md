---
title: C#'te Yazı Tipleriyle Çalışmak
second_title: .NET için Aspose.Words
articleTitle: Fontlarla Çalışmak
linktitle: Fontlarla Çalışmak
description: "C# kullanarak ayrıntılı yazı tipi biçimlendirmesi. C#'te vurgu işareti. C#'i kullanarak yazı tipi satır aralığını alın."
type: docs
weight: 230
url: /tr/net/working-with-fonts/
---

Yazı tipi, belirli bir boyuta, renge ve tasarıma sahip bir karakter kümesidir. Aspose.Words, [Fonts](https://reference.aspose.com/words/tr/net/aspose.words.fonts/) ad alanını ve [Font](https://reference.aspose.com/words/tr/net/aspose.words/font/) sınıfını kullanarak yazı tipleriyle çalışmanıza olanak tanır.

## Yazı Tipi Biçimlendirmesi

Geçerli yazı tipi formatı, [Font](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/font/) özelliği tarafından döndürülen **Font** nesnesi tarafından temsil edilir. **Font** sınıfı, Microsoft Word'de mevcut olanları çoğaltan çok çeşitli yazı tipi özellikleri içerir.

Aşağıdaki kod örneği, yazı tipi biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Metin dolgusu formatını ayarlamak için yazı tiplerinin dolgu özellikleri de mevcuttur. Bu, örneğin ön plan rengini veya metin dolgusunun şeffaflığını değiştirmeyi mümkün kılar.

## Yazı Tipi Satır Aralığını Alma

Yazı tipi satır aralığı, birbirini takip eden iki metin satırının taban çizgileri arasındaki dikey mesafedir. Dolayısıyla satır aralığı, karakterin yüksekliğinin yanı sıra satırlar arasındaki boşluğu da içerir.

Bu değeri elde etmek için aşağıdaki örnekte gösterildiği gibi [LineSpacing](https://reference.aspose.com/words/tr/net/aspose.words/font/linespacing/) özelliği **Font** sınıfına tanıtıldı:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Yazı Tipi Vurgu İşareti

Bazı Doğu Asya dilleri, vurguyu belirtmek için özel bir vurgu işareti kullanır. **Font** sınıfı, biçimlendirme sırasında uygulanacak [EmphasisMark](https://reference.aspose.com/words/tr/net/aspose.words/emphasismark/) numaralandırma değerlerini almak veya ayarlamak için [EmphasisMark](https://reference.aspose.com/words/tr/net/aspose.words/font/emphasismark/) özelliğini sağlar.

Aşağıdaki kod örneği **EphasisMark** özelliğinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
