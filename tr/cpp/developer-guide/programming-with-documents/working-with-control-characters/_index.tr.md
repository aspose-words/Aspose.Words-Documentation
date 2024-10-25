---
title: Kontrol Karakterleriyle Çalışma
second_title: Aspose.Words için C++
articleTitle: Kontrol Karakterleriyle Çalışma
linktitle: Kontrol Karakterleriyle Çalışma
description: "Kontrol karakterleriyle çalışmaya giriş Aspose.Words için C++."
type: docs
weight: 400
url: /tr/cpp/working-with-control-characters/
---

Microsoft Word belgeler, özel bir anlamı olan çeşitli karakterler içerebilir. Normalde biçimlendirme amacıyla kullanılırlar ve normal modda çizilmezler. Standart araç çubuğunda bulunan Biçimlendirme işaretlerini Göster/Gizle düğmesini tıklatırsanız bunları görünür hale getirebilirsiniz.

Bazen metne / metinden karakter eklemeniz veya kaldırmanız gerekebilir. Örneğin, belgeden programlı olarak metin alırken, Aspose.Words kontrol karakterlerinin çoğunu korur, bu nedenle bu metinle çalışmanız gerekiyorsa muhtemelen karakterleri kaldırmalı veya değiştirmelisiniz.

[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) sınıfı, belgelerde sıklıkla karşılaşılan kontrol karakterlerini temsil eden sabitler için bir depodur. Aynı sabitlerin hem karakter hem de dize sürümlerini sağlar. Örneğin, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) ve char **ControlChar.LineBreakChar** aynı değere sahiptir.

Aşağıdaki kod örneği, denetim karakterlerinin nasıl kullanılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}