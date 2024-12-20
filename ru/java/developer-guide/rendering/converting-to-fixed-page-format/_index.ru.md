﻿---
title: Преобразование в формат фиксированной страницы за Java
second_title: Aspose.Words для Java
articleTitle: Преобразование в формат фиксированной страницы
linktitle: Преобразование в формат фиксированной страницы
description: "Aspose.Words для Java реализован собственный механизм верстки страниц, позволяющий создавать все фиксированные форматы страниц, такие как PDF, XPS, а также различные графические форматы."
type: docs
weight: 10
url: /ru/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words реализует собственный механизм верстки страниц. Прежде чем углубляться в его технические характеристики, стоит сначала обсудить документ на высоком уровне. Когда пользователи думают о документе, они обычно представляют себе несколько листов бумаги, содержащих слова, изображения, таблицы и диаграммы. Документы могут быть различных типов, таких как текст, электронные таблицы, слайды, CAD рисунки, блок-схемы, и, следовательно, могут иметь существенно различный формат. Большинство приложений позволяют отправлять документы на принтер; именно тогда пользователь может фактически просмотреть окончательный вид документа.

## Отображение документа в различных приложениях

Различные приложения для просмотра или публикации документов позволяют пользователям открывать (Adobe Acrobat, XPS Viewer), а иногда и редактировать (Adobe InDesign) документы определенных форматов. Эти приложения обычно создают документы в формате так называемых "фиксированных страниц". Такой формат документа точно описывает расположение содержимого документа на каждой странице. Внутри формат PDF или XPS содержит описание каждой страницы, а также инструкции по рисованию, определяющие расположение содержимого на странице. Это похоже на графические форматы, описывающие, где содержимое отображается либо в растровом, либо в векторном виде.

В отличие от этого, некоторые приложения для редактирования текста не поддерживают просмотр страниц документа. Например, Microsoft Notepad поддерживает очень мало функций, кроме простого отображения, редактирования и печати текста. Важным замечанием здесь является то, что такие приложения не могут ни показывать страницы документа, ни сообщать пользователю, сколько из них будет напечатано, позволяя только просматривать содержимое документа. Документ может быть сохранен в обычном текстовом формате и открыт многими другими приложениями. Используя приложение, позволяющее просматривать двоичное содержимое произвольного файла, можно увидеть, что хранится в файле документа – это просто обычный текст, больше в нем ничего нет.

Несколько более сложные приложения для редактирования текста, такие как Microsoft WordPad, сохраняют документ в формате расширенного текста (RTF), который поддерживает больше функций форматирования, таких как вставка изображений, форматирование символов, полей абзаца и интервалов. Однако формат RTF также содержит только содержимое документа, не имея никакой информации о страницах.

Microsoft Word - это самое продвинутое на сегодняшний день приложение для редактирования текста Windows. Это приложение форматирует файлы в формате DOCX, который гибко и подробно описывает содержимое документа, позволяя пользователям указывать размер страницы, ориентацию раздела документа и, будучи приложением WYSIWYG, даже отображать страницы документа на экране. Тем не менее, по-прежнему нет информации о том, как содержимое документа отображается на страницах, доступных в файле документа. Файл документа описывает только само содержимое и взаимосвязь объектов документа друг с другом, а также некоторые геометрические ограничения. В результате, прежде чем отобразить документ, Microsoft Word сам вычисляет эту информацию. Здесь в игру вступает макет страницы.

## Что такое макет страницы

Макет страницы документа - это структура данных, описывающая расположение определенного объекта на страницах для всех объектов документа. Кроме того, поскольку объекты обладают свойствами, влияющими на их внешний вид, такими как размер шрифта, затенение или эффекты рисования, вам необходимо не только знать, где находится объект, но и какую область (области) страницы он занимает, и будет ли он применяться к нескольким страницам, чтобы другие объекты не влияли на его внешний вид. перекрывают одну и ту же область (области).

Aspose.Words реализует внутреннюю функциональность верстки страниц, позволяющую создавать все фиксированные форматы страниц, такие как PDF, XPS и различные графические форматы. Без верстки страниц информация, хранящаяся в файле документа с фиксированной страницей, была бы недоступна, и все эти форматы не поддерживались бы.

Связь между документом и макетом страницы довольно проста. В то время как документ описывает содержимое, соответствующий макет страницы описывает геометрию этого содержимого. Обратите внимание, что макет страницы не может существовать без документа, поскольку в нем не было бы содержимого для вычисления геометрии, но документ может существовать без макета страницы. Например, когда документ DOCX преобразуется в документ RTF, обычно нет необходимости знать геометрию, поскольку ни в одном из форматов она не сохраняется.

## Создание макета страницы

Создание макета страницы может быть дорогостоящей процедурой, как с точки зрения скорости, так и с точки зрения объема памяти. Это объясняется несколькими причинами:

- Документ может содержать большое количество содержимого, которое может потребоваться отобразить на тысячах страниц. Необходимо будет описать геометрию каждого объекта на каждой странице, что потребует значительных ресурсов памяти.
- Документ может содержать множество правил, накладывающих ограничения на геометрию. Может потребоваться значительное вычислительное время для обеспечения соблюдения всех ограничений.
- Некоторые функции документа, например поле `NUMPAGES`, создают рекурсивные зависимости для будущих значений свойств, которые недоступны во время вычисления. Это приводит к повторяющимся вычислениям и увеличивает время вычисления.

