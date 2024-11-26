---
title: Определение Формата Файла При Загрузке
second_title: Aspose.Words для Python via .NET
articleTitle: Определение формата файла и проверка совместимости форматов
linktitle: Определение формата файла и проверка совместимости форматов
description: "Укажите формат файла в поле Python, если вы не уверены в фактическом содержимом файла или для проверки совместимости форматов."
type: docs
weight: 20
url: /ru/python-net/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Иногда необходимо определить формат документа перед открытием, поскольку расширение файла не гарантирует, что содержимое файла соответствует действительности. Например, известно, что Crystal Reports часто выводит документы в формате RTF, но присваивает им расширение .doc.

Aspose.Words предоставляет возможность получить информацию о типе файла, чтобы избежать исключения, если вы не уверены в фактическом содержимом файла.

## Определение формата файла без каких-либо исключений

Когда вы имеете дело с несколькими документами в различных форматах, вам может потребоваться отделить те файлы, которые могут быть обработаны с помощью Aspose.Words, от тех, которые не могут. Возможно, вы также захотите узнать, почему некоторые документы не могут быть обработаны.

Если вы попытаетесь загрузить файл в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и Aspose.Words не сможет распознать формат файла или формат не поддерживается, Aspose.Words вызовет исключение. Вы можете перехватить эти исключения и проанализировать их, но Aspose.Words также предоставляет метод [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), который позволяет нам быстро определить формат файла, не загружая документ с возможными исключениями. Этот метод возвращает объект [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/), содержащий обнаруженную информацию о типе файла.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) только проверяет формат файла, но не проверяет подлинность самого файла. Нет гарантии, что файл будет успешно открыт, даже если [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) возвращает, что это один из поддерживаемых форматов. Это происходит из-за того, что метод [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) считывает только частичные данные формата файла, достаточные для проверки формата файла, но недостаточные для полной проверки.

{{% /alert %}}

## Проверьте совместимость форматов файлов

Мы можем проверить совместимость форматов всех файлов в выбранной папке и отсортировать их по формату в соответствующие подпапки.

Поскольку мы имеем дело с содержимым папки, первое, что нам нужно сделать, это получить коллекцию всех файлов в этой папке, используя метод **listdir** модуля **os**.

В следующем примере кода показано, как получить список всех файлов в папке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Когда все файлы собраны, остальная часть работы выполняется методом [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), который проверяет формат файла.

В следующем примере кода показано, как выполнить итерацию по собранному списку файлов, проверить формат каждого файла и переместить каждый файл в соответствующую папку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Файлы перемещаются в соответствующие подпапки с помощью метода **copyfile** модуля **shutil**.

В приведенном выше примере используются следующие файлы. Название файла указано слева, а его описание - справа:

| Группа файлов | Входной документ | Тип |
| :- | :- | :- |
| Поддерживаемые форматы файлов | Test File (Doc).doc | Microsoft Word 95/6.0 или Microsoft Word 97 – документ 2003 года. |
|  | Тестовый файл (`Dot`).точка | Microsoft Word 95/6.0 или Microsoft Word 97 – шаблон 2003 года. |
|  | Test File (Docx).docx | Office Открывает XML WordprocessingML документ без макросов. |
|  | Test File (Docm).docm | Откройте в Office XML WordprocessingML документ с помощью макросов. |
|  | Test File (Dotx).dotx | Шаблон Office Open XML WordprocessingML. |
|  | Test File (Dotm).dotm | Шаблон Office Open XML WordprocessingML с макросами. |
|  | Test File (XML).xml | FlatOPC OOXML Документ. |
|  | Test File (RTF).rtf | Документ в формате Rich Text. |
|  | Test File (WordML).xml | Microsoft Word документ 2003 года WordprocessingML. |
|  | Test File (HTML).html | HTML документ. |
|  | Test File (MHTML).mhtml | MHTML документ (веб-архив). |
|  | Test File (Odt).odt | OpenDocument Текст (OpenOffice Автор). |
|  | Test File (Ott).ott | OpenDocument Шаблон документа. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 документ. |
| Зашифрованные документы | Test File (Enc).doc | Зашифрованный документ Microsoft Word 95/6.0 или Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Зашифрованный офис Открывает XML WordprocessingML документ. |
| Неподдерживаемые форматы файлов | Test File (JPG).jpg | JPEG файл изображения. |

