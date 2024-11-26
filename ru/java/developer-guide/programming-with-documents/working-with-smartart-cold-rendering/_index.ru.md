---
title: Работа с SmartArt холодным рендерингом в Java
second_title: Aspose.Words для Java
articleTitle: Работа с SmartArt холодным рендерингом
linktitle: Работа с SmartArt холодным рендерингом
type: docs
description: "Aspose.Words для Java выполняет SmartArt холодный рендеринг, что означает размещение и рендеринг объектов SmartArt, если предварительно отрендеренный чертеж SmartArt отсутствует или неверен."
weight: 330
url: /ru/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

SmartArt графика используется для быстрого и легкого создания визуального представления информации. Вы просто выбираете из большого количества макетов тот, который лучше всего подходит для вашей ситуации. Эта простота использования делает SmartArt графику довольно популярной для некоторых целей.

Microsoft Word создает и сохраняет предварительно отрисованный чертеж вместе с объектом `SmartArt`. В большинстве случаев предварительно отрисованный чертеж хорошо отрисовывается с помощью Aspose.Words и никаких дополнительных действий не требуется. Однако, если документ сохранен другими приложениями, предварительно отрисованный чертеж SmartArt может отсутствовать или быть неверным. В этом случае сам объект `SmartArt` должен быть размещен и отрисован с помощью Aspose.Words. Мы называем этот процесс `SmartArt` холодным рендерингом.

## Использование холодного рендеринга SmartArt

Aspose.Words позволяет использовать предварительно отрисованный рисунок или выполнить холодный рендеринг:

* Если доступен предварительно отрисованный чертеж, Aspose.Words использует его для отрисовки объекта `SmartArt`.
* Если предварительно отрисованный рисунок отсутствует, Aspose.Words неявно выполняет холодный рендеринг для отрисовки объекта `SmartArt`.
* Если предварительно отрисованный рисунок присутствует, но является некорректным, требуется выполнить SmartArt холодный рендеринг явно, вызвав метод [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing).

В следующем примере кода показано, как обновить чертежи для всех диаграмм в документе:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Поддержка стандартных макетов SmartArt

В настоящее время поддерживается только ограниченное количество стандартных макетов Microsoft Word SmartArt. Кроме того, некоторые из этих макетов поддерживаются частично, что означает, что отображаются важные узлы и фигуры диаграммы, но могут быть различия между макетами диаграмм Microsoft Word и Aspose.Words.

В таблице ниже перечислены полностью и частично поддерживаемые макеты:

| SmartArt Группа макетов | Полностью поддерживаемые макеты | Частично поддерживаемые макеты |
| ---------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| `List` | <ul><li>Базовый список блоков</li><li>Чередующиеся шестиугольники</li><li>Вертикальный маркированный список</li><li>Вертикальный прямоугольный список</li><li>Список с переменной шириной</li><li>Горизонтальный маркированный список</li><li>Сгруппированный список</li><li>Список вертикальных блоков</li><li>Список вертикальных шевронов</li><li>Список вертикальных стрелок</li><li>Список трапеций</li><li>Список таблиц</li><li>Список пирамид</li><li>Список целей</li></ul> | <ul><li>Выровненный список</li><li>Список с вертикальными скобками</li><li>Список с табуляцией</li><li>Список с наложением</li><li>Список с вертикальным акцентом</li><li>Список с вертикальным кругом</li></ul> |
| `Process` | <ul><li>Базовый процесс</li><li>Процесс выделения</li><li>Непрерывный процесс создания блоков</li><li>Процесс с увеличивающейся стрелкой</li><li>Переходящий текст</li><li>Базовая временная шкала</li><li>Базовый процесс создания шевронов</li><li>Процесс выделения шевронов</li><li>Замкнутый процесс создания шевронов</li><li>Список шевронов</li><li>Вертикальный процесс</li><li>Ступенчатый процесс</li><li>Список процессов</li><li>Базовый процесс гибки</li><li>Повторяющийся процесс гибки</li><li>Подробный процесс</li><li>Стрелка вверх</li><li>Процесс опускания</li><li>Процесс круговой гибки</li></ul> | <ul><li>Пошаговый процесс</li><li>Пошаговый процесс с понижением</li><li>Чередующийся поток</li><li>Процесс с увеличивающимся кругом</li><li>Pie Процесс</li><li>Процесс с взаимосвязанными блоками</li><li>Процесс со стрелками</li><li>Процесс с выделением круга на временной шкале</li><li>Процесс с кругами</li><li>Подэтапный процесс</li><li>Поэтапный процесс</li><li>Процесс от случайного к результату</li><li>Процесс с круговыми стрелками</li></ul> |
| `Cycle` |  | <ul><li>Сегментированный цикл</li><li>Шестигранный радиальный</li></ul> |
| `Hierarchy` |  | <ul><li>Иерархия таблиц</li><li>Схема архитектуры</li></ul> |
| `Relationship` | <ul><li>Баланс</li><li>Воронка</li><li>Механизм</li><li>Плюс И Минус</li><li>Лента со стрелками</li><li>Стрелки-противовесы</li><li>Противоположные стрелки</li><li>Вложенная мишень</li><li>Базовая мишень</li><li>Базовая Pie</li><li>Базовый Венн</li><li>Сложенный Венн</li><li>Соединенное кольцо</li></ul> | <ul><li>Замкнутый круг отношений</li><li>Противоположные идеи</li><li>Уравнение</li><li>Вертикальное уравнение</li><li>Линейное уравнение Венна</li></ul> |
| `Matrix` | <ul><li>Базовая матрица</li><li>Титулованная матрица</li><li>Решетчатая матрица</li><li>Матрица циклов</li></ul> |  |
| `Pyramid` |  | <ul><li>Сегментированная пирамида</li></ul> |

## Сравнение результатов рендеринга SmartArt в Aspose.Words и Microsoft

В таблице ниже приведены примеры изображений Aspose.Words холодного рендеринга некоторых стандартных макетов по сравнению с выводом Microsoft Word:

|  | **Aspose.Words** | **Microsoft Word** |
| ----------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Basic Process** | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/> |
| **Circular Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/> |
| **Repeating Bending Process** | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/> |
| **Trapezoid List** | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/> | <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/> |
