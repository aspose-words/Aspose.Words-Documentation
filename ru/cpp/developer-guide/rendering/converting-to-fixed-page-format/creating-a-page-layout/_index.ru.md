﻿---
title: Создание макета страницы на C++
second_title: Aspose.Words для C++
articleTitle: Создание макета страницы
linktitle: Создание макета страницы
description: "Создание макета страницы может быть дорогостоящей процедурой. Aspose.Words Макет страницы будет создаваться только тогда, когда это необходимо: для отображения страниц документа, получения значения поля, экспорта документа в HTML и т.д."
type: docs
weight: 10
url: /ru/cpp/creating-a-page-layout/
---

Создание макета страницы может быть дорогостоящей процедурой, как с точки зрения скорости, так и с точки зрения объема памяти. Это объясняется несколькими причинами:

- Документ может содержать большой объем контента, который может потребоваться отобразить на тысячах страниц. Необходимо будет описать геометрию каждого объекта на каждой странице, что потребует значительных ресурсов памяти.
- В документе может быть много правил, накладывающих ограничения на геометрию. Может потребоваться значительное вычислительное время для обеспечения соблюдения всех ограничений.
- Некоторые функции документа, например поле `NUMPAGES`, создают рекурсивные зависимости для будущих значений свойств, которые недоступны во время вычисления. Это приводит к повторяющимся вычислениям и увеличивает время вычисления.

По вышеуказанным причинам Aspose.Words будет создавать макет страницы только тогда, когда это необходимо. Типичной причиной этого может быть запрос на отображение страниц документа или получение значения поля, которое зависит от информации, доступной в макете страницы. Менее очевидной причиной может быть экспорт документа в формат HTML. Несмотря на то, что HTML не является форматом с фиксированной страницей и не описывает геометрию объектов содержимого, он по-прежнему поддерживает изображения. Такие изображения могут быть в виде фигур, созданных в Microsoft Word, с текстом внутри них. Например, диаграмму с метками осей можно экспортировать в HTML в виде изображения, но перед этим Aspose.Words необходимо отобразить это изображение и, следовательно, знать, где отображать метку. Смотрите пример диаграммы ниже:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Негеометрические свойства

Помимо обработки геометрической информации, макет страницы также отвечает за расчет цветов и стилей границ. В Microsoft Word цвет текста может быть задан автоматически, что означает, что выбор цвета должен основываться на цвете затенения ячейки или абзаца или на цвете страницы, на которой отображается текст.

Макет страницы определяет, где будет отображаться текст и какой контент будет отображаться за ним, что позволяет рассчитать цвет. Макет страницы выполняет и другие специфические вычисления. Например, горизонтальная граница в таблице зависит от того, является ли строка таблицы последней в столбце текста и разбита ли она по столбцам. Если строка отображается последней в столбце, вместо горизонтальной границы используется нижняя граница.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

В Aspose.Words пользователь может запросить, следует ли создать новый макет страницы или обновить существующий. Оба эти действия могут быть выполнены с помощью метода [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/), предоставляемого классом [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Если макет страницы не существует, но в нем есть необходимость (например, при экспорте документа в формат фиксированной страницы), Aspose.Words автоматически вызовет этот метод. Однако, если макет страницы уже существует, Aspose.Words будет использовать существующий, чтобы избежать затрат ресурсов, необходимых для его обновления. В этом случае пользователю необходимо вызвать метод `UpdatePageLayout`, чтобы убедиться, что макет страницы соответствует модели документа.

## Динамическая структура

Процесс создания макета страницы состоит из следующих этапов:

- *Conversion* – перечисление содержимого модели документа и подготовка соответствующих объектов макета.
- *Build* – расположение объектов макета для представления содержимого документа на страницах.
- *Reflow* – изменение расположения объектов в соответствии с геометрическими ограничениями.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* – шаг, необходимый, если документ содержит фигуры с вложенным текстовым содержимым.

Обратите внимание, что макет страницы представляет собой динамическую структуру, которая может быть частично перестроена. Это особенно необходимо, когда невозможно рассчитать значения полей без перестройки структуры макета документа. Поле может указывать на местоположение объекта на странице, и в то же время само значение поля также отображается на странице, влияя на местоположение объекта, на который ссылается ссылка. Макет страницы не может быть создан за один раз, поскольку значения полей могут быть еще недоступны на момент размещения на странице.

Рассмотрим типичный сценарий, когда поле `NUMPAGES` отображается в нижнем колонтитуле первой страницы документа. Значением этого поля является общее количество страниц. Чтобы расположить поле на странице, необходимо знать его значение. Если в данный момент создается только первая страница, то общее количество страниц еще неизвестно. В этом случае в макете страницы необходимо использовать значение по умолчанию, а затем вернуться к этому полю и изменить его значение в соответствии с фактическими расчетами. Однако изменение значения поля может повлиять на содержимое другого документа на странице и в конечном итоге привести к добавлению новой страницы или удалению существующей страницы, что приведет к устареванию вычисленного значения. Эту проблему можно решить, предоставив возможность обновить существующий макет страницы.

При создании макета также можно настроить свойства [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/), которые влияют на вывод документа на страницы.