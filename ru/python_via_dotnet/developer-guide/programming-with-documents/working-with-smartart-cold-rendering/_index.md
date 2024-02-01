---
title: Работа с холодным рендерингом SmartArt
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с холодным рендерингом SmartArt
linktitle: Работа с холодным рендерингом SmartArt
type: docs
description: "Aspose.Words для Python via .NET выполняет холодную визуализацию SmartArt, что означает, что он размещает и визуализирует объекты SmartArt, если предварительно обработанный рисунок SmartArt отсутствует или неверен."
weight: 330
url: /ru/python-net/working-with-smartart-cold-rendering/
---

Графика SmartArt используется для быстрого и простого создания визуального представления информации. Вы просто выбираете из большого количества макетов тот, который лучше всего соответствует вашей ситуации. Эта простота использования делает графику SmartArt весьма популярной для некоторых целей.

Microsoft Word генерирует и сохраняет предварительно обработанный рисунок вместе с объектом `SmartArt`. В большинстве случаев предварительно отрисованный рисунок к Aspose.Words отрисовывается хорошо и никаких дополнительных действий не требуется. Однако если документ сохранен другими приложениями, предварительно обработанный рисунок SmartArt может отсутствовать или быть неправильным. В этом случае сам объект `SmartArt` должен быть скомпонован и визуализирован с использованием Aspose.Words. Мы называем этот процесс холодным рендерингом `SmartArt`.

## Использование холодного рендеринга SmartArt

Aspose.Words позволяет использовать предварительно отрендеренный рисунок или выполнить холодный рендеринг:

* Если доступен предварительно обработанный рисунок, Aspose.Words использует его для визуализации объекта `SmartArt`.
* Если предварительно обработанный рисунок отсутствует, Aspose.Words неявно выполняет холодный рендеринг для рендеринга объекта `SmartArt`.
* Если предварительно обработанный рисунок присутствует, но неверен, необходимо явно выполнить холодный рендеринг SmartArt, вызвав метод [update_smart_art_drawing](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/update_smart_art_drawing/).

В следующем примере кода показано, как обновить рисунки для всех схем в документе:

**.NET**
{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-UpdateSmartArtDrawing.py" >}}

## Поддержка стандартных макетов SmartArt

В настоящее время поддерживается только ограниченное количество стандартных макетов SmartArt (35 668). Кроме того, некоторые из этих макетов поддерживаются частично, то есть визуализируются важные узлы и формы диаграммы, но между макетами диаграмм Microsoft Word и Aspose.Words могут быть различия.

В таблице ниже перечислены полностью и частично поддерживаемые макеты:

|  Макеты SmartArt Group |  Полностью поддерживаемые макеты |  Частично поддерживаемые макеты |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Базовый черный список</li><li>Переменные шестиугольники</li><li>Вертикальный маркированный список</li><li>Вертикальный список полей</li><li>Список переменной ширины</li><li>Горизонтальный маркированный список</li><li>Список Grouped</li><li>Вертикальный черный список</li><li>Вертикальный список шевронов</li><li>Список с вертикальными стрелками</li><li>Список трапеций</li><li>Список таблиц</li><li>Список пирамид</li><li>Целевой список</li></ul> |  <ul><li>Линейный список</li><li>Список вертикальных скобок</li><li>Список вкладок</li><li>Составной список</li><li>Список вертикальных акцентов</li><li>Вертикальный круговой список</li></ul> |
|  `Process`  |  <ul><li>Основной процесс</li><li>Акцентный процесс</li><li>Непрерывный блочный процесс</li><li>Процесс увеличения стрелки</li><li>Сходящийся текст</li><li>Основная временная шкала</li><li>Базовый процесс шеврона</li><li>Процесс шевронного акцента</li><li>Закрытый шевронный процесс</li><li>Список Шевронов</li><li>Вертикальный процесс</li><li>Поэтапный процесс</li><li>Список процессов</li><li>Основной процесс гибки</li><li>Повторяющийся процесс гибки</li><li>Подробный процесс</li><li>Стрелка вверх</li><li>Нисходящий процесс</li><li>Процесс круглого изгиба</li></ul> |  <ul><li>Шаг вперед</li><li>Процесс понижения</li><li>Переменный поток</li><li>Процесс увеличения круга</li><li>Процесс пирога</li><li>Взаимосвязанный блочный процесс</li><li>Стрелки процесса</li><li>Хронология кругового акцента</li><li>Круговой процесс</li><li>Подэтапный процесс</li><li>Поэтапный процесс</li><li>Процесс случайного результата</li><li>Круг Стрелка Процесс</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Сегментированный цикл</li><li>Шестиугольник Радиальный</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Иерархия таблиц</li><li>Архитектурный макет</li></ul> |
|  `Relationship`  |  <ul><li>Баланс</li><li>Воронка</li><li>Механизм</li><li>Плюс и Минус</li><li>Лента со стрелкой</li><li>Стрелы противовеса</li><li>Противостоящие стрелы</li><li>Вложенная цель</li><li>Основная цель</li><li>Основной пирог</li><li>Базовый Венн</li><li>Сложенный Венн</li><li>Взаимосвязанное кольцо</li></ul> |  <ul><li>Круговые отношения</li><li>Противоположные идеи</li><li>Уравнение</li><li>Вертикальное уравнение</li><li>Линейный Венн</li></ul> |
|  `Matrix`  |  <ul><li>Базовая матрица</li><li>Титулованная матрица</li><li>Сетка-матрица</li><li>Циклическая матрица</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Сегментированная пирамида</li></ul> |

## Сравнение рендеринга SmartArt в Aspose.Words и Microsoft

В таблице ниже показаны примеры изображений холодного рендеринга Aspose.Words некоторых стандартных макетов по сравнению с выводом Microsoft Word:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="Basic_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/basic-process-word.png" alt="Basic_process_word"/> |
|   **Circular Bending Process**   |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="round_bending_process_word"/> |
|   **Repeating Bending Process**  |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="reearing_bending_process_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="reearing_bending_process_word"/> |
|   **Trapezoid List**             |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="трапеция_list_aspose"/> |  <img src="/words/python-net/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="трапеция_список_слов"/> |
