---
title: Параметры и внешний вид документа Word
second_title: Aspose.Words для Python
articleTitle: Работа с параметрами и внешним видом документов Word
linktitle: Работа с параметрами и внешним видом документов Word
description: "Управляйте внешним видом документов Word с учетом различий между различными версиями Microsoft Word с помощью Python."
type: docs
weight: 40
url: /ru/python-net/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться изменить внешний вид документа, например, задать языковые настройки или количество строк на странице. Aspose.Words предоставляет возможность управлять тем, как будет отображаться документ, а также некоторые дополнительные опции. В этой статье описываются такие возможности.

## Установите параметры отображения документа

Вы можете управлять отображением документа в Microsoft Word с помощью класса [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Например, вы можете задать величину масштабирования документа, используя свойство [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/), или режим просмотра, используя свойство [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

В следующем примере кода показано, как обеспечить отображение документа на 50% при открытии в Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает в документ никакого коэффициента масштабирования и больше не устанавливает масштаб по умолчанию на основе значения, записанного в документе, вместо этого, похоже, используется коэффициент масштабирования последнего открытого документа.

{{% /alert %}}

## Установите параметры отображения страницы

Если вы хотите задать количество символов в строке, используйте свойство [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). Вы также можете задать количество строк на странице для документа Word – используйте свойство [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/), чтобы получить или задать количество строк на странице в таблице документа.

{{% alert color="primary" %}}

В Microsoft Word вы можете задать те же параметры, используя вкладку "Таблица документов" в диалоговом окне "Настройка страницы", только если установлена поддержка азиатского языка.

{{% /alert %}}

В следующем примере кода показано, как задать количество символов в строке и количество строк на странице для документа Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Установите языковые настройки

Отображение документа на Microsoft Word зависит от того, какие языки установлены по умолчанию для этого документа. Если по умолчанию не заданы языки, Microsoft Word использует информацию из диалогового окна "Настройка языковых настроек Office", которое, например, можно найти в разделе "Файл → Параметры → язык" в Microsoft Word 2019 году.

С помощью Aspose.Words вы также можете настроить языковые настройки, используя класс [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). Также обратите внимание, что для корректного отображения вашего документа необходимо установить версию Microsoft Word, которой должен соответствовать процесс загрузки документа – это можно сделать с помощью свойства [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Если созданный вами документ Aspose.Words выглядит не так, как ожидалось, проверьте значения [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) и [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) и при необходимости скорректируйте их в соответствии с настройками для вашей версии Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как добавить японский язык в список языков редактирования:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

В следующем примере кода показано, как установить русский язык редактирования по умолчанию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Оптимизируйте документ для конкретной версии Word

Метод [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) позволяет оптимизировать содержимое документа, а также поведение Aspose.Words по умолчанию для конкретной версии Microsoft Word. Вы можете использовать этот метод, чтобы предотвратить отображение Microsoft Word ленты "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить для свойства [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) значение [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) или выше.

В следующем примере кода показано, как оптимизировать содержимое документа для Microsoft Word 2016 года:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
