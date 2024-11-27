---
title: Рендиране на фигури отделно от документ
second_title: Aspose.Words за C++
articleTitle: Рендиране на фигури отделно от документ
linktitle: Рендиране на фигури отделно от документ
description: "Извличайте различни графични обекти, като например изображения, текстово поле, съдържащо параграфи или фигури със стрелки, когато обработвате документ и ги експортирайте във външно местоположение."
type: docs
weight: 40
url: /bg/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обработката на документи често срещана задача е да извлечете всички изображения, намерени в документа, и да ги експортирате във външно местоположение. Тази задача става лесна с Aspose.Words API, който вече осигурява функционалността за извличане и записване на данни от изображения. Въпреки това понякога може да искате да извлечете по подобен начин други типове графично съдържание, което е представено от различен тип Чертожен обект, например текстово поле, съдържащо абзаци, фигури със стрелки и малко изображение. Няма лесен начин за представяне на този обект, тъй като той е комбинация от отделни елементи на съдържанието. Може също да срещнете случай, когато съдържанието е групирано заедно в обекта, който изглежда като едно изображение.

Aspose.Words осигурява функционалност за извличане на този тип съдържание по същия начин, по който можете да извлечете просто изображение от фигура като рендирано съдържание. Тази статия описва как да използвате тази функционалност за рендиране на фигури независимо от документа.

## Форми в Aspose.Words

Цялото съдържание в слоя за чертане на документи е представено от [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) или [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) възел в Aspose.Words обекта на документа (DOM). Такова съдържание може да бъде текстови полета, изображения, AutoShapes, OLE обекти и др. Някои полета също се импортират като фигури, например полето `INCLUDEPICTURE`.

