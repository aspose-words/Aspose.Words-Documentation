---
title: Преносими форми Отделно от документа
second_title: Aspose.Words вместо .NET
articleTitle: Преносими форми Отделно от документ
linktitle: Преносими форми Отделно от документ
description: "Извличане на различни графични обекти, като изображения, текстова кутия, съдържаща параграфи, или форми на стрелки, при обработка на документ, и ги експортират към външно място, използвайки C#."
type: docs
weight: 40
url: /bg/net/rendering-shapes-separately-from-a-document/
timestamp: 2024-07-10-14-38-57
---

При обработката на документи, обща задача е да се извлекат всички изображения, намерени в документа и да се изнасят на външно място. Тази задача става проста с Aspose.Words API, която вече осигурява функционалността за извличане и запазване на данните от изображенията. Въпреки това, понякога може да искате да извлечете по подобен начин други видове графично съдържание, което е представено от различен тип рисуващ обект, например текстова кутия, съдържаща параграфи, форми на стрелки и малко изображение. Няма лесен начин да се направи този обект, тъй като той е комбинация от отделни елементи на съдържанието. Можете също така да се сблъскате със случай, когато съдържанието е групирано заедно в обекта, който изглежда като едно изображение.

Aspose.Words осигурява функционалност за извличане на този тип съдържание по същия начин, по който можете да извлечете просто изображение от форма като преведено съдържание. Тази статия описва как да се използва тази функционалност, за да се направят форми независимо от документа.

## Видове форма в Aspose.Words

Цялото съдържание в слой за рисуване на документи се представя от [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) възел в Aspose.Words Модул на обекта на документа (DOM). Такова съдържание могат да бъдат текстови кутии, изображения, AutoShapes, OLE обекти и др. Някои полета също се внасят като форми, например `INCLUDEPICTURE` поле.

