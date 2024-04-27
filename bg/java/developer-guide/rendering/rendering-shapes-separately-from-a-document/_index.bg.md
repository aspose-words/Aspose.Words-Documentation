---
title: Преносими форми Отделно от документ
second_title: Aspose.Words вместо Java
articleTitle: Преносими форми Отделно от документ
linktitle: Преносими форми Отделно от документ
description: "Извличане на различни графични обекти, като например изображения, текстова кутия, съдържаща параграфи, или форми на стрелки, при обработка на документ, и ги експортирате към външно място, като използвате Java."
type: docs
weight: 40
url: /bg/java/rendering-shapes-separately-from-a-document/
---

При обработката на документи, обща задача е да се извлекат всички изображения, намерени в документа и да се изнасят на външно място. Тази задача става проста с Aspose.Words API, която вече осигурява функционалността за извличане и запазване на данните от изображенията. Въпреки това, понякога може да искате да извлечете по подобен начин други видове графично съдържание, които са представени от различен тип рисунка обект, например текстова кутия, съдържаща параграфи, форми на стрелки и малко изображение. Няма лесен начин за представяне на този обект, тъй като той е комбинация от отделни елементи на съдържанието. Можете също така да се натъкнете на случай, когато съдържанието е групирано заедно в обекта, който изглежда като едно изображение.

Aspose.Words осигурява функционалност за извличане на този тип съдържание по същия начин, по който можете да извлечете просто изображение от формата, както е преведено съдържание. Тази статия описва как да използвате тази функционалност, за да направите форми независимо от документа.

## Типове форма в Aspose.Words

Цялото съдържание в слой за рисуване на документи се представя от [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) или [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) възел в Aspose.Words Модул на обекта на документа (DOM). Такова съдържание могат да бъдат текстови кутии, изображения, AutoShapes, OLE обекти и др. Някои полета също се внасят като форми, например `INCLUDEPICTURE` Поле.

