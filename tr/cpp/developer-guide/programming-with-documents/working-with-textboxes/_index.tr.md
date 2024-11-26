---
title: C++ içinde TextBoxes ile çalışmak
second_title: Aspose.Words için C++
articleTitle: TextBoxes ile çalışmak
linktitle: TextBoxes ile çalışmak
description: "Bağlantılı metin kutularına giriş özelliği Aspose.Words için C++."
type: docs
weight: 250
url: /tr/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words'te [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) sınıfı, metnin bir şeklin içinde nasıl görüntüleneceğini belirtmek için kullanılır. Metin kutusunun üst şeklini almak için **Parent** adlı bir ortak özelliği gösterir, böylece müşteri ilişkili [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) 'i ilişkili **TextBox**'den bulabilir.

## Bağlantı Oluştur

**TextBox** sınıfı, **TextBox**'in **Textbox** hedefine bağlanıp bağlanamayacağını kontrol etmek için [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) yöntemi sağlar.

Aşağıdaki kod örneği, `TextBox` öğesinin hedef Metin Kutusuna bağlanıp bağlanamayacağının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## TextBox Sırasını Kontrol Et

Metni bir şekilde görüntülemenin birkaç yolu vardır. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) bir dizinin Başı, Ortası veya Kuyruğu olabilir.

Aşağıdaki kod örneği, **TextBox**'ın dizinin Başı, Kuyruğu veya Ortası olup olmadığını nasıl kontrol edeceğinizi gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Bağlantıyı Kes

[BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/) yöntemini kullanarak bir sonraki **TextBox** ile bağlantıyı kesebilirsiniz.

Aşağıdaki kod örneği, bir **TextBox** bağlantısının nasıl kesileceğini gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
