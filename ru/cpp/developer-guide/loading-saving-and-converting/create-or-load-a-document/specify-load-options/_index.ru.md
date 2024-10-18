---
title: Укажите параметры загрузки на C++
second_title: Aspose.Words для C++
articleTitle: Укажите параметры загрузки
linktitle: Укажите параметры загрузки
description: "Более точно контролируйте процесс загрузки."
type: docs
weight: 10
url: /ru/cpp/specify-load-options/
---

При загрузке документа вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет вам класс [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), который позволяет более точно управлять процессом загрузки. У некоторых загружаемых форматов есть соответствующий класс, который содержит параметры загрузки для этого загружаемого формата, например, есть [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) для загрузки в формат PDF или [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) для загрузки в TXT. В этой статье приведены примеры работы с параметрами класса **LoadOptions**.

## Установите версию Microsoft Word, чтобы изменить внешний вид

Различные версии приложения Microsoft Word могут отображать документы по-разному. Например, существует хорошо известная проблема с документами OOXML, такими как DOCX или DOTX, созданными с использованием WPS Office. В таком случае основные элементы разметки документа могут отсутствовать или интерпретироваться по-другому, что приводит к тому, что Microsoft Word 2019 отображает такой документ иначе, чем Microsoft Word 2010.

По умолчанию Aspose.Words открывает документы с использованием правил Microsoft Word 2019. Если вам нужно, чтобы загрузка документов происходила так, как это происходило бы в одной из предыдущих версий приложения Microsoft Word, вам следует явно указать желаемую версию, используя свойство [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) класса **LoadOptions**.

В следующем примере кода показано, как установить версию Microsoft Word с параметрами загрузки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Установите языковые настройки, чтобы изменить внешний вид

Особенности отображения документа в Microsoft Word зависят не только от версии приложения и значения параметра **MswVersion**, но и от языковых настроек. В Microsoft Word документы могут отображаться по-разному в зависимости от настроек диалогового окна "Языковые настройки Office", которые можно найти в разделе "Файл → Параметры → Язык". Используя это диалоговое окно, пользователь может выбрать, например, основной язык, языки проверки подлинности, языки отображения и т.д. Aspose.Words предоставляет свойство [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) в качестве эквивалента этого диалогового окна. Если выходные данные Aspose.Words отличаются от выходных данных Microsoft Word, установите соответствующее значение для **EditingLanguage** – это может улучшить качество выходного документа.

В следующем примере кода показано, как задать японский язык как **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Используйте WarningCallback для устранения проблем при загрузке документа

Некоторые документы могут быть повреждены, содержать недопустимые записи или содержать функции, которые в настоящее время не поддерживаются Aspose.Words. Если вы хотите узнать о проблемах, возникших при загрузке документа, Aspose.Words предоставляет интерфейс [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

В следующем примере кода показана реализация интерфейса **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Чтобы получить информацию обо всех проблемах во время загрузки, используйте свойство `WarningCallback`.

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Используйте ResourceLoadingCallback для управления загрузкой внешних ресурсов

Документ может содержать внешние ссылки на изображения, расположенные где-либо на локальном диске, в сети или в Интернете. Aspose.Words такие изображения автоматически загружаются в документ, но бывают ситуации, когда этот процесс необходимо контролировать. Например, чтобы решить, действительно ли нам нужно загружать определенное изображение или, возможно, пропустить его. Опция загрузки ResourceLoadingCallback позволяет вам управлять этим.

В следующем примере кода показана реализация интерфейса IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

В следующем примере кода показано, как использовать свойство **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Используйте TempFolder, чтобы избежать исключения из памяти

Aspose.Words поддерживает очень большие документы, содержащие тысячи страниц с богатым содержанием. Для загрузки таких документов может потребоваться много оперативной памяти. В процессе загрузки Aspose.Words требуется еще больше памяти для хранения временных структур, используемых для синтаксического анализа документа.

Если при загрузке документа у вас возникла проблема с исключением "Нехватка памяти", попробуйте использовать свойство [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). В этом случае Aspose.Words сохранит некоторые данные во временных файлах вместо памяти, и это может помочь избежать такого исключения.

В следующем примере кода показано, как установить **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Задайте кодировку явно

Большинство современных форматов документов хранят свое содержимое в Юникоде и не требуют специальной обработки. С другой стороны, все еще существует множество документов, в которых используется некоторая кодировка, предшествовавшая Юникоду, и иногда либо отсутствует информация о кодировке, либо она даже не поддерживается по своей природе. Aspose.Words пытается автоматически определить соответствующую кодировку по умолчанию, но в редких случаях вам может потребоваться использовать кодировку, отличную от той, которая определяется нашим алгоритмом распознавания кодировок. В этом случае используйте свойство [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/), чтобы получить или задать кодировку.

В следующем примере кода показано, как настроить кодировку таким образом, чтобы она переопределяла автоматически выбранную кодировку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Загружайте зашифрованные документы

Вы можете загружать документы Word, зашифрованные паролем. Для этого используйте специальный конструктор overload, который принимает объект [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Этот объект содержит свойство [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), которое определяет строку пароля.

В следующем примере кода показано, как загрузить документ, зашифрованный паролем:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Если вы заранее не знаете, зашифрован ли файл, вы можете использовать класс [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), который предоставляет служебные методы для работы с форматами файлов, такие как определение формата файла или преобразование расширений файлов в/из перечислений форматов файлов. Чтобы определить, зашифрован ли документ и требуется ли пароль для его открытия, используйте свойство `IsEncrypted`.

В следующем примере кода показано, как проверить, зашифрован OpenDocument или нет:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
