---
title: Определить формат файла при загрузке
second_title: Aspose.Words для Python via .NET
articleTitle: Определить формат файла и проверить совместимость форматов
linktitle: Определить формат файла и проверить совместимость форматов
description: "Определите формат файла в Python, если вы не уверены в фактическом содержимом файла или чтобы проверить совместимость формата."
type: docs
weight: 20
url: /ru/python-net/detect-file-format-and-check-format-compatibility/
---

Иногда перед открытием необходимо определить формат документа, поскольку расширение файла не гарантирует правильность содержимого файла. Например, известно, что Crystal Reports часто выводит документы в формате RTF, но присваивает им расширение .doc.

Aspose.Words предоставляет возможность получить информацию о типе файла, чтобы избежать исключения, если вы не уверены в фактическом содержимом файла.

## Определить формат файла без исключения

Когда вы имеете дело с несколькими документами в различных форматах файлов, вам может потребоваться отделить те файлы, которые может обрабатывать Aspose.Words, от тех, которые не могут. Вы также можете узнать, почему некоторые документы не могут быть обработаны.

Если вы попытаетесь загрузить файл в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), а Aspose.Words не может распознать формат файла или формат не поддерживается, Aspose.Words выдаст исключение. Вы можете перехватить эти исключения и проанализировать их, но Aspose.Words также предоставляет метод [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), который позволяет нам быстро определить формат файла, не загружая документ с возможными исключениями. Этот метод возвращает объект [FileFormatInfo](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/), содержащий обнаруженную информацию о типе файла.

{{% alert color="primary" %}}

[detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) проверяет только формат файла, но не проверяет формат файла. Нет никакой гарантии, что файл будет успешно открыт, даже если [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) вернет, что это один из поддерживаемых форматов. Это связано с тем, что метод [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/) считывает только частичные данные формата файла, достаточные для проверки формата файла, но недостаточные для полной проверки.

{{% /alert %}}

## Проверьте совместимость формата файлов

Мы можем проверить совместимость формата всех файлов в выбранной папке и отсортировать их по формату в соответствующие подпапки.

Поскольку мы имеем дело с содержимым в папке, первое, что нам нужно сделать, это получить коллекцию всех файлов в этой папке, используя метод **списоккаталог** модуля **Операционные системы**.

В следующем примере кода показано, как получить список всех файлов в папке:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-GetListOfFilesInFolder.py" >}}

Когда все файлы собраны, остальную работу выполняет метод [detect_file_format](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/detect_file_format/), проверяющий формат файла.

В следующем примере кода показано, как перебирать собранный список файлов, проверять формат каждого файла и перемещать каждый файл в соответствующую папку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-CheckFormatCompatibility.py" >}}

Файлы перемещаются в соответствующие подпапки с помощью метода **копировать файл** модуля **шатил**.

В приведенном выше примере используются следующие файлы. Имя файла находится слева, а его описание справа:

| Group файлов | Входной документ | Тип |
|  :-  |  :-  |  :-  |
| Поддерживаемые форматы файлов | Тестовый файл (Doc).doc | Microsoft Word 95/6,0 или Microsoft Word 97 – документ 2003 г. |
| | Тестовый файл (Dot).dot | Шаблон Microsoft Word 95/6,0 или Microsoft Word 97 – 2003. |
| | Тестовый файл (Docx).docx | Документ Office Open XML WordprocessingML без макросов. |
| | Тестовый файл (Docm).docm | Документ Office Open XML WordprocessingML с макросами. |
| | Тестовый файл (Dotx).dotx | Шаблон Office Open XML WordprocessingML. |
| | Тестовый файл (Dotm).dotm | Шаблон Office Open XML WordprocessingML с макросами. |
| | Тестовый файл (XML).xml | Документ FlatOPC OOXML. |
| | Тестовый файл (RTF).rtf | Документ в формате Rich Text. |
| | Тестовый файл (WordML).xml | Microsoft Word Документ WordprocessingML 2003 г. |
| | Тестовый файл (HTML).html | HTML-документ. |
| | Тестовый файл (MHTML).mhtml | Документ MHTML (веб-архив). |
| | Тестовый файл (Odt).odt | Текст OpenDocument (OpenOffice Writer). |
| | Тестовый файл (Ott).ott | Шаблон документа OpenDocument. |
| | Тестовый файл (DocPreWord60).doc | Документ Microsoft Word 2.0. |
| Зашифрованные документы | Тестовый файл (Enc).doc | Зашифрованный документ Microsoft Word 95/6.0 или Microsoft Word 97 – 2003 г. |
| | Тестовый файл (Enc).docx | Зашифрованный документ Office Open XML WordprocessingML. |
| Неподдерживаемые форматы файлов | Тестовый файл (JPG).jpg | Файл изображения JPEG. |

