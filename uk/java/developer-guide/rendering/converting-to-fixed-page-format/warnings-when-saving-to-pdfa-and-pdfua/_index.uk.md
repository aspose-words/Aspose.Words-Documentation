---
title: Попередження при збереженні PDF/A та PDF/UA
second_title: Aspose.Words для Java
articleTitle: Попередження про доступність при збереженні PDF/A та PDF/UA
linktitle: Попередження про доступність при збереженні PDF/A та PDF/UA
description: "PDF/A та PDF/UA накладають вимоги до доступності, пов’язані з вмістом документа. При збереженні PDF/A або PDF/UA в Java і питання порушує комплаєнс, видається попередження."
type: docs
weight: 29
url: /uk/java/warnings-when-saving-to-pdfa-and-pdfua/
---

PDF/A та PDF/UA формати накладають ряд вимог до доступності, пов’язаних з вмістом документа, які не можуть виконуватися під час автоматичного перетворення з Word в PDF. Ці вимоги описані в попередній статті * "Робота з PDF/A або PDF/UA"*. Тепер видаються попередження про деякі проблеми.

Попередження видаються при збереженні одного з форматів PDF/A або PDF/UA, і питання порушує відповідність. Наприклад, попередження про відсутність назви документів буде видана при збереженні PDF/UA та не буде видана при збереженні PDF/A.

Всі попередження [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingЛос** і [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**.й Пдф**й Ось список нових значень попередження опису:

|  Опис значення попередження |  PDF/А |  Українська |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Заголовок документів відсутній. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |                          |   {{< emoticons/tick >}}  |
|  "У документі є заголовки, які рівні не є послідовними. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |                          |   {{< emoticons/tick >}}  |
|  "Є форми без сольового тексту в документі. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Складки без сольового тексту в документі. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Чи не містять текстів у документі. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |                          |   {{< emoticons/tick >}}  |
|  "Складки без заголовка рядка / стовпця в документі. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |                          |   {{< emoticons/tick >}}  |
|  "У документі міститься символи Unicode PUA. Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |   {{< emoticons/tick >}}  |                          |
|  "У документі міститься .notdef glyphй Це порушує вимоги до відповідності. Вихідний документ не повністю відповідає |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |