---
title: Премахване на полета C#
second_title: Aspose.Words вместо .NET
articleTitle: Премахване на полета
linktitle: Премахване на полета
description: "Научете как да премахнете полетата в C#. Премахване на полетата чрез програмиране .NET API."
type: docs
weight: 35
url: /bg/net/remove-fields/
---

Понякога е необходимо да се премахне поле от документ. Това може да се случи, когато трябва да бъде заменен с различен тип поле или когато полето вече не е необходимо в документа. Например `TOC` поле при спестяване на HTML.

Премахване на поле, включено в документ, като се използва [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/), да използвате върнатите [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) обект, който осигурява удобен [Remove](https://reference.aspose.com/words/net/aspose.words.fields/field/remove/) метод за лесно премахване на полето от документа.

Следният пример за код показва как да се премахне поле от документа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
