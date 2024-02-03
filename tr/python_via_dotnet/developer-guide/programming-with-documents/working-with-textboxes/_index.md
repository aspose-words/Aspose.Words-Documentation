---
title: Python'te TextBox'larla çalışma
second_title: Python via .NET için Aspose.Words
articleTitle: TextBox'larla çalışma
linktitle: TextBox'larla çalışma
description: "Python kullanarak bir belgedeki metin kutularıyla çalışın."
type: docs
weight: 250
url: /tr/python-net/working-with-textboxes/
---

Aspose.Words'te [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) sınıfı, bir metnin şeklin içinde nasıl görüntüleneceğini belirtmek için kullanılır. Müşterinin bağlantılı [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)'den bağlantılı [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)'i bulmasını sağlamak amacıyla metin kutusunun ana şeklini almak için [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) olarak adlandırılan genel bir özellik sağlar.

## Bağlantı Oluşturma

[TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) sınıfı, [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/)'in hedef Metin Kutusuna bağlanıp bağlanamayacağını kontrol etmek için [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) yöntemini sağlar.

Aşağıdaki kod örneği, `TextBox`'in hedef Metin Kutusuna bağlanıp bağlanamayacağının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## TextBox Sırasını Kontrol Edin

Metni bir şekilde görüntülemenin birkaç yolu vardır. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) bir dizinin Başı, Ortası veya Kuyruğu olabilir.

Aşağıdaki kod örneği, **TextBox**'in dizinin Başı, Sonu veya Ortası olup olmadığının nasıl kontrol edileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Bağlantıyı Kırmak

[text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) yöntemini kullanarak bir sonraki **TextBox**'ye olan bağlantıyı kesebilirsiniz.

Aşağıdaki kod örneği, bir **TextBox** bağlantısının nasıl kesileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