Прост образ е представен от **Shape** възел на [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Тази форма възел няма детски възли, но данните от изображението, съдържащи се в тази форма възел може да бъде достъпен от [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) собственост. От друга страна, формата може да бъде съставена и от много детски възли. Например, формата текст кутия, която е представена от [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) имоти, могат да бъдат съставени от много възли, като [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) както и [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Повечето форми могат да включват **Paragraph** както и **Table** Блокови възли. Това са същите възли като тези, които се появяват в основното тяло. Формулите са винаги части от някой параграф, включени директно в линия или закотвени към **Параграф** Но това е навсякъде в страницата с документите.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документът може да съдържа и форми, които са групирани заедно. Grouping може да бъде активиран в Microsoft Word чрез избор на няколко обекта и щракване върху гоGroupВ дясното меню.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Тези групи форми са представени от [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) Възел. Те могат да бъдат използвани по същия начин, за да се направи цялата група да се образира.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Форматът DOX може да съдържа специални видове изображения, като диаграми или диаграми. Тези форми също са представени чрез **Shape** Възел в Aspose.Words, който също така осигурява подобен метод за тяхното представяне като изображения. По дизайн формата не може да съдържа друга форма като дете, освен ако тази форма не е изображение (**ShapeType.Image**). Например, Microsoft Word не ви позволява да поставите текстова кутия в друга текстова кутия.

Типовете форма, описани по-горе, осигуряват специален метод за превръщане на формите през [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) Клас. Пример за **ShapeRenderer** Класът се получава за a **Shape** или **GroupShape** през **GetShapeRenderer** метод или чрез преминаване на **Shape** до конструктора на **ShapeRenderer** Клас. Този клас осигурява достъп до членове, които позволяват да се направи форма на следното:

- Файл на диска чрез [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) Претоварване на метода
- Поток използвайки [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) Претоварване на метода
- .NET Графика Обект чрез използване на [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) както и [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) методи

{{% alert color="primary" %}}

Когато правите **Shape** трябва да е част от йерархията на документите. Ако **Shape** не е част от дървото на документа, след което преведената продукция ще бъде празна след като бъде призована **ShapeRenderer** методи.

{{% /alert %}}

## Превръщане във файл или поток

На [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод осигурява претоварване, което прави формата директно към файл или поток. И двете претоварвания приемат случай на [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, който позволява да се определят опции за представяне на формата. Това работи по същия начин като [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. Въпреки че този параметър е необходим, можете да преминете към нулева стойност, като посочите, че няма потребителски опции.

Форматът може да бъде изнесен във всеки формат на изображението, посочен в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Изброяване. Например, изображението може да бъде преведено като образ на растер, като JPEG чрез определяне на [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) изброяване или като векторно изображение, като EMF, като се посочва [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Примерът с кода по-долу илюстрира формата на изображение с EMF отделно от документ и запис на диск:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Примерът с кода по-долу илюстрира формата на изображение на JPEG отделно от документа и спестяване към поток:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

На **ImageSaveOptions** клас ви позволява да посочите различни опции, които контролират как изображението се предава. Функционалността, описана по-горе, може да се прилага по същия начин към **GroupShape** както и **Shape** Възли.

## Пренасяне към .NET Графичен обект

Пренасяне директно към **Graphics** обект ви позволява да определите вашите собствени настройки и състоянието за **Graphics** Възразявам. Един общ сценарий включва превръщането на формата директно в **Graphics** обект, получен от Windows Форма или Bitmap. Когато **Shape** Възелът се предава, настройките ще повлияят на външния вид. Например, можете да завъртите или мащабирате формата с помощта на **RotateTransform** или **ScaleTransform** методи за **Graphics** Възразявам.

Примерът по-долу показва как да се направи форма на .**NET Graphics** обект отделно от документа и се прилага ротация на преведеното изображение:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Подобно на [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) метод, [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)метод, наследен от [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) е полезно за създаване на нокти от документ. Размерът на формата е определен чрез конструктора. На **RenderToSize** метод приема **Graphics** обект, координатите X и Y на позицията на изображението и размера на изображението (широчина и височина), които ще бъдат изтеглени върху **Graphics** Възразявам.

На **Shape** може да се прехвърли в определена скала с помощта на [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) метод, наследен от [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) Клас. Това е подобно на [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) метод, който приема същите основни параметри. Разликата между тези два метода е, че с **ShapeRenderer.RenderToScale** метод, вместо буквален размер, вие избирате плаваща стойност, която мащабира формата по време на нейното представяне. Ако плаващата стойност е равна на 1.0 причинява формата да бъде предадена на 100% от първоначалния размер. Плаваща стойност от 0.5 ще намали размера на изображението наполовина.

## Образуване на изображение

На [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) класът представлява обекти в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Използване на **Shape** клас, можете да създавате или променяте форми в Microsoft Word документ. Важно свойство на формата е неговото [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype). Форми от различни типове могат да имат различни възможности в документ на Word. Например, само образ и OLE форми могат да имат изображения вътре в тях, докато повечето от формите могат да имат само текст.

Следният пример показва как да се направи изображение на формата на JPEG изображение отделно от документа и да се запази на диска:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Изтегляне на размера на формата

На [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) клас също така осигурява функционалност за извличане на размера на формата в пиксели през [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) метод. Този метод приема два параметъра на float (Single) - мащабът и kniff, които се използват при изчисляването на размера на формата, когато формата е предадена. Методът връща [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) обект, който съдържа ширината и височината на изчисления размер. Това е полезно, когато е необходимо да се знае размера на формата предварително, например при създаването на нов Bitmap от трансформирания изход.

По-долу примерът показва как да се създаде нов обект Bitmap и Graphics с ширината и височината на формата, която да бъде предадена:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Когато използвате **RenderToSize** или **RenderToScale** методи, преведеното изображение размер също се връща в [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) Възразявам. Това може да се придаде на променлива и да се използва, ако е необходимо.

На **SizeInPoints** имот връща размера на формата, измерена в точки (вж. [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Резултатът е `SizeF` обект, съдържащ ширината и височината.
