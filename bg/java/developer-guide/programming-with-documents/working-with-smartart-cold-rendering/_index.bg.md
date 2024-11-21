---
title: Работа с Smart Art Cold Rendering in Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с Smart Art Cold Rendering
linktitle: Работа с Smart Art Cold Rendering
type: docs
description: "Aspose.Words вместо Java изпълнява Smart Изкуството Cold Rendering, което означава, че тя се полага и прави SmartArt обекти, ако предварително-отдаден SmartArt рисунка е липсва или неправилно."
weight: 330
url: /bg/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt графики се използват за бързо и лесно създаване на визуално представяне на информация. Вие просто изберете от голям брой подредби, които най-добре отговарят на вашата ситуация. Тази лекота на използване прави SmartArt графика доста популярна за някои цели.

Microsoft Word генерира и запазва предварителното чертеж заедно с `SmartArt` Възразявам. В повечето случаи предварително нарисуваната рисунка се прави добре от Aspose.Words и не се изискват допълнителни действия. Въпреки това, ако документът е записан от други приложения, предварително полученият SmartArt чертеж може да липсва или да не е правилен. В този случай, `SmartArt` Самият обект трябва да бъде поставен и предаден, като се използва Aspose.Words. Наричаме този процес `SmartArt` Студено предаване.

## Използване на умен Art Cold Rendering

Aspose.Words ви позволява да използвате предварително нарисувана рисунка или да извършвате студено предаване:

* Ако е налице предварително нанесен чертеж, Aspose.Words Използва го, за да направи `SmartArt` Възразявам.
* Ако предварителното изтегляне липсва, Aspose.Words имплицитно извършва студена обработка, за да направи `SmartArt` Възразявам.
* Ако предварително нарисувана рисунка е налице, но е неточна, от нея се изисква да извършва SmartArt студено предаване изрично чрез повикване [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) метод.

Следният пример за код показва как да се актуализират чертежите за всички диаграми в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Подкрепа за стандартни SmartArt Макети

В момента само ограничен брой стандарти Microsoft Word SmartArt макетите се поддържат. Също така, някои от тези макети се поддържат частично, което означава, че са представени значителни възли и форми на диаграмата, но може да има разлики между Microsoft Word както и Aspose.Words Схема.

В таблицата по-долу са изброени напълно и частично поддържаните подредби:

|  Умно. Арт макети Group |  Напълно поддържани подредби |  Частично поддържани подредби |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Основен блоков списък</li><li>Алтернативни шестоъгълници</li><li>Вертикален списък с куршуми</li><li>Вертикален списък на полета</li><li>weather forecast</li><li>Хоризонтален списък на куршумите</li><li>Groupо</li><li>Вертикален блоков списък</li><li>Вертикален списък с символи</li><li>Вертикален списък със стрелки</li><li>Трапезоиден списък</li><li>Списък с таблици</li><li>Списък на пирамидите</li><li>Списък с цели</li></ul> |  <ul><li>Линия</li><li>Вертикален списък с подсказки</li><li>Списък с подпрозорци</li><li>Засечен списък</li><li>Вертикален акцент списък</li><li>Вертикален списък на кръговете</li></ul> |
|  `Process`  |  <ul><li>Основен процес</li><li>Акцент процес</li><li>Непрекъснат процес на блокиране</li><li>Увеличаване на процеса на стрелка</li><li>Свързване на текст</li><li>Основна времева линия</li><li>Основен процес на символ</li><li>Процес на акцент върху символ</li><li>Затворен процес на символ</li><li>Списък с символи</li><li>Вертикален процес</li><li>Засилен процес</li><li>Списък с процеси</li><li>Основен процес на огъване</li><li>Повторение на процеса на огъване</li><li>Пълен процес</li><li>Нагоре</li><li>Снижаване на процеса</li><li>Циркулярен процес на огъване</li></ul> |  <ul><li>Стъпка нагоре</li><li>Стъпка надолу</li><li>Регулярен поток</li><li>Увеличаване на кръговия процес</li><li>Процес на пай</li><li>Междусистемен блоков процес</li><li>Процесни стрелки</li><li>Circle Accent Timeline</li><li>Процес на кръга</li><li>Подетапен процес</li><li>Етапен процес</li><li>Произволно до резултат процес</li><li>Процес на стрелката на кръга</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Сегментиран цикъл</li><li>Hexagon Radial</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Таблица Йерархия</li><li>Архитектурно оформление</li></ul> |
|  `Relationship`  |  <ul><li>Баланс</li><li>Фънел</li><li>Съоръжение</li><li>Плюс и минус</li><li>Лента със стрелки</li><li>Контрабалансови стрелки</li><li>Противни стрели</li><li>Гневна цел</li><li>Основна цел</li><li>Основен пай</li><li>Основна вен</li><li>Вен.</li><li>Свързан пръстен</li></ul> |  <ul><li>Връзка с кръга</li><li>Противоположни идеи</li><li>Уравнение</li><li>Вертикално уравнение</li><li>Линейна вен</li></ul> |
|  `Matrix`  |  <ul><li>Основна матрица</li><li>Заглавие Матрица</li><li>Мрежа Matrix</li><li>Цикъл Матрица</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Сегментирана пирамида</li></ul> |

## Сравнение на SmartArt Rendering в Aspose.Words както и Microsoft

Таблицата по- долу показва снимки на Aspose.Words Студено Нанасяне на някои стандартни подредби в сравнение с Microsoft Word изход:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
