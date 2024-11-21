---
title: Работа с Smart Арт Холодный Рендеринг в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с Smart Искусство холодного рендеринга
linktitle: Работа с Smart Искусство холодного рендеринга
description: "Введение в Smart Арт-формы с использованием C#."
type: docs
description: "Aspose.Words для .NET исполнитель Smart Арт холодный рендеринг, что означает, что он выкладывает и визуализирует объекты SmartArt, если предварительно выполненный рисунок SmartArt отсутствует или некорректно используется. C#."
weight: 330
url: /ru/net/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Графика SmartArt используется для быстрого и легкого создания визуального представления информации. Вы просто выбираете из большого количества макетов, которые наилучшим образом соответствуют вашей ситуации. Эта простота использования делает графику SmartArt довольно популярной для некоторых целей.

Microsoft Word Сохраняет и формирует предварительный рисунок вместе с `SmartArt` объект. В большинстве случаев предварительно выполненный рисунок хорошо визуализируется Aspose.Words Никаких дополнительных действий не требуется. Однако, если документ сохраняется другими приложениями, предварительный чертеж SmartArt может отсутствовать или быть неправильным. В данном случае, `SmartArt` сам объект должен быть выложен и выполнен с использованием Aspose.Words. Мы называем этот процесс `SmartArt` Холодный рендеринг.

## Использование Smart Искусство холодного рендеринга

Aspose.Words позволяет использовать предварительно выполненный рисунок или выполнять холодный рендеринг:

* Если есть готовый рисунок, Aspose.Words Используется для рендеринга `SmartArt` объект.
* Если предварительный рисунок отсутствует, Aspose.Words неявно выполняет холодный рендеринг для рендеринга `SmartArt` объект.
* Если предварительный рисунок присутствует, но неверен, требуется выполнить холодный рендеринг SmartArt явно по телефону. [UpdateSmartArtDrawing](https://reference.aspose.com/words/net/aspose.words.drawing/shape/updatesmartartdrawing/) метод.

Следующий пример кода показывает, как обновить чертежи для всех диаграмм в документе:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.cs" >}}

## Поддержка стандартных решений SmartArt

В настоящее время существует ограниченное количество стандартных Microsoft Word Поддерживаются макеты SmartArt. Кроме того, некоторые из этих макетов поддерживаются частично, что означает, что значительные узлы и формы диаграммы отображаются, но между ними могут быть различия. Microsoft Word и Aspose.Words Планировка диаграммы.

В таблице ниже перечислены полностью и частично поддерживаемые макеты:

|  Умный Арт-лоджи Group |  Полностью поддерживаемые макеты |  Частично поддерживаемые макеты |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Базовый список блоков</li><li>Альтернативные шестиугольники</li><li>Вертикальный список пуль</li><li>Вертикальный список коробок</li><li>Перечень разнообразных широт</li><li>Горизонтальный список пуль</li><li>Grouped List</li><li>Вертикальный список блоков</li><li>Вертикальный список Chevron</li><li>Вертикальный список стрел</li><li>Список трапеции</li><li>Таблица</li><li>Список пирамид</li><li>Список целей</li></ul> |  <ul><li>Линейный список</li><li>Список вертикальных брекетов</li><li>Список вкладок</li><li>Сложенный список</li><li>Вертикальный список акцентов</li><li>Список вертикальных кругов</li></ul> |
|  `Process`  |  <ul><li>Основной процесс</li><li>Акцентный процесс</li><li>непрерывный блок-процесс</li><li>Расширение процесса стрел</li><li>Сходящийся текст</li><li>Основные сроки</li><li>Основной процесс Chevron</li><li>Процесс Chevron Accent</li><li>Закрытый Chevron процесс</li><li>Список Chevron</li><li>Вертикальный процесс</li><li>Пошатнувшийся процесс</li><li>Перечень процессов</li><li>Базовый процесс изгиба</li><li>Повторяющийся процесс изгиба</li><li>Подробный процесс</li><li>Вверх Стрела</li><li>Спускающийся процесс</li><li>Процесс кругового изгиба</li></ul> |  <ul><li>Шаг вперед процесс</li><li>Шаг вниз процесс</li><li>Альтернативный поток</li><li>Увеличение кругового процесса</li><li>Процесс пирога</li><li>Взаимосвязанный блок-процесс</li><li>Стрелы процесса</li><li>Обсуждение Circle Accent Timeline</li><li>Круговой процесс</li><li>Sub Step Процесс</li><li>Поэтапный процесс</li><li>Случайность для процесса результата</li><li>Обсуждение Circle Arrow</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Сегментированный цикл</li><li>Радиальный шестиугольник</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Таблица Иерархия</li><li>Архитектурный макет</li></ul> |
|  `Relationship`  |  <ul><li>Баланс</li><li>Воронка</li><li>Гир</li><li>Плюс и минус</li><li>Стрела Риббон</li><li>Противовесные стрелы</li><li>Противостоящие стрелы</li><li>Вложенная цель</li><li>Основная цель</li><li>Основной пирог</li><li>Базовый венец</li><li>Сложенный Venn</li><li>Взаимосвязанное кольцо</li></ul> |  <ul><li>Круговые отношения</li><li>Противоположные идеи</li><li>уравнение</li><li>Вертикальное уравнение</li><li>Линейный вен</li></ul> |
|  `Matrix`  |  <ul><li>Базовая матрица</li><li>Оригинальное название: Matrix</li><li>Сетевая матрица</li><li>Матрица цикла</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Сегментированная пирамида</li></ul> |

## Обсуждение SmartArt Rendering in Aspose.Words и Microsoft

В таблице ниже приведены примеры изображений Aspose.Words Холодный Отображение некоторых стандартных макетов по сравнению с Microsoft Word выход:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/net/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
