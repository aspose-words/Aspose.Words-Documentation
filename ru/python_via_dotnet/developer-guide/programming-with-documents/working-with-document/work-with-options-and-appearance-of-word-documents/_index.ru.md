---
title: Варианты и внешний вид Word Document
second_title: Aspose.Words для Python
articleTitle: Работа с вариантами и появлением текстовых документов
linktitle: Работа с вариантами и появлением текстовых документов
description: "Контроль внешнего вида документов Word с учетом разницы между различными Microsoft Word версии, использующие Python."
type: docs
weight: 40
url: /ru/python-net/work-with-word-document-options-and-appearance/
---

Иногда может потребоваться изменить внешний вид документа, например, установить языковые предпочтения или количество строк на странице.Aspose.Words Предоставляет возможность контролировать, как будет отображаться документ, а также некоторые дополнительные опции. В этой статье описаны такие возможности.

## Установите опции отображения документов

Вы можете контролировать, как документ будет отображаться в Microsoft Word используя [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/) класс. Например, вы можете установить значение зума документа, используя [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) свойство или режим просмотра с использованием [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/) собственность.

Следующий пример кода показывает, как обеспечить, чтобы документ отображался на 50% при открытии. Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает какой-либо фактор масштабирования в документ и больше не устанавливает зум по умолчанию от значения, записанного в документ, вместо этого, похоже, используется фактор масштабирования последнего открытого документа.

{{% /alert %}}

## Настройка опций Page Display

Если вы хотите установить количество символов в строке, используйте [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/) собственность. Вы также можете установить количество строк на странице для документа Word. [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) свойство получать или устанавливать количество строк на странице в сетке документов.

{{% alert color="primary" %}}

В Microsoft Word, Вы можете установить те же параметры, используя вкладку "Сетка документов" в диалоговом окне "Настройка страницы" только при установке поддержки азиатского языка.

{{% /alert %}}

Следующий пример кода показывает, как установить количество символов на строку и количество строк на странице для Microsoft Word документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Установите языковые предпочтения

Отображение документа в Microsoft Word Зависит от того, какие языки установлены по умолчанию для данного документа. Если языки не установлены по умолчанию, Microsoft Word берет информацию из диалогового окна "Настройка языковых предпочтений Office", которое, например, можно найти в разделе "Файл → Варианты → Язык" Microsoft Word 2019.

С Aspose.Words, Вы также можете настроить языковые предпочтения, используя [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/) класс. Также обратите внимание, что для правильного отображения вашего документа необходимо установить Microsoft Word версия о том, что процесс загрузки документа должен совпадать – это можно сделать с помощью [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) собственность.

{{% alert color="primary" %}}

Если вы Aspose.Words Созданный документ выглядит не так, как ожидалось, проверьте [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) и [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) Значения и настройте их, если это необходимо, чтобы соответствовать настройкам для вашего Microsoft Word Версия.

{{% /alert %}}

Следующий пример кода показывает, как добавить японский в языки редактирования:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

Следующий пример кода показывает, как установить русский язык редактирования по умолчанию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Оптимизируйте документ для конкретного Версия Word

The [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) Способ позволяет оптимизировать содержание документа, а также по умолчанию Aspose.Words Поведение для конкретной версии Microsoft Word. Вы можете использовать этот метод для предотвращения Microsoft Word от отображения ленты "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) имущество [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) или выше.

Следующий пример кода показывает, как оптимизировать содержание документа для: Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
