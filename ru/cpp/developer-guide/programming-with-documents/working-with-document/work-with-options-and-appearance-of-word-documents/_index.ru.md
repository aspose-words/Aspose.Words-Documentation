---
title: Параметры и внешний вид документов Word
second_title: Aspose.Words для C++
articleTitle: Работа с параметрами и внешним видом документов Word
linktitle: Работа с параметрами и внешним видом документов Word
description: "Контролируйте внешний вид документов Word с учетом различий между различными версиями Microsoft Word."
type: docs
weight: 40
url: /ru/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Иногда вам может потребоваться изменить внешний вид документа, например, задать языковые настройки или количество строк на странице. Aspose.Words предоставляет возможность управлять тем, как будет отображаться документ, а также некоторые дополнительные опции. В этой статье описываются такие возможности.

## Установите параметры отображения документа

Вы можете управлять отображением документа в Microsoft Word, используя класс [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Например, вы можете задать величину масштабирования документа, используя свойство [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/), или режим просмотра, используя свойство [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

В следующем примере кода показано, как обеспечить отображение документа на 50% при открытии в Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает в документ никакого коэффициента масштабирования и больше не устанавливает масштаб по умолчанию на основе значения, записанного в документе, вместо этого, похоже, используется коэффициент масштабирования последнего открытого документа.

{{% /alert %}}

## Установите параметры отображения страницы

Если вы хотите задать количество символов в строке, используйте свойство [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Вы также можете задать количество строк на странице для документа Word – используйте свойство [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/), чтобы получить или задать количество строк на странице в таблице документа.

{{% alert color="primary" %}}

В Microsoft Word вы можете задать те же параметры, используя вкладку "Таблица документов" в диалоговом окне "Настройка страницы", только если установлена поддержка азиатского языка.

{{% /alert %}}

В следующем примере кода показано, как задать количество символов в строке и количество строк на странице для документа Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Установите языковые настройки

Отображение документа в Microsoft Word зависит от того, какие языки установлены для этого документа по умолчанию. Если языки по умолчанию не заданы, Microsoft Word использует информацию из диалогового окна "Настройка языковых настроек Office", которое, например, можно найти в разделе "Файл → Параметры → язык" в Microsoft Word 2019.

С помощью Aspose.Words вы также можете настроить языковые настройки, используя класс [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Также обратите внимание, что для корректного отображения вашего документа необходимо установить версию Microsoft Word, которой должен соответствовать процесс загрузки документа – это можно сделать с помощью свойства [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Если созданный вами документ Aspose.Words выглядит не так, как ожидалось, проверьте значения **LanguagePreferences** и **MswVersion** и при необходимости измените их в соответствии с настройками вашей версии Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как добавить японский язык в список языков редактирования:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

В следующем примере кода показано, как установить русский язык редактирования по умолчанию:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Оптимизируйте документ для конкретной версии Word

Метод [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) позволяет оптимизировать содержимое документа, а также поведение по умолчанию Aspose.Words для конкретной версии Microsoft Word. Вы можете использовать этот метод, чтобы запретить Microsoft Word отображать ленту "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить для свойства `Compliance` значение Iso29500_2008_Transitional или выше.

В следующем примере кода показано, как оптимизировать содержимое документа для Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
