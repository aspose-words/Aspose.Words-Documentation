---
title: Bağlantılı Metin Kutularında Çalışmak Java ile
second_title: Aspose.Words için Java
articleTitle: Bağlı Metin Kutularıyla Çalışmak
linktitle: Bağlı Metin Kutularıyla Çalışmak
description: "Bağlı metin kutuları özelliğine giriş Aspose.Words için Java."
type: docs
weight: 250
url: /tr/java/working-with-linked-textboxes/
---

Aspose.Words'te, şekil içinde görüntülenen bir metin belirtmek için "[TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/)" sınıfı kullanılır. Bu, müşterinin birbirine bağlı [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ile bağlı **TextBox** bulmasına izin vermek için metin kutusunun üst şekilini almak için bir ortak özellik olarak Parent ismine sahip bir sağlama sağlar.

## Bir Bağlantı Oluştur

The **TextBox** sınıfı, hedef **Textbox**'in **TextBox**'a bağlanıp bağlanamayacağını kontrol etmek için [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) yöntemini sağlar.

Aşağıdaki kod örneği, `TextBox`'ın hedef metin kutusuna bağlanıp bağlanamayacağını nasıl kontrol edileceğini göstermektedir":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Metin Kutusu Sekansını Kontrol Et

Bir şekle metin göstermek için birkaç yol var. The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) bir sıralamanın Başlık, Orta veya Kuyruk olabilir.

Aşağıdaki kod örneği, **TextBox**'in bir başlık, kuyruk veya dizinin ortasında olup olmadığını nasıl kontrol edileceğini gösterir":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Bağlantıyı kır

Using the [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) yöntemi, bağlantıyı bir sonraki **TextBox** 'u kesebilirsin.

Aşağıdaki kod örneği, bir bağlantıyı nasıl kıracağınızı gösterir: **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
