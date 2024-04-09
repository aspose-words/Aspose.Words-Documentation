---
title: Укажите варианты загрузки в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите варианты загрузки
linktitle: Укажите варианты загрузки
description: "Более точно контролировать процесс нагрузки с помощью Python."
type: docs
weight: 10
url: /ru/python-net/specify-load-options/
---

При загрузке документа вы можете установить некоторые расширенные свойства. Aspose.Words Предоставляет вам [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) класс, что позволяет более точно контролировать процесс нагрузки. Некоторые форматы нагрузки имеют соответствующий класс, который содержит параметры нагрузки для этого формата нагрузки, например, есть [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для загрузки в TXT. В этой статье приведены примеры работы с вариантами [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) класс.

## Настройка Microsoft Word Версия для изменения внешнего вида

Различные версии Microsoft Word Приложение может отображать документы по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX. DOTX производится с использованием WPS Office. В этом случае существенные элементы разметки документа могут отсутствовать или могут быть истолкованы по-разному. Microsoft Word 2019 год покажет такой документ по-другому Microsoft Word 2010.

По умолчанию Aspose.Words Открытие документов с использованием Microsoft Word Правила 2019 года. Если вам нужно сделать загрузку документа такой, как это произошло бы в одном из предыдущих Microsoft Word версии приложения, вы должны явно указать желаемую версию, используя [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) имуществом, [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) класс.

Следующий пример кода показывает, как установить Microsoft Word Версия с опциями загрузки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Установите языковые предпочтения для изменения внешнего вида

Подробности отображения документа в Microsoft Word зависит не только от версии приложения, но и от [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) Значение свойств, но и на языковых настройках. Microsoft Word Документы могут отображаться по-разному в зависимости от настроек диалога "Офисные языковые предпочтения", которые можно найти в "Файл → Варианты → Лангуаге". Используя этот диалог, пользователь может выбрать, например, основной язык, языки проверки, языки отображения и так далее. Aspose.Words обеспечивает [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) Свойство как эквивалент этого диалога. Если Aspose.Words выход отличается от Microsoft Word на выходе, установить соответствующее значение для [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) Это может улучшить выходной документ.

Следующий пример кода показывает, как установить японский язык как [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Используйте TempFolder, чтобы избежать исключения памяти

Aspose.Words Поддерживает очень большие документы, которые имеют тысячи страниц с богатым содержанием. Загрузка таких документов может потребовать много оперативной памяти. В процессе загрузки, Aspose.Words Для хранения временных структур, используемых для разбора документа, требуется еще больше памяти.

Если у вас есть проблема с исключением из памяти при загрузке документа, попробуйте использовать [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/) собственность. В этом случае, Aspose.Words Некоторые данные будут храниться во временных файлах вместо памяти, и это может помочь избежать такого исключения.

Следующий пример кода показывает, как установить [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Настройка кодирования эксплицитно

Большинство современных форматов документов хранят свой контент в Unicode и не требуют специальной обработки. С другой стороны, есть еще много документов, которые используют некоторое предварительное кодирование Unicode и иногда либо пропускают информацию кодирования, либо даже не поддерживают информацию кодирования по своей природе. Aspose.Words Он пытается автоматически обнаружить соответствующее кодирование по умолчанию, но в редких случаях вам может потребоваться использовать кодирование, отличное от того, которое обнаружено нашим алгоритмом распознавания кодирования. В этом случае используйте [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) свойство получать или устанавливать кодировку.

Следующий пример кода показывает, как установить кодирование, чтобы переопределить автоматически выбранное кодирование:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Зашифрованные документы Load

Вы можете загрузить Документы Word зашифрованы паролем. Для этого используют специальный конструктор перегрузки, который принимает [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) объект. Этот объект содержит [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/) свойство, которое определяет строку пароля.

Следующий пример кода показывает, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Если вы не знаете заранее, зашифрован ли файл, вы можете использовать [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/) класс, который предоставляет утилиты для работы с форматами файлов, такими как обнаружение формата файла или преобразование расширений файла в/из перечислений формата файла. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, используйте [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/) собственность.

Следующий пример кода показывает, как проверить документ, зашифрован он или нет:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
