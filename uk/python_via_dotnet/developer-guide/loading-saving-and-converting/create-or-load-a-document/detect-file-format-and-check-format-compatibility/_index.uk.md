---
title: Видалити формат файлу при завантаженні
second_title: Aspose.Words для Python via .NET
articleTitle: Видалити формат файлів і перевірити формат сумісності
linktitle: Видалити формат файлів і перевірити формат сумісності
description: "Визначити формат файлу в Python якщо ви не впевнені, що фактичний зміст файлу, або перевірити сумісність форматів."
type: docs
weight: 20
url: /uk/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Іноді необхідно визначити формат документа перед відкриттям, оскільки розширення файлу не гарантує, що вміст файлу доречно. Наприклад, відомо, що кристалічні звіти часто виводяться документи у форматі RTF, але дають їм розширення .doc.

Aspose.Words дає можливість отримати інформацію про тип файлу, щоб уникнути виключення, якщо ви не впевнені, що фактичний зміст файлу є.

## Видалити формат файлів без виключення

Коли ви працюєте з декількома документами в різних форматах файлів, вам може знадобитися відокремити ці файли, які можуть бути оброблені Aspose.Words від тих, хто не може. Ви також можете дізнатися, чому деякі документи не можуть бути оброблені.

Якщо ви спробуєте завантажити файл в файл [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт і Aspose.Words не може розпізнати формат файлу або формат не підтримується, Aspose.Words викине виняток. Ви можете зловити ті винятки і проаналізувати їх, але Aspose.Words також надає [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) метод, який дозволяє нам швидко визначити формат файлів без завантаження документа з можливими винятками. Цей метод повертає [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) об'єкт, який містить інформацію про тип файлу.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) тільки перевіряє формат файлу, але не перевіряє формат файлу. Не існує гарантії, що файл буде відкрито успішно, навіть якщо [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) повертає, що це один з підтримуваних форматів. Це через [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) метод читає тільки часткові дані формату файлів, достатні для перевірки формату файлу, але не достатньо для повної перевірки.

{{% /alert %}}

## Перевірити формат файлів сумісність

Ми можемо перевірити формат сумісності всіх файлів у вибраній папці та сортувати їх за форматом у відповідні підпапки.

З тих пір, як ми працюємо з вмістом в папці, перше, що нам потрібно зробити, це зібрати всі файли в цій папці за допомогою папки **Список** метод методу **з** модуль.

Приклад наступного коду показує, як отримати список всіх файлів в папці:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Коли зібрані всі файли, решта роботи виконується [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) метод, який перевіряє формат файлу.

Наприклад, наступний код показує, як ітерувати над зібраним переліком файлів, перевірити формат кожного файлу та переміщати кожен файл у відповідну папку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Файли переміщуються в відповідні підпапки з використанням **Файли** метод методу **Зареєструватися** модуль.

На прикладі вище використовуються наступні файли. Назва файлу зліва і його опис справа:

| Group Файли | Вхідний документ | Тип |
|  :-  |  :-  |  :-  |
| Підтримка форматів файлів | Тест файл (Doc).doc | Microsoft Word 95/6.0 або Microsoft Word 97 – 2003 документ. |
|  | Тестувати файл`Dot`.dot | Microsoft Word 95/6.0 або Microsoft Word 97 – 2003 шаблон. |
|  | Тест файл (Docx).docx | Офіс Відкритий XML-розробка ML документ без макросів. |
|  | Файл тесту (Docm).docm | Офіс Відкритий XML-розробка ML документ з макросом. |
|  | Тест файл (Dotx).dotx | Офіс Відкритий XML-розробка ML шаблон. |
|  | Тест файл (Dotm).dotm | Офіс Відкритий XML-розробка ML шаблон з макросом. |
|  | English, Українська, Français. | FlatOPC OOXML Документ. |
|  | Тест файл (RTF).rtf | Багатий текст Формат документа. |
|  | English, Українська, Français. | Microsoft Word 2003 Словообробка ML документ. |
|  | English, Українська, Français. | HTML документ. |
|  | JavaScript licenses API Веб-сайт Go1.13.8 | MHTML (Web архів) документ. |
|  | Тест файл (Odt).odt | OpenDocument Text (OpenOffice Writer). |
|  | Тест файл (Ott).ott | Шаблон документа OpenDocument. |
|  | Тест файл (DocPreWord60).doc | Microsoft Word 2.0 документ. |
| Зашифровані документи | Файл тесту (Enc).doc | Зашифрований Microsoft Word 95/6.0 або Microsoft Word 97 – 2003 документ. |
|  | Тест файл (Enc).docx | Зашифрована Office Open XML Wordprocessing ML документ. |
| Не підтримується формати файлів | Файл тесту (JPG). й | Файл зображень JPEG. |

