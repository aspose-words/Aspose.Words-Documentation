---
title: Изисквания към паметта
second_title: Aspose.Words вместо Java
articleTitle: Изисквания към паметта
linktitle: Изисквания към паметта
description: "Колко памет прави Aspose.Words вместо Java изискват да се работи с документи? Научи подробностите."
type: docs
weight: 10
url: /bg/java/memory-requirements/
---

Aspose.Words осигурява широка гама от функции за работа с документи в различни формати. Важно е да се отбележи, че няма ограничение за максималния размер на документа файл, че Aspose.Words може да обработва или предава. Единственото ограничение е количеството RAM (памет) на Ваша страна.

## Колко памет Aspose.Words Нуждаи

Обикновено Aspose.Words се нуждае няколко пъти повече памет от размера на документа, за да изгради модел на документа в памет. Например, ако размерът на вашия документ е 1 MB, Aspose.Words се нуждае от 10-20 MB RAM, за да изгради своя Document Object Model (DOMВ памет. Множителят зависи от формата, защото някои формати са по-компактни от други. Например DOCX е по-компактен от DOC и RTF, а DOC е по-компактен от RTF.

Няма точен начин да се прецени колко памет Aspose.Words всъщност консумира по време на обработката на конкретен документен файл. Както може би знаете Java съхранява данни в класове, всеки клас пример използва известна памет за JVM (Java виртуална машина) вътрешни цели. Така че всеки параграф или форматиран текст (дори той се състои от един символ) взема малко допълнителна памет след зареждане в DOM. Освен това, Java боклук колектор двигател използва сложен алгоритъм, за да определи най-доброто време за извършване на събиране на памет, което прави трудно да се определи реалната консумация на памет.

## Как да изчислим размера на паметта

Нека да разгледаме два документа:

1. DOCX "A" документ гофриране размер MB (2 хиляди страници), текст само
2. DOCX "B" документ горно размер MB (само 1 страница), с PNG изображение вътре

Както знаете, много модерни формати като DOCX, ODT и др. са прости ZIP архиви. Получаваме следния изчислителен алгоритъм:
1. Разкопчаване. Документ "А" има 20 MB размер, документ "Б" има 0.4 MB размер
2. Зареждане на документа в модела (построяване на неговия Document Object Model - Да. DOM):
* Създаване DOM от първия документ "А" изисква размер 49 MB
* Създаване DOM на втория документ "Б" изисква само 2 MB размер.
3. Измерване на необходимото количество памет за предаване на тези документи на PDF. За тази операция, Aspose.Words изисква:
  * 294 MB за документ "А"
  * 7 МБ за документ "Б"

Както виждате, няма линейна зависимост от размера на входния документ. Има много фактори, които могат да повлияят на необходимия размер на RAM, формат на документа, неговата сложност и структура, броя на изображенията и техния формат, както и много други фактори.

## Как да изчислим Multiplier памет най-точно

Експерименти с хиляди реални документи показват, че обикновено Aspose.Words изисква няколко пъти повече памет от средния размер на документа, за да се изгради модел на документ в памет и да се извършват прости операции като преобразуване между формати на потока, mail merge, Смяна, замяна и така нататък. Понякога говорим за множител от 2, а понякога и 20.

По-сложни операции като превод (преобразуване в фиксирани формати на страници), актуализиране на полета, разделяне на страница, и други, за някои документи изискват 20 пъти повече ресурси, отколкото паметта, заредена с документа Aspose.Words DOM.

Ако резултатите от профила показват, че е възможно да има проблем с паметта Aspose.Words, Моля свържете се с нашия [Техническа поддръжка](/words/bg/java/technical-support/) и включва цялата диагностична информация.

## Вижте също

* [Нанасяне](/words/bg/java/rendering/)
* [Mail Merge и докладване](https://docs.aspose.com/words/java/mail-merge-and-reporting/)
* [Работа със полета](/words/bg/java/working-with-fields/)