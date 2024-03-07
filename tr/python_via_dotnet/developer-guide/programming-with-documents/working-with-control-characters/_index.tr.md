---
title: Kontrol Karakterleriyle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Kontrol Karakterleriyle Çalışmak
linktitle: Kontrol Karakterleriyle Çalışmak
description: "Python için Aspose.Words'te kontrol karakterleriyle çalışmaya giriş."
type: docs
weight: 400
url: /tr/python-net/working-with-control-characters/
---

Microsoft Word belgeleri özel anlamı olan çeşitli karakterler içerebilir. Normalde biçimlendirme amacıyla kullanılırlar ve normal modda çizilmezler. Standart araç çubuğunda bulunan Biçimlendirme İşaretlerini Göster/Gizle düğmesini tıklatırsanız bunları görünür hale getirebilirsiniz.

Bazen metne karakter eklemeniz veya metni kaldırmanız gerekebilir. Örneğin, belgeden programlı olarak metin alırken, Aspose.Words kontrol karakterlerinin çoğunu korur, dolayısıyla bu metinle çalışmanız gerekiyorsa muhtemelen karakterleri kaldırmanız veya değiştirmeniz gerekir.

[ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) sınıfı, belgelerde sıklıkla karşılaşılan kontrol karakterlerini temsil eden sabitler için bir depodur. Aynı sabitlerin hem char hem de string versiyonlarını sağlar. Örneğin, string [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) ve char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) aynı değere sahiptir.

Aşağıdaki kod örneği, denetim karakterlerinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