Прост образ е представен от **Shape** възел на [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Тази форма възел няма детски възли, но данните за изображението, съдържащи се в тази форма възел може да бъде достъпно от [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) собственост. От друга страна, формата може да бъде съставена и от много детски възли. Например, текстова кутия форма, която е представена от [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) имот, може да се състои от много възли, като [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) както и [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Повечето форми могат да включват **Paragraph** както и **Table** Блокови възли. Това са същите възли като тези, които се появяват в основното тяло. Формулите са винаги части от някой параграф, включени директно в линия или закотвени към **Параграф** но да напуснеш някъде в страницата с документите.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документът може да съдържа и форми, които са групирани заедно. Grouping може да бъде включен в Microsoft Word чрез избор на няколко обекта и щракване върху тяхGroupВ дясното меню.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

В Aspose.Words, Тези групи форми са представени от [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Възел. Те също могат да бъдат използвани по същия начин, за да се превърне цялата група в образ.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Форматът DOX може да съдържа специални типове изображения, като диаграми или диаграми. Тези форми също са представени чрез **Shape** Възел в Aspose.Words, който също така осигурява подобен метод за тяхното представяне като изображения. По дизайн формата не може да съдържа друга форма като дете, освен ако тази форма не е изображение (**ShapeType.Image**). Например, Microsoft Word не ви позволява да вмъквате текстова кутия в друга текстова кутия.

Видовете форма, описани по-горе, осигуряват специален метод за извършване на формите през [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) Клас. Пример за **ShapeRenderer** Класът се извлича за a **Shape** или **GroupShape** през **GetShapeRenderer** метод или преминаване през **Shape** до конструктора на **ShapeRenderer** Клас. Този клас осигурява достъп до членове, които позволяват да се направи форма на следното:

- Файл на диска чрез [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) Претоварване на метода
- Поток използвайки [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) Претоварване на метода
- Графики. Обект чрез използване на [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) както и [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) методи

{{% alert color="primary" %}}

Когато правите <span notrans="<span notrans=" **Shape**"=""></span>,"> трябва да е част от йерархията на документите. Ако **Shape** не е част от дървото на документа, след което преведената продукция ще бъде празна след като бъде призована **ShapeRenderer** методи.

{{% /alert %}}

## Превръщане във файл или поток

На [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) метод осигурява претоварване, което прави формата директно към файл или поток. И двете претоварване приема пример на [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) клас, който дава възможност за дефиниране на опции за представяне на формата. Това работи по същия начин като [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) метод. Въпреки че този параметър е необходим, можете да преминете към нулева стойност, като посочите, че няма потребителски опции.

Форматът може да бъде изнесен във всеки формат на изображението, посочен в [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Изброяване. Например, изображението може да бъде преведено като образ на растер, като JPEG, като се посочи [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) изброяване или като векторно изображение, като EMF, като се посочва [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Примерът с кода по-долу илюстрира формата на изображение с EMF отделно от документа и записва на диск:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Примерът с кода по-долу илюстрира формата на изображение на JPEG отделно от документа и спестяване към поток:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

На **ImageSaveOptions** клас ви позволява да посочите различни опции, които контролират как изображението се предава. Функционалността, описана по-горе, може да се приложи по същия начин към **GroupShape** както и **Shape** Възли.

## Пренасяне към `Graphics` Обект

Пренасяне директно към **Graphics** обект ви позволява да дефинирате вашите собствени настройки и състоянието за **Graphics** Възразявам. Един общ сценарий включва превръщането на формата директно в **Graphics** обект, получен от Windows Форма или карта. Когато **Shape** Възелът се предава, настройките ще повлияят на външния вид. Например, можете да завъртите или мащабирате формата с помощта на **RotateTransform** или **ScaleTransform** методи за **Graphics** Възразявам.

Примерът по- долу показва как да се направи форма на **Graphics** обект отделно от документа и се прилага ротация на преведеното изображение:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Подобно на [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) метод, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)метод, наследен от [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) е полезен за създаване на нокти на документи съдържание. Размерът на формата е определен чрез конструктора. На **RenderToSize** метод приема **Graphics** обект, координатите X и Y на позицията на изображението и размера на изображението (ширина и височина), които ще бъдат изтеглени върху **Graphics** Възразявам.

На **Shape** може да се прехвърли в определен мащаб с помощта на [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) метод, наследен от [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) Клас. Това е подобно на [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) метод, който приема същите основни параметри. Разликата между тези два метода е, че с **ShapeRenderer.RenderToScale** метод, вместо буквален размер, вие избирате плаваща стойност, която мащабира формата по време на нейното представяне. Ако плаващата стойност е равна на 1.0 причинява формата да бъде предадена на 100% от първоначалния размер. Плаваща стойност от 0,5 ще намали размера на изображението наполовина.

## Образуване на изображение

На [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) класът представлява обекти в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Използване на **Shape** клас, можете да създавате или променяте форми в Microsoft Word документ. Важно свойство на формата е неговата [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Форми от различни типове могат да имат различни възможности в документ на Word. Например, само изображения и OLE форми могат да имат изображения вътре в тях, докато повечето форми могат да имат само текст.

Следният пример показва как да се направи изображение на формата на JPEG изображение отделно от документа и да го запишете на диска:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Изтегляне на размера на формата

На [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) клас също така осигурява функционалност за извличане на размера на формата в пиксели през [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) метод. Този метод приема два параметъра на float (Single) - мащабът и трюмовете, които се използват при изчисляването на размера на формата, когато формата е предадена. Методът връща [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) обект, който съдържа ширината и височината на изчисления размер. Това е полезно, когато е необходимо да се знае размера на формата предварително, например при създаването на нов Bitmap от трансформирания изход.

Примерът по-долу показва как да се създаде нов обект Bitmap и Graphics с ширината и височината на формата, която трябва да бъде предадена:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Когато използвате **RenderToSize** или **RenderToScale** методи, преведеното изображение размер също се връща в [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) Възразявам. Това може да бъде определено на променлива и да се използва, ако е необходимо.

На **SizeInPoints** имот връща размера на формата, измерен в точки (вж. [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Резултатът е `SizeF` обект, съдържащ ширината и височината.