По вышеуказанным причинам Aspose.Words будет создавать макет страницы только тогда, когда это необходимо. Типичной причиной этого может быть запрос на отображение страниц документа или получение значения поля, которое зависит от информации, доступной в макете страницы. Менее очевидной причиной может быть экспорт документа в формат HTML. Несмотря на то, что формат HTML не является форматом с фиксированной страницей и не описывает геометрию объектов содержимого, он по-прежнему поддерживает изображения. Такие изображения могут быть в виде фигур, созданных в Microsoft Word, с текстом внутри них. Например, диаграмма с метками осей может быть экспортирована в HTML в виде изображения, но перед этим Aspose.Words необходимо отобразить это изображение и, следовательно, знать, где отображать метку. Смотрите пример диаграммы ниже:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Негеометрические свойства

Помимо обработки геометрической информации, макет страницы также отвечает за расчет цветов и стилей границ. В Microsoft Word цвет текста может быть задан автоматически, что означает, что выбор цвета должен основываться на цвете затенения ячейки или абзаца или на цвете страницы, на которой отображается текст.

Макет страницы определяет, где будет отображаться текст и какой контент будет отображаться за ним, что позволяет рассчитать цвет. Макет страницы выполняет и другие специфические вычисления. Например, горизонтальная граница в таблице зависит от того, является ли строка таблицы последней в столбце текста и разбита ли она по столбцам. Если строка отображается последней в столбце, вместо горизонтальной границы используется нижняя граница.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

В Aspose.Words пользователь может запросить, следует ли создать новый макет страницы или обновить существующий. Оба эти действия могут быть выполнены с помощью метода [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), предоставляемого классом [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Если макет страницы не существует, но в нем есть необходимость (например, при экспорте документа в формат фиксированной страницы), Aspose.Words автоматически вызовет этот метод. Однако, если макет страницы уже существует, Aspose.Words будет использовать существующий, чтобы избежать затрат ресурсов, необходимых для его обновления. В этом случае пользователю необходимо вызвать метод `UpdatePageLayout`, чтобы убедиться, что макет страницы соответствует модели документа.

### Динамическая структура

Процесс создания макета страницы состоит из следующих этапов:

- *Conversion* – перечисление содержимого модели документа и подготовка соответствующих объектов макета.
- *Build* – расположение объектов макета для представления содержимого документа на страницах.
- *Reflow* – изменение расположения объектов в соответствии с геометрическими ограничениями.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* – шаг, необходимый, если документ содержит фигуры с вложенным текстовым содержимым.

Обратите внимание, что макет страницы представляет собой динамическую структуру, которая может быть частично перестроена. Это особенно необходимо, когда невозможно рассчитать значения полей без перестройки структуры макета документа. Поле может указывать на местоположение объекта на странице, и в то же время само значение поля также отображается на странице, влияя на местоположение объекта, на который ссылается ссылка. Макет страницы не может быть создан за один раз, поскольку значения полей могут быть еще недоступны на момент размещения на странице.

Рассмотрим типичный сценарий, когда поле `NUMPAGES` отображается в нижнем колонтитуле первой страницы документа. Значением этого поля является общее количество страниц. Чтобы расположить поле на странице, необходимо знать его значение. Если в данный момент создается только первая страница, то общее количество страниц еще неизвестно. В этом случае в макете страницы необходимо использовать значение по умолчанию, а затем вернуться к этому полю и изменить его значение в соответствии с фактическими расчетами. Однако изменение значения поля может повлиять на содержимое другого документа на странице и в конечном итоге привести к добавлению новой страницы или удалению существующей страницы, что приведет к устареванию вычисленного значения. Эту проблему можно решить, предоставив возможность обновить существующий макет страницы.

При создании макета также можно настроить свойства [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/), которые влияют на вывод документа на страницы.

## Сохранение в формате фиксированной страницы

После построения макета страницы и расчета геометрии объектов и их положения на странице документ можно сохранить в формате фиксированной страницы, поддерживаемом Aspose.Words. При сохранении документов в форматах с фиксированной страницей можно использовать параметры отображения, общие для всех этих форматов. Они позволяют контролировать:

- Количество и диапазон страниц, содержащихся в выходном документе ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Ход постраничного сохранения документа ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Набор символов, которые используются для отображения чисел ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Проигрыватель метафайлов ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Более подробную информацию смотрите в разделе [Обработка Windows метафайлов](/words/java/handling-windows-metafiles/) статья.
- Коэффициент качества при повторном сжатии изображений JPEG, значение которого может незначительно отличаться в зависимости от выбранного формата сохранения ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Оптимизация векторной графики в выходных данных Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Параметры графики при сохранении в форматах Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Сохранение документа в оттенках серого ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Переключение между отображением фигур DrawingML и резервными фигурами ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Переключение между режимами рендеринга эффектов DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

В приведенном ниже примере показано, как сохранить документ в формате JPEG, используя метод `Save` и параметры отображения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
