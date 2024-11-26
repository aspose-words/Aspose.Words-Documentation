---
title: Укажите параметры загрузки в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Укажите параметры загрузки
linktitle: Укажите параметры загрузки
description: "Более точно управляйте процессом загрузки, используя Python."
type: docs
weight: 10
url: /ru/python-net/specify-load-options/
timestamp: 2024-01-27-14-07-04
---

При загрузке документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), который позволяет более точно управлять процессом загрузки. Некоторым форматам загрузки соответствует класс, который содержит параметры загрузки для этого формата загрузки, например, есть [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) для загрузки в формат TXT. В этой статье приведены примеры работы с параметрами класса [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Установите версию Microsoft Word, чтобы изменить внешний вид

Различные версии приложения Microsoft Word могут отображать документы по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX или DOTX, созданными с помощью WPS Office. В таком случае основные элементы разметки документа могут отсутствовать или интерпретироваться по-другому, что приводит к тому, что в Microsoft Word 2019 такой документ отображается иначе, чем в Microsoft Word 2010.

По умолчанию Aspose.Words открывает документы по правилам Microsoft Word 2019 года. Если вам нужно, чтобы загрузка документов происходила так, как это происходило бы в одной из предыдущих версий приложения Microsoft Word, вам следует явно указать желаемую версию, используя свойство [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) класса [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

В следующем примере кода показано, как установить версию Microsoft Word с параметрами загрузки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Установите языковые настройки, чтобы изменить внешний вид

Особенности отображения документа в Microsoft Word зависят не только от версии приложения и значения свойства [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/), но и от языковых настроек. Microsoft Word документы могут отображаться по-разному в зависимости от настроек диалогового окна "Языковые настройки Office", которые можно найти в разделе "Файл → Параметры → Язык". С помощью этого диалогового окна пользователь может выбрать, например, основной язык, языки проверки подлинности, языки отображения и так далее. Aspose.Words предоставляет свойство [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) в качестве эквивалента этого диалогового окна. Если выходные данные Aspose.Words отличаются от выходных данных Microsoft Word, установите соответствующее значение для [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – это может улучшить качество выходного документа.

В следующем примере кода показано, как задать японский язык как [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Используйте TempFolder, чтобы избежать исключения из памяти

Aspose.Words поддерживает чрезвычайно большие документы, содержащие тысячи страниц с богатым содержанием. Загрузка таких документов может потребовать значительных затрат RAM. В процессе загрузки Aspose.Words требуется еще больше памяти для хранения временных структур, используемых для синтаксического анализа документа.

Если при загрузке документа возникает проблема с исключением "Нехватка памяти", попробуйте использовать свойство [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). В этом случае Aspose.Words сохранит некоторые данные во временных файлах вместо памяти, и это может помочь избежать такого исключения.

В следующем примере кода показано, как установить [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Задайте кодировку явно

Большинство современных форматов документов хранят свое содержимое в Юникоде и не требуют специальной обработки. С другой стороны, все еще существует множество документов, в которых используется некоторая кодировка, предшествовавшая Юникоду, и иногда либо отсутствует информация о кодировке, либо она даже не поддерживается по своей природе. Aspose.Words пытается автоматически определить соответствующую кодировку по умолчанию, но в редких случаях вам может потребоваться использовать кодировку, отличную от той, которая определяется нашим алгоритмом распознавания кодировок. В этом случае используйте свойство [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/), чтобы получить или задать кодировку.

В следующем примере кода показано, как настроить кодировку таким образом, чтобы она переопределяла автоматически выбранную кодировку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Загружайте зашифрованные документы

Вы можете загружать документы Word, зашифрованные паролем. Для этого используйте специальный конструктор overload, который принимает объект [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Этот объект содержит свойство [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), которое определяет строку пароля.

В следующем примере кода показано, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать класс [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), который предоставляет служебные методы для работы с форматами файлов, такие как определение формата файла или преобразование расширений файлов в/из перечислений форматов файлов. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, используйте свойство [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

В следующем примере кода показано, как проверить, зашифрован документ или нет:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
