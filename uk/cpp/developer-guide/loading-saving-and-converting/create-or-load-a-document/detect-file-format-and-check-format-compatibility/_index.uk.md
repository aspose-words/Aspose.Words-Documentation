---
title: Визначення формату файлу та перевірка сумісності форматів
second_title: Aspose.Words для C++
articleTitle: Визначення формату файлу та перевірка сумісності форматів
linktitle: Визначення формату файлу та перевірка сумісності форматів
description: "Вкажіть формат файлу в полі C++, якщо ви не впевнені у фактичному вмісті файлу або для перевірки сумісності форматів."
type: docs
weight: 20
url: /uk/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Іноді необхідно визначити формат документа перед відкриттям, оскільки розширення файлу не гарантує, що вміст файлу відповідає дійсності. Наприклад, відомо, що Crystal Reports часто виводить документи у форматі RTF, але присвоює їм розширення .doc.

Aspose.Words надає можливість отримати інформацію про тип файлу, щоб уникнути винятку, якщо ви не впевнені у фактичному вмісті файлу.

## Визначення формату файлу без будь-яких винятків

Коли ви маєте справу з кількома документами в різних форматах, можливо, вам доведеться відокремити ті файли, які можна обробити за допомогою Aspose.Words, від тих, які не можуть. Можливо, ви також захочете дізнатися, чому деякі документи не можуть бути оброблені.

Якщо ви спробуєте завантажити файл в об'єкт [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) і Aspose.Words не зможе розпізнати формат файлу або формат не підтримується, Aspose.Words викличе виняток. Ви можете перехопити ці винятки та проаналізувати їх, але Aspose.Words також надає метод [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/), який дозволяє нам швидко визначити формат файлу, не завантажуючи документ із можливими винятками. Цей метод повертає об'єкт [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/), що містить виявлену інформацію про тип файлу.

{{% alert color="primary" %}}

DetectFileFormat лише перевіряє формат файлу, але не перевіряє справжність самого файлу. Немає гарантії, що файл буде успішно відкритий, навіть якщо **DetectFileFormat** повертає, що це один із підтримуваних форматів. Це відбувається тому, що метод **DetectFileFormat** зчитує лише часткові дані формату файлу, достатні для перевірки формату файлу, але недостатні для повної перевірки.

{{% /alert %}}

## Перевірте сумісність форматів файлів

Ми можемо перевірити сумісність форматів усіх файлів у вибраній папці та відсортувати їх за форматом у відповідні підпапки.

Оскільки ми маємо справу з вмістом папки, перше, що нам потрібно зробити, це отримати колекцію всіх файлів у цій папці, використовуючи метод **GetFiles** класу `Directory` (з простору імен `System.IO`).

Наступний приклад коду показує, як отримати список усіх файлів у папці:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Коли всі файли зібрані, решта роботи виконується методом **DetectFileFormat**, який перевіряє формат файлу.

Наступний приклад коду показує, як перебирати зібраний список файлів, перевіряти формат кожного файлу та переміщувати кожен файл у відповідну папку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Файли переміщуються у відповідні підпапки методом `Move` класу `File` з того самого простору імен `System.IO`.

У наведеному вище прикладі використовуються наступні файли. Назва файлу вказана зліва, а його опис - справа:

| Група файлів | Вхідний документ | Тип |
| :- | :- | :- |
| Підтримувані формати файлів | Test File (DOC).doc | Microsoft Word 95 / 6.0 або Microsoft Word 97 – документ 2003 року. |
|  | Test File (DOT).dot | Microsoft Word 95/6.0 або Microsoft Word 97 – шаблон 2003 року. |
|  | Test File (DOCX).docx | Office відкриває XML WordprocessingML документ без макросів. |
|  | Test File (DOCM).docm | Office відкриває XML WordprocessingML документ за допомогою макросів. |
|  | Test File (DOTX).dotx | Шаблон Office Open XML WordprocessingML. |
|  | Test File (DOTM).dotm | Шаблон Office Open XML WordprocessingML з макросами. |
|  | Test File (XML).xml | FlatOPC OOXML Документ. |
|  | Test File (RTF).rtf | Документ у форматі Rich Text. |
|  | Test File (WordML).xml | Microsoft Word документ 2003 року WordprocessingML. |
|  | Test File (HTML).html | HTML документ. |
|  | Test File (MHTML).mhtml | MHTML документ (веб-архів). |
|  | Test File (ODT).odt | OpenDocument Текст (OpenOffice Автор). |
|  | Test File (OTT).ott | OpenDocument Шаблон документа. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 документ. |
| Зашифровані документи | Test File (Enc).doc | Зашифрований документ Microsoft Word 95/6.0 або Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Зашифрований офіс відкриває XML WordprocessingML документ. |
| Непідтримувані формати файлів | Test File (JPG).jpg | JPEG файл зображення. |

