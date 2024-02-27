---
title: Параметры и внешний вид документа Word
second_title: Aspose.Words за Python
articleTitle: Работа с параметрами и внешним видом документов Word
linktitle: Работа с параметрами и внешним видом документов Word
description: "Управляйте внешним видом документов Word с учетом разницы между различными версиями Microsoft Word с помощью Python."
type: docs
weight: 40
url: /ru/python-net/work-with-word-document-options-and-appearance/
---

Иногда вам может потребоваться изменить внешний вид документа, например, установить языковые настройки или количество строк на странице. Aspose.Words предоставляет возможность управлять тем, как будет отображаться документ, а также некоторые дополнительные параметры. В этой статье описаны такие возможности.

## Установите параметры отображения документа

Вы можете управлять тем, как документ будет отображаться в Microsoft Word, используя класс [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Например, вы можете установить значение масштаба документа, используя свойство [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/), или режим просмотра, используя свойство [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

В следующем примере кода показано, как обеспечить отображение документа на 50 % при открытии в Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает в документ какой-либо коэффициент масштабирования и больше не устанавливает масштаб по умолчанию на основе значения, записанного в документ; вместо этого, похоже, используется коэффициент масштабирования последнего открытого документа.

{{% /alert %}}

## Установить параметры отображения страницы

Если вы хотите установить количество символов в строке, используйте свойство [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). Вы также можете установить количество строк на страницу для документа Word — используйте свойство [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/), чтобы получить или установить количество строк на страницу в сетке документа.

{{% alert color="primary" %}}

В Microsoft Word эти же параметры можно задать с помощью вкладки "Сетка документа" в диалоговом окне "Параметры страницы" только при установленной поддержке азиатских языков.

{{% /alert %}}

В следующем примере кода показано, как установить количество символов в строке и количество строк на странице для документа Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Установить языковые настройки

Отображение документа в Microsoft Word зависит от того, какие языки установлены по умолчанию для этого документа. Если по умолчанию языки не установлены, Microsoft Word берет информацию из диалогового окна "Установить языковые настройки Office", которое, например, можно найти в разделе "Файл → Параметры → Язык" в Microsoft Word 2019.

С помощью Aspose.Words вы также можете настроить языковые предпочтения, используя класс [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). Также обратите внимание, что для корректного отображения вашего документа необходимо установить версию Microsoft Word, которой должен соответствовать процесс загрузки документа – это можно сделать с помощью свойства [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Если созданный вами документ Aspose.Words выглядит не так, как ожидалось, проверьте значения [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) и [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) и при необходимости откорректируйте их, чтобы они соответствовали настройкам вашей версии Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как добавить японский язык к языкам редактирования:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

В следующем примере кода показано, как установить русский язык в качестве языка редактирования по умолчанию:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Оптимизация документа для конкретной версии Word

Метод [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) позволяет оптимизировать содержимое документа, а также поведение Aspose.Words по умолчанию для конкретной версии Microsoft Word. Вы можете использовать этот метод, чтобы запретить Microsoft Word отображать ленту "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить для свойства [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) значение [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) или выше.

В следующем примере кода показано, как оптимизировать содержимое документа для Microsoft Word 2016 г.:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
