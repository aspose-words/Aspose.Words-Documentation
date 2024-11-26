---
title: C#'te TextBox'larla çalışma
second_title: .NET için Aspose.Words
articleTitle: TextBox'larla çalışma
linktitle: TextBox'larla çalışma
description: ".NET için Aspose.Words'teki bağlantılı metin kutuları özelliğine giriş."
type: docs
weight: 250
url: /tr/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words'te [TextBox](https://reference.aspose.com/words/tr/net/aspose.words.drawing/textbox/) sınıfı, metnin bir şeklin içinde nasıl görüntüleneceğini belirtmek için kullanılır. Müşterinin ilişkili **TextBox**'dan bağlantılı [Shape](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/)'i bulabilmesi için metin kutusunun ana şeklini almak üzere **Parent** adlı bir ortak özelliği ortaya çıkarır.

## Bağlantı Oluşturma

**TextBox** sınıfı, **TextBox**'in hedef **Textbox**'e bağlanıp bağlanamayacağını kontrol etmek için [IsValidLinkTarget](https://reference.aspose.com/words/tr/net/aspose.words.drawing/textbox/isvalidlinktarget/) yöntemini sağlar.

Aşağıdaki kod örneği, `TextBox`'in hedef Metin Kutusuna bağlanıp bağlanamayacağının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## TextBox Sırasını Kontrol Edin

Metni bir şekilde görüntülemenin birkaç yolu vardır. [TextBox](https://reference.aspose.com/words/tr/net/aspose.words.drawing/shape/textbox/) bir dizinin Başı, Ortası veya Kuyruğu olabilir.

Aşağıdaki kod örneği, **TextBox**'in dizinin Başı, Sonu veya Ortası olup olmadığının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Bağlantıyı Kırmak

[BreakForwardLink](https://reference.aspose.com/words/tr/net/aspose.words.drawing/textbox/breakforwardlink/) yöntemini kullanarak bir sonraki **TextBox**'ye olan bağlantıyı kesebilirsiniz.

Aşağıdaki kod örneği, bir **TextBox** bağlantısının nasıl kesileceğini gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
