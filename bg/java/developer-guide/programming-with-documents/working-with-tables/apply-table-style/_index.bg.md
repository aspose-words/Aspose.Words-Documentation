---
title: Работа със стилове в масата Java
second_title: Aspose.Words вместо Java
articleTitle: Прилагане на стил на таблица
linktitle: Прилагане на стил на таблица
description: "Разширено форматиране на таблицата Java. Създаване на стил на таблица с помощта Java. Въведение в напреднал форматиране на таблица, стилове на таблица, използвайки Java."
type: docs
weight: 80
url: /bg/java/working-with-tablestyle/
---

Стил на таблица определя набор от форматиране, което може лесно да се приложи към таблица. Форматирането като граници, засенчване, подравняване и шрифт може да се постави в стил маса и да се приложи към много таблици за последователен външен вид.

Aspose.Words поддържа прилагането на стил маса към маса и също така четене свойства на всяка таблица стил. Стиловете на таблиците се запазват по време на товарене и спестяване по следните начини:

- Table styles in DOCX and WordML формати са запазени при зареждане и запис към тези формати
- Стиловете на таблица се запазват при зареждане и запис във формат DOC (но не и в друг формат)
- При износ към други формати, обработка или печат, стиловете на масата се разширяват до директно форматиране в таблицата, така че всички форматиране се запазва

## Създаване на стил на таблица

Потребителят може да създаде нов стил и да го добави към колекцията стил. На [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) метод се използва за създаване на нов стил маса.

Следният пример за код показва как да се създаде нов потребителски дефиниран стил на таблица:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Копиране на съществуващ стил на таблица

Ако е необходимо, можете да копирате стил таблица, която вече съществува в определен документ в колекцията си стил с помощта на `AddCopy` метод.

Важно е да знаете, че с това копиране, свързаните стилове също се копират.

Следният пример за код показва как се внася стил от един документ в друг документ:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Прилагане на съществуващ стил на таблица

Aspose.Words осигурява [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) наследени от [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) Клас. **TableStyle** улеснява потребителя да прилага различни опции стил като shading, подплънки, вдлъбнатини, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) както и [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), и т.н.

Освен това, Aspose.Words осигурява [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) клас и няколко свойства на `Table` клас за уточняване на стила на масата, с който ще работим: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), както и [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words също така предвижда [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) клас, който представлява специален форматиране, приложен към част от таблица с определен стил на таблица, и [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) което представлява колекция от **ConditionalStyle** Обекти. Тази колекция съдържа постоянен набор от елементи, представляващи един елемент за всяка стойност на [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) тип изброяване. На **ConditionalStyleType** Изброяването определя всички възможни зони на таблицата, за които може да се определи условно форматиране в стил на таблица.

В този случай условното форматиране може да бъде определено за всяка възможна таблица, определена в Условния тип "Стил."

Следният пример за код показва как да се дефинира условно форматиране на заглавния ред на таблицата:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Можете също така да изберете коя таблица части да се прилагат стилове, като например първата колона, последната колона, ленти редове. Те са изброени в [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) изброяване и се прилагат чрез [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) собственост. На **TableStyleOptions** изброяването позволява малко комбинация от тези функции.

Следният пример за код показва как да се създаде нова таблица с приложен стил на таблица:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Снимките по-долу показват представяне на **Table Styles** в Microsoft Word и съответните им свойства в Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Вземете форматиране от стила на таблица и го нанесете като директно форматиране

Aspose.Words и осигурява [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) метод за вземане на форматиране намерени в стил маса и го разширява върху редовете и клетките на таблицата като пряко форматиране. Опитайте се да комбинирате форматиране със стил маса и мобилен стил.

{{% alert color="primary" %}}

Този метод няма да отмени други форматиране вече приложени към таблицата чрез ред или формат клетка.

{{% /alert %}}

Следният пример за код показва как да се разшири форматирането от стилове върху редове на таблица и клетки като пряко форматиране:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}