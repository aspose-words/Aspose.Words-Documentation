﻿---
title: Форматиране на таблица C++
second_title: Aspose.Words за C++
articleTitle: Прилагане На Форматиране
linktitle: Прилагане На Форматиране
description: "Форматиране на таблица в детайли с C++. Използване на C++ за форматиране на всяка част от таблицата."
type: docs
weight: 70
url: /bg/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Всеки елемент от таблица може да бъде приложен с различно форматиране. Например форматирането на таблица ще бъде приложено към цялата таблица, форматирането на редове само за определени редове, форматирането на клетки само за определени клетки.

Aspose.Words осигурява богат API за извличане и прилагане на форматиране към таблица. Можете да използвате възлите [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) и [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/), за да зададете форматирането.

В тази статия ще говорим за това как да приложите форматиране към различни възли на таблицата и какви настройки за форматиране на таблица Aspose.Words поддържа.

## Прилагане на форматиране към различни възли

В този раздел ще разгледаме прилагането на форматиране към различни възли на таблицата.

### Форматиране На Ниво Таблица

За да приложите форматиране към таблица, можете да използвате свойствата, Налични в съответния **Table** възел, като използвате класовете [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) и [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Обърнете внимание, че таблицата трябва да има поне един ред, преди свойствата на таблицата могат да бъдат приложени. Това означава, че когато създавате таблица с [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), това форматиране трябва да се извърши след първото повикване до [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) или след като първият ред се добави към таблицата, или когато възлите се вмъкват директно в DOM.

{{% /alert %}}

Снимките по-долу показват представяне на **Table** форматиращи функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Следващият пример за код показва как да приложите граница на структура към таблица:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Следващият пример за код показва как да създадете таблица с разрешени всички граници (мрежа):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Форматиране На Ниво Ред

**Ниво на ред**

{{% alert color="primary" %}}

Обърнете внимание, че **Row** може да бъде само детски възел на **Table**. В същото време трябва да има поне един **Cell** в **Row**, за да може да се приложи форматиране към него.

{{% /alert %}}

Снимките по-долу показват представяне на **Row** форматиращи функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Следващият пример за код показва как да промените форматирането на реда на таблицата:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Форматиране На Ниво Клетка

Форматирането на ниво клетка се контролира от класовете [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) и [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Обърнете внимание, че **Cell** може да бъде само детски възел на **Row**. В същото време трябва да има поне един [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) в **Cell**, За да може да се приложи форматирането към него.

В допълнение към **Paragraph** Можете също да вмъкнете **Table** в **Cell**.

{{% /alert %}}

Снимките по-долу показват представяне на **Cell** форматиращи функции в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Следващият пример за код показва как да промените форматирането на клетка от таблица:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Следващият пример за код показва как да зададете размера на пространството (в точки), за да добавите към лявата/горната/дясната/долната част на съдържанието на клетката:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Задаване На Височини На Редовете

Най-лесният начин да зададете височината на реда е да използвате **DocumentBuilder**. Като използвате съответните свойства **RowFormat**, можете да зададете настройката за височина по подразбиране или да приложите различна височина за всеки ред в таблицата.

В Aspose.Words височината на реда в таблицата се контролира от:

- свойство височина на реда - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- свойството височина правило за даден ред - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

В същото време за всеки ред може да се зададе различна височина – това ви позволява широко да контролирате настройките на таблицата.

{{% alert color="primary" %}}

Опциите на правилото за определяне на височината на обект могат да бъдат зададени с помощта на изброяването [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Следващият пример за код показва как да създадете таблица, съдържаща една клетка, и да приложите форматиране на редове:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Задаване на ширина на таблица и клетка

Таблица в документ Microsoft Word предоставя няколко различни начина за преоразмеряване на таблицата и отделните клетки. Тези свойства позволяват значителен контрол върху външния вид и поведението на таблицата, така че Aspose.Words поддържа поведението на таблиците, както в Microsoft Word.

Важно е да знаете, че елементите на таблицата имат няколко различни свойства, които могат да повлияят на начина, по който се изчисляват ширините на общата таблица, както и на отделните клетки.:

- Предпочитана ширина на масата
- Предпочитана ширина на отделните клетки
- Разрешаване на автоматичното зареждане на масата

Тази статия подробно описва как работят различните свойства за изчисляване на ширината на таблицата и как да получите пълен контрол върху изчислението на ширината на таблицата. Това е
особено полезно да се знае в такива случаи, когато оформлението на таблицата не се появява, както се очаква.

{{% alert color="primary" %}}

В повечето случаи предпочитаната клетка се препоръчва от ширината на таблицата. Предпочитаната ширина на клетката е повече в съответствие със спецификацията на DOCX формат, както и модела Aspose.Words.

Ширината на клетката всъщност е изчислена стойност за формат DOCX. Действителната ширина на клетката може да зависи от много неща. Например промяната на полетата на страницата или предпочитаната ширина на таблицата може да повлияе на действителната ширина на клетката.

Предпочитаната ширина на клетка е свойство на клетка, което се съхранява в документа. Тя не зависи от нищо и не се променя, когато промените таблицата или други свойства на клетката.

{{% /alert %}}

{{% alert color="primary" %}}

Всички свойства и методи, описани в тази статия, са свързани с това как работят таблиците в Microsoft Word. Така че в повечето случаи, ако изграждате таблицата си програмно, но ви е трудно да създадете желаната таблица, можете вместо това да опитате визуално да я създадете в Microsoft Word първо и след това просто да копирате форматиращите стойности в приложението си.

{{% /alert %}}

### Как да използвате предпочитаната ширина

Желаната ширина на таблица или отделни клетки се определя чрез свойството предпочитана ширина, което е размерът, който елементът се стреми да побере. Това означава, че предпочитаната ширина може да бъде посочена за цялата таблица или за отделни клетки. В някои ситуации може да не е възможно да се побере точно тази ширина, но действителната ширина ще бъде близка до тази стойност в повечето случаи.

Подходящият предпочитан тип ширина и стойност се задават с помощта на методите на класа [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) метод за задаване на автоматична или "без предпочитана ширина"
- метод [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) за определяне на процентна ширина
- метод [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) за определяне на ширината в точки

Снимките по-долу показват представяне на *preferred width setting features* в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на картината по-долу.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Преди да можете да използвате предпочитаната ширина в таблица, трябва да се уверите, че таблицата съдържа поне един ред. Това е така, защото такова форматиране на таблица в документ Microsoft Word или в документ, създаден в Aspose.Words, се съхранява в редовете на таблицата.

{{% /alert %}}

#### Задайте предпочитаната таблица или Ширина на клетката

В Aspose.Words широчината на таблицата и клетката се определя, като се използват свойствата [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) и [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), като опциите са налични в изброяването [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/).:

- **Auto**, което е еквивалентно на не предпочитан набор от ширина
- **Percent**, който се вписва в елемента спрямо наличното пространство в размера на прозореца или контейнера и преизчислява стойността, когато наличната ширина се промени
- **Points**, което съответства на елемент с определена ширина в точки

{{% alert color="primary" %}}

По подразбиране таблицата може да бъде описана като монтирана на 100% от наличното място на страницата. В този случай това означава, че таблицата ще се опита да заеме мястото между полетата на лявата и дясната страница.

{{% /alert %}}

Използването на свойството [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) ще коригира предпочитаната ширина по отношение на контейнера: страница, текстова колона или външна клетка на таблица, ако е вложена таблица.

Следващият пример за код показва как да настроите таблицата да се побира автоматично до 50% от ширината на страницата:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Използването на свойството [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) на дадена клетка ще коригира предпочитаната ширина.

Следващият пример за код показва как да зададете различните предпочитани настройки за ширина:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Намерете предпочитан тип ширина и стойност

Можете да използвате свойствата [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) и [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/), за да намерите предпочитаната ширина на желаната таблица или клетка.

Следващият пример за код показва как да извлечете предпочитания тип ширина на клетка от таблица:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Как да зададете Автофит

Свойството [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) позволява на клетките в таблицата да растат и да се свиват според избран критерий. Например можете да използвате опцията **AutoFit to Window**, за да поберете таблицата с ширината на страницата и опцията **AutoFit to Content**, За да позволите на всяка клетка да расте или да се свива според нейното съдържание.

{{% alert color="primary" %}}

Освен това свойството **AllowAutoFit** може да се използва заедно с предпочитаната ширина на клетката, за да форматирате клетка, която автоматично отговаря на нейното съдържание, но също така има начална ширина. Ако е необходимо, ширината на клетката може след това да нарасне покрай тази ширина.

{{% /alert %}}

По подразбиране Aspose.Words вмъква нова таблица, като използва **AutoFit to Window**. Таблицата ще бъде оразмерена според наличната ширина на страницата. За да преоразмерите таблица, можете да извикате метода [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Този метод приема изброяване [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/), което указва какъв тип автофит се прилага към таблицата.

Важно е да знаете, че методът за автоматично запълване всъщност е пряк път, който прилага различни свойства към таблицата по едно и също време. Това са свойства, които всъщност дават на таблицата наблюдаваното поведение. Ще обсъдим тези свойства за всяка опция за автоматично запълване.

Следващият пример за код показва как да зададете таблица да се свива или увеличава всяка клетка според нейното съдържание:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit таблица в прозорец

Когато автоматичното поставяне в прозорец се прилага към таблица, следните операции всъщност се изпълняват зад кулисите:

1. Свойството **Table.AllowAutoFit** е разрешено за автоматично преоразмеряване на колони, за да се поберат на наличното съдържание, като се използва **Table.PreferredWidth** стойност от 100%
2. **CellFormat.PreferredWidth** се отстранява от всички клетки на таблицата
   {{% alert color="primary" %}}
   Имайте предвид, че това е малко по-различно от поведението Microsoft Word, където предпочитаната ширина на всяка клетка е зададена на подходящи стойности въз основа на текущия им размер и съдържание. Aspose.Words не актуализира предпочитаната ширина, така че те просто се изчистват вместо това.
   {{% /alert %}}
3. Ширините на колоните се преизчисляват за текущото съдържание на таблицата-крайният резултат е таблица, която заема цялата налична ширина
4. Ширината на колоните в таблицата се променя автоматично, когато потребителят редактира текста

Следващият пример за код показва как да автоматизирате таблица към ширината на страницата:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit таблица към съдържанието

Когато таблицата се зарежда автоматично съдържанието, следващите стъпки се изпълняват зад кулисите:

1. Свойството **Table.AllowAutoFit** е разрешено автоматично да преоразмерява всяка клетка според нейното съдържание

2. Предпочитаната ширина на таблицата се премахва от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се премахва за всяка клетка на таблицата
   {{% alert color="primary" %}}

   Обърнете внимание, че тази опция за автоматично запълване премахва предпочитаната ширина от клетките, точно както в Microsoft Word. Ако искате да запазите размерите на колоните и да увеличите или намалите колоните, за да се поберат в съдържанието, трябва да зададете свойството **Table.AllowAutoFit** на **True** самостоятелно, вместо да използвате прекия път за автоматично попълване.{{% /alert %}}

3. Ширините на колоните се преизчисляват за текущото съдържание на таблицата – крайният резултат е таблица, в която ширините на колоните и ширината на цялата таблица автоматично се преоразмеряват, за да отговарят най-добре на съдържанието, когато потребителят редактира текста

Следващият пример за код показва как да автоматизирате таблица към нейното съдържание:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Деактивирайте AutoFit в таблица и използвайте фиксирани ширини на колоните

Ако таблицата е забранена за автоматично попълване и вместо това се използват фиксирани ширини на колоните, се изпълняват следните стъпки::

1. **Table.AllowAutoFit** свойството е забранено, така че колоните да не растат или да се свиват до тяхното съдържание
2. Предпочитаната ширина на цялата таблица се премахва от **Table.PreferredWidth**, **CellFormat.PreferredWidth** се премахва от всички клетки на таблицата
3. Крайният резултат е таблица, чиито ширини на колоните се определят от свойството [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) и чиито колони не се преоразмеряват автоматично, когато потребителят въведе текст или когато страницата се преоразмерява

{{% alert color="primary" %}}

Обърнете внимание, че ако не е зададена ширина за **CellFormat.Width**, се използва стойността по подразбиране на един инч (72 точки).

{{% /alert %}}

Следващият пример за код показва как да забраните автоматичното зареждане и да разрешите фиксирана ширина за посочената таблица:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Ред на предимство при изчисляване на ширината на клетката

Aspose.Words позволява на потребителите да определят ширината на таблица или клетка чрез множество обекти, включително [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – нейното свойство [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) е предимно останало от предишни версии, но все още е полезно за опростяване на настройката на ширината на клетката.

Важно е да знаете, че свойство **CellFormat.Width** работи по различен начин в зависимост от това кои от другите свойства на ширината вече съществуват в таблицата.

Aspose.Words използва следния ред за изчисляване на ширината на клетките:

| Поръчка | Недвижими имоти | Описание |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) е определен | Ако **AutoFit** е активиран:<br />- таблицата може да нарасне над предпочитаната ширина, за да побере съдържанието – обикновено не се свива под предпочитаната ширина<br />- всяка промяна на **CellFormat.Width** стойност се игнорира и клетката ще се побере в съдържанието си, вместо |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) със стойност **Points** или **Percent** | **CellFormat.Width** е игнориран |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) със стойност **Auto** | Стойността от **CellFormat.Width** се копира и става предпочитаната ширина на клетката (в точки) |

{{% alert color="primary" %}}

Всички промени в свойството ширина не се актуализират в предпочитаната ширина и вместо това трябва да бъдат приложени към предпочитаната ширина.

{{% /alert %}}

{{% alert color="primary" %}}

Докато създавате оформление на фиксирана таблица, задайте ширината на клетката. Клетка без ширина не може да бъде записана във формат DOC. Форматите на документи, различни от DOC, като DOCX, по принцип позволяват записването на клетки без ширина в оформлението на фиксирана таблица.

{{% /alert %}}

## Разрешаване На Разстоянието Между Клетките

Можете да получите или зададете допълнително разстояние между клетките на таблицата, подобно на опцията "разредка на клетките" в Microsoft Word. Това може да се направи с помощта на [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) собственост.

Пример за това как тези опции се прилагат към реална таблица в документ може да се види на картината по-долу.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Следващият пример за код показва как да зададете разстоянието между клетките:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Прилагане на граници и засенчване

Границите и оцветяването могат да се прилагат или към цялата таблица, използвайки [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) и [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), или само към конкретни клетки, използващи [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) и [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Освен това границите на редовете могат да бъдат зададени с [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), но оцветяването не може да се приложи по този начин.

Снимките по-долу показват настройките за граница и сянка в Microsoft Word и съответните им свойства в Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Следващият пример за код показва как да форматирате таблица и клетка с различни граници и сенки:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}