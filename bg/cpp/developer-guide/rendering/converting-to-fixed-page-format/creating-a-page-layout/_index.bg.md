﻿---
title: Създаване на оформление на страница в C++
second_title: Aspose.Words за C++
articleTitle: Създаване на оформление на страница
linktitle: Създаване на оформление на страница
description: "Създаването на оформление на страница може да бъде скъпа процедура. Aspose.Words ще създаде оформление на страница само когато е необходимо: да рендира страници на документи, да получи стойност на поле, да експортира документ до HTML и т.н."
type: docs
weight: 10
url: /bg/cpp/creating-a-page-layout/
timestamp: 2024-09-24-14-35-44
---

Създаването на оформление на страница може да бъде скъпа процедура, както по отношение на скоростта, така и по отношение на паметта. Това се дължи на няколко причини:

- Документът може да има голямо количество съдържание, което може да се наложи да бъде показано на хиляди страници. Геометрията на всеки обект на всяка страница ще трябва да бъде описана, отнемайки ресурси от паметта.
- Документът може да има много правила, поставящи ограничения върху геометрията. Може да се изразходва значително изчислително време, като се гарантира, че всяко ограничение е изпълнено.
- Някои функции на документа, например полето `NUMPAGES`, създават рекурсивни зависимости за бъдещи стойности на свойството, които не са налични по време на изчислението. Това води до повтарящи се изчисления и се добавя в изчислителното време.

Поради гореспоменатите причини, Aspose.Words ще създаде оформление на страница само когато е необходимо. Типична причина за това би била искане за рендиране на страници на документи или за получаване на стойност на поле, която зависи от наличната информация в оформлението на страницата. По-малко очевидна причина може да бъде експортирането на документ до HTML. Въпреки че HTML не е формат на фиксирана страница и не описва геометрията на обектите на съдържанието, той все още поддържа изображения. Такива изображения могат да бъдат под формата на фигури, създадени в Microsoft Word с текст в тях. Например диаграма с етикети на оси може да бъде експортирана в HTML като изображение, но преди това да може да бъде направено Aspose.Words трябва да направи това изображение и следователно трябва да знае къде да покаже етикета. Вижте примера с диаграмата по-долу:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Не Геометрични Свойства

В допълнение към обработката на геометрична информация, оформлението на страница също е отговорно за изчисляване на цветове и стилове на граници. В Microsoft Word цветът на текста може да бъде зададен като автоматичен, което означава, че изборът на цвят трябва да се основава на цвета на оцветяване на клетката или абзаца или на цвета на страницата, където се появява текстът.

Оформлението на страницата изчислява къде ще се появи текстът и какво съдържание ще бъде изобразено зад него, което позволява изчисляване на цветовете. Има и други специфични изчисления, извършени от оформлението на страницата. Например хоризонталната граница в таблица зависи от това дали даден ред на таблица е последен в колона с текст и дали е прекъснат в колони. Ако един ред се рендира последен в колона, се използва долната граница вместо хоризонтална.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

В Aspose.Words потребителят може да поиска да изгради ново оформление на страница или да актуализира съществуващо. И двете могат да се извършват по метода [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), предоставен от класа [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Ако оформление на страница не съществува, но има нужда от него (например, когато документът се експортира във формат на фиксирана страница), Aspose.Words автоматично ще извика този метод. Ако обаче вече съществува оформление на страница, Aspose.Words ще използва съществуващото, за да избегне изразходването на ресурсите, необходими за актуализирането му. В този случай потребителят трябва да се обади на метода `UpdatePageLayout`, за да се увери, че оформлението на страницата е актуално с модела на документа.

## Динамична Структура

Процесът на създаване на оформление на страница се състои от следните стъпки::

- *Conversion* - изброяване на съдържанието на модела на документа и подготовка на съответните обекти на оформлението.
- *Build* - подреждане на обекти за оформление, които да представят съдържанието на документа на страници.
- *Reflow* - актуализиране на подредбата на обектите, за да отговарят на геометричните ограничения.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - необходима е стъпка, ако документът съдържа фигури с вложено текстово съдържание.

Обърнете внимание, че оформлението на страницата е динамична структура, която може да бъде частично възстановена. Това е особено необходимо, когато е невъзможно да се изчислят стойностите на полетата без възстановяване на структурата на оформлението на документа. Полето може да препраща към местоположението на обект на страница и в същото време самата стойност на полето също се рендира на страницата, засягайки местоположението на реферирания обект. Оформлението на страница не може да бъде изградено наведнъж, тъй като стойностите на полетата може все още да не са налични по време на позиционирането на страницата.

Помислете за типичния сценарий, когато полето `NUMPAGES` се появи в долния колонтитул на първата страница в документа. Стойността на това поле е общият брой страници. За да позиционирате полето на страница, трябва да знаете неговата стойност. Ако в момента се изгражда само първата страница, тогава общият брой на страниците все още не е известен. В този случай оформлението на страницата трябва да използва стойността по подразбиране и по-късно да се върне в това поле и да промени стойността си според действителните изчисления. Промяната на стойността на полето обаче може да повлияе на друго съдържание на документа на страница и в крайна сметка да доведе до добавяне на нова страница или премахване на съществуваща страница, като по този начин изчислената стойност не е актуална. Този проблем може да бъде решен, като се направи възможно актуализирането на съществуващото оформление на страницата.

При създаването на оформление е възможно да се настроят [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) свойства, които влияят на изхода на документа на страниците.