---
title: Как да намерите свойства на полето
second_title: Aspose.Words за C++
articleTitle: Намерете Свойства На Полето
linktitle: Намерете Свойства На Полето
description: "Как да намерите някои свойства на поле, като код на поле и резултат на поле в C++."
type: docs
weight: 25
url: /bg/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Поле, което се вмъква с [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) връща [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/) обект. Това е клас фасада, който предоставя полезни методи за бързо намиране на някои свойства на дадено поле.

Следният пример за код показва как да намерите кода на полето и резултата от полето:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Забележка Ако търсите само имената на полетата за обединяване в документ, можете вместо това да използвате вградения метод [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

Следващият пример за код показва как да получите имената на всички полета за обединяване в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