Обикновеното изображение е представено от **Shape** възел от [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Този възел на фигура няма дъщерни възли, но данните за изображението, съдържащи се в този възел на фигура, могат да бъдат достъпни от свойството [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). От друга страна, формата може да се състои и от много детски възли. Например фигура на текстово поле, която е представена от свойство [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), може да се състои от много възли, като [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) и [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Повечето фигури могат да включват възли на блоково ниво **Paragraph** и **Table**. Това са същите възли като тези, които се появяват в основното тяло. Фигурите винаги са части от някой абзац, включени директно в реда или закотвени към **Paragraph,**, но "плаващи" навсякъде в страницата на документа.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Документът може да съдържа и фигури, които са групирани заедно. Групирането може да бъде разрешено в Microsoft Word, като изберете няколко обекта и кликнете върху "групиране" в менюто с десния бутон.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, тези групи от фигури са представени от `GroupShape` възел. Те могат да бъдат извикани по същия начин, за да представят цялата група на изображението.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Форматът DOCX може да съдържа специални типове изображения, като диаграми или диаграми. Тези форми също са представени чрез **Shape** възел в Aspose.Words, който също предоставя подобен метод за рендирането им като изображения. По дизайн една фигура не може да съдържа друга фигура като дете, освен ако тази фигура не е изображение (**ShapeType.Image**). Например Microsoft Word не ви позволява да вмъквате текстово поле в друго текстово поле.

Типовете фигури, описани по-горе, осигуряват специален метод за представяне на фигурите през класа [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Инстанция на класа **ShapeRenderer** се извлича за а **Shape** или **GroupShape** чрез метода **GetShapeRenderer** или чрез подаване на **Shape** към конструктора на класа **ShapeRenderer**. Този клас осигурява достъп до членове, които позволяват представяне на фигура на следните:

- Файл на диска с помощта на метода [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) претоварване
- Поток с използване на метода [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) претоварване
- `Graphics` обект чрез използване на [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) и [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) методи

{{% alert color="primary" %}}

Когато рендирате **Shape**, той трябва да бъде част от йерархията на документа. Ако **Shape** не е част от дървото с документи, след извикването на методи **ShapeRenderer** рендираният резултат ще бъде празен.

{{% /alert %}}

## Рендиране във файл или поток

Методът [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) осигурява претоварване, което прави фигура директно към файл или поток. И двете претоварвания приемат инстанция на класа [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), което позволява дефиниране на опции за рендиране на фигурата. Това работи по същия начин като [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) метод. Въпреки че този параметър е необходим, можете да подадете нулева стойност, като посочите, че няма потребителски опции.

Формата може да бъде експортирана във всеки формат на изображението, посочен в [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) изброяване. Например изображението може да бъде представено като растерно изображение, като JPEG чрез посочване на `SaveFormat.Jpeg` или като векторно изображение, като EMF чрез посочване на `SaveFormat.Emf`.

Примерът с код по-долу илюстрира превръщането на фигура в изображение EMF отделно от документа и записването на диск:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Примерът с код по-долу илюстрира превръщането на фигура в изображение JPEG отделно от документ и записването в поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Клас **ImageSaveOptions** ви позволява да зададете различни опции, които контролират как се рендира изображението. Функционалността, описана по-горе, може да бъде приложена по същия начин към възлите **GroupShape** и **Shape**.

## Изобразяване на графичен обект .NET

Рендирането директно към обект **Graphics** ви позволява да дефинирате свои собствени настройки и състоянието на обекта **Graphics**. Често срещан сценарий включва рендиране на фигура директно в обект **Graphics**, извлечен от формуляр Windows или растерна графика. Когато възелът **Shape** се рендира, настройките ще повлияят на външния вид на фигурата. Например можете да завъртите или мащабирате фигурата с помощта на **RotateTransform** или **ScaleTransform** методи за **Graphics** обект.

Примерът по-долу показва как да направите фигура на фигура .**NET Graphics** обект отделно от документа и прилагане на въртене към рендираното изображение:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Подобно на метода [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), методът [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)наследен от [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) е полезен за създаване на миниатюри на съдържанието на документа. Размерът на формата се определя от конструктора. Методът **RenderToSize** приема **Graphics** обекта, координатите Х и у на позицията на изображението и размера на изображението (ширина и височина), които ще бъдат изтеглени върху **Graphics** обекта.

**Shape** може да бъде доведен до определена скала, като се използва [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) метода, наследен от [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) класа. Това е подобно на метода [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/), който приема същите основни параметри. Разликата между тези два метода е, че с метода **ShapeRenderer.RenderToScale**, вместо буквален размер, избирате стойност, която мащабира формата по време на нейното рендиране. Ако стойността на поплавъка е равна на 1.0, формата трябва да бъде 100% от първоначалния си размер. Поплавъчна стойност 0.5 ще намали размера на изображението наполовина.

## Рендиране на изображение на фигура

Класът [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) представлява обекти в чертожния слой, като AutoShape, текстово поле, свободна форма, OLE обект, контрола Активекс или картина. Използвайки класа **Shape**, можете да създавате или променяте фигури в документ Microsoft Word. Важно свойство на формата е [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Форми от различни типове могат да имат различни възможности в Word документ. Например само изображения и OLE фигури могат да имат изображения в тях, докато повечето от фигурите могат да имат само текст.

Следващият пример показва как да направите изображение на фигура на изображение JPEG отделно от документа и да го запишете на диска:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Извличане на размер на формата

Класът [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) също така предоставя функционалност за извличане на размера на фигурата в пиксели чрез метода [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Този метод приема два параметъра тип поплавък (единичен) – скалата и DPI, които се използват при изчисляването на размера на формата, когато фигурата се рендира. Методът връща `Size` обект, който съдържа ширината и височината на изчисления размер. Това е полезно, когато се изисква предварително да се знае размерът на рендираната фигура, например при създаване на Нова растерна графика от рендирания изход.

Примерът по-долу показва как да създадете нов обект с растерна графика и графика с ширината и височината на фигурата, която ще бъде рендирана:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

При използване на методите **RenderToSize** или **RenderToScale**, рендираният Размер на изображението също се връща в обекта [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Това може да бъде присвоено на променлива и да се използва, ако е необходимо.

Свойство **SizeInPoints** връща размера на формата, измерен в точки (Виж [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Резултатът е `SizeF` обект, съдържащ ширината и височината.
