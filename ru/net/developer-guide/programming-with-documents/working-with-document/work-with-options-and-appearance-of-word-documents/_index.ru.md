---
title: Параметры и внешний вид документа Word
second_title: Aspose.Words для .NET
articleTitle: Работа с параметрами и внешним видом документов Word
linktitle: Работа с параметрами и внешним видом документов Word
description: "Управляйте внешним видом документов Word, учитывая разницу между различными версиями Microsoft Word, используя C#."
type: docs
weight: 40
url: /ru/net/work-with-word-document-options-and-appearance/
---

Иногда может потребоваться изменить внешний вид документа, например, установить языковые настройки или количество строк на странице. Aspose.Words предоставляет возможность контролировать способ отображения документа, а также некоторые дополнительные параметры. В этой статье описаны такие возможности.

## Установите параметры отображения документа

Вы можете управлять тем, как документ будет отображаться в Microsoft Word, используя класс [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Например, вы можете установить значение масштабирования документа, используя свойство [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/), или режим просмотра, используя свойство [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

В следующем примере кода показано, как обеспечить отображение документа на 50 % при открытии в Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона для этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 не записывает в документ какой-либо коэффициент масштабирования и больше не устанавливает масштаб по умолчанию на основе значения, записанного в документ; вместо этого, похоже, используется коэффициент масштабирования последнего открытого документа.

{{% /alert %}}

## Установить параметры отображения страницы

Если вы хотите установить количество символов в строке, используйте свойство [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Вы также можете установить количество строк на страницу для документа Word — используйте свойство [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/), чтобы получить или установить количество строк на страницу в сетке документа.

{{% alert color="primary" %}}

В Microsoft Word эти же параметры можно задать с помощью вкладки "Сетка документа" в диалоговом окне "Параметры страницы" только при установленной поддержке азиатских языков.

{{% /alert %}}

В следующем примере кода показано, как установить количество символов в строке и количество строк на странице для документа Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Установить языковые настройки

Отображение документа в Microsoft Word зависит от того, какие языки установлены по умолчанию для этого документа. Если по умолчанию языки не установлены, Microsoft Word берет информацию из диалогового окна "Установить языковые настройки Office", которое, например, можно найти в разделе "Файл → Параметры → Язык" в Microsoft Word 2019.

С помощью Aspose.Words вы также можете настроить языковые предпочтения, используя класс [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Также обратите внимание, что для корректного отображения вашего документа необходимо установить версию Microsoft Word, которой должен соответствовать процесс загрузки документа – это можно сделать с помощью свойства [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Если созданный вами документ Aspose.Words выглядит не так, как ожидалось, проверьте значения **LanguagePreferences** и **MswVersion** и при необходимости откорректируйте их, чтобы они соответствовали настройкам вашей версии Microsoft Word.

{{% /alert %}}

В следующем примере кода показано, как добавить японский язык к языкам редактирования:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

В следующем примере кода показано, как установить русский язык в качестве языка редактирования по умолчанию:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Оптимизация документа для конкретной версии Word

Метод [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) позволяет оптимизировать содержимое документа, а также поведение Aspose.Words по умолчанию для конкретной версии Microsoft Word. Вы можете использовать этот метод, чтобы запретить Microsoft Word отображать ленту "Режим совместимости" при загрузке документа. Обратите внимание, что вам также может потребоваться установить для свойства `Compliance` значение Iso29500_2008_Transitional или выше.

В следующем примере кода показано, как оптимизировать содержимое документа для Microsoft Word 2016 г.:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
