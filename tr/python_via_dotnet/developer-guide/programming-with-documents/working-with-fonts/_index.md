---
title: Python'te Yazı Tipleriyle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Fontlarla Çalışmak
linktitle: Fontlarla Çalışmak
description: "Python'i kullanarak yazı tipi ayarlarını özelleştirin."
type: docs
weight: 230
url: /tr/python-net/working-with-fonts/
---

Yazı tipi, belirli bir boyuta, renge ve tasarıma sahip bir karakter kümesidir. Aspose.Words, [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) modülünü ve [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) sınıfını kullanarak yazı tipleriyle çalışmanıza olanak tanır.

## Yazı Tipi Biçimlendirmesi

Geçerli yazı tipi formatı, [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) özelliği tarafından döndürülen **Font** nesnesi tarafından temsil edilir. **Font** sınıfı, Microsoft Word'de mevcut olanları çoğaltan çok çeşitli yazı tipi özellikleri içerir.

Aşağıdaki kod örneği, yazı tipi biçimlendirmesinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Artık metnin dolgu biçimlendirmesini ayarlamak için yazı tipleri için dolgu özellikleri de mevcut. Örneğin ön plan rengini veya metin dolgusunun şeffaflığını değiştirme olanağı sağlar.

## Yazı Tipi Satır Aralığını Alma

Yazı tipi satır aralığı, birbirini takip eden iki metin satırının taban çizgileri arasındaki dikey mesafedir. Dolayısıyla satır aralığı, karakterin yüksekliğinin yanı sıra satırlar arasındaki boşluğu da içerir.

Bu değeri elde etmek için aşağıda verilen örnekte gösterildiği gibi [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) özelliği [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) sınıfına tanıtıldı:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Yazı Tipi Vurgu İşareti

Bazı Doğu Asya dilleri, vurguyu belirtmek için özel bir vurgu işareti kullanır. **Font** sınıfı, biçimlendirmede uygulanacak [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) numaralandırma değerlerini almak veya ayarlamak için [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) özelliğini sağlar.

Aşağıdaki kod örneği **EphasisMark** özelliğinin nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
