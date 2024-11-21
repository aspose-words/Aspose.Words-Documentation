---
title: Обнаружение формата файла при загрузке
second_title: Aspose.Words для Python via .NET
articleTitle: Обнаружение формата файла и проверка совместимости формата
linktitle: Обнаружение формата файла и проверка совместимости формата
description: "Определить формат файла в Python Если вы не уверены, каково фактическое содержание файла, или проверить совместимость формата."
type: docs
weight: 20
url: /ru/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Иногда перед открытием необходимо определить формат документа, потому что расширение файла не гарантирует, что содержимое файла уместно. Например, известно, что Crystal Reports часто выводит документы в формате RTF, но дает им расширение .doc.

Aspose.Words Предоставляет возможность получения информации о типе файла, чтобы избежать исключения, если вы не уверены в фактическом содержании файла.

## Обнаружение формата файла без исключения

Когда вы имеете дело с несколькими документами в различных форматах файлов, вам может потребоваться отделить те файлы, которые могут быть обработаны. Aspose.Words от тех, кто не может. Вы также можете узнать, почему некоторые документы не могут быть обработаны.

Если вы пытаетесь загрузить файл в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект и Aspose.Words не может распознать формат файла или формат не поддерживается; Aspose.Words Будет сделано исключение. Вы можете уловить эти исключения и проанализировать их. Aspose.Words также обеспечивает [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Способ, позволяющий быстро определить формат файла без загрузки документа с возможными исключениями. Этот метод возвращает [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/) объект, содержащий обнаруженную информацию о типе файла.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Проверяет только формат файла, но не проверяет формат файла. Нет никакой гарантии, что файл будет успешно открыт, даже если [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Это один из поддерживаемых форматов. Это объясняется тем, что [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Способ считывает только частичные данные формата файла, достаточные для проверки формата файла, но недостаточные для полной проверки.

{{% /alert %}}

## Проверьте совместимость формата файлов

Мы можем проверить совместимость всех файлов в выбранной папке и сортировать их по формату в соответствующие подпапки.

Поскольку мы имеем дело с содержимым в папке, первое, что нам нужно сделать, это получить коллекцию всех файлов в этой папке, используя **листер** Методика **о** Модуль.

Следующий пример кода показывает, как получить список всех файлов в папке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Когда все файлы собраны, остальная часть работы выполняется [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) Метод, который проверяет формат файла.

Следующий пример кода показывает, как итерировать собранный список файлов, проверить формат каждого файла и переместить каждый файл в соответствующую папку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Файлы перемещаются в соответствующие подпапки с использованием **копифил** Методика **шлюз** Модуль.

В приведенном выше примере используются следующие файлы. Имя файла находится слева, а его описание справа:

| Group Из файлов | Вводный документ | Тип |
|  :-  |  :-  |  :-  |
| Поддерживаемые форматы файлов | Тестовый файл (Doc) | Microsoft Word 95/6.0 или Microsoft Word 97 – 2003 г. Документ. |
|  | Тестовый файл`Dot`Дот | Microsoft Word 95/6.0 или Microsoft Word 97 – 2003 шаблон. |
|  | Тестовый файл (Docx) | Office Open XML обработка текстов ML документ без макросов. |
|  | Тестовый файл (Docm) | Office Open XML обработка текстов ML документ с макросами. |
|  | Тестовый файл (Dotx) | Office Open XML обработка текстов ML шаблон. |
|  | Тестовый файл (Dotm.dotm) | Office Open XML обработка текстов ML шаблон с макросами. |
|  | Тестовый файл (XML).xml | Документ FlatOPC OOXML. |
|  | Тестовый файл (RTF) | Богатый текстовый формат документа. |
|  | Тестовый файл (WordML.xml) | Microsoft Word 2003 Обработка текстов Документ ML. |
|  | Тестовый файл (HTML).html | HTML документ. |
|  | Тестовый файл (MHTML) | Документ MHTML (веб-архив). |
|  | Тестовый файл (Odt) | OpenDocument Text (OpenOffice Writer). |
|  | Тестовый файл (Ott.ott) | Шаблон OpenDocument Document. |
|  | Тестовый файл (DocPreWord60) | Microsoft Word 2.0 Документ. |
| Зашифрованные документы | Тестовый файл (Enc.doc) | Зашифрованный Microsoft Word 95/6.0 или Microsoft Word 97 – 2003 г. Документ. |
|  | Тестовый файл (Enc.docx) | Зашифрованный Office Open XML Word Processing Документ ML. |
| Неподдерживаемые форматы файлов | Тестовый файл (JPG). gpg | Файл изображений JPEG. |

