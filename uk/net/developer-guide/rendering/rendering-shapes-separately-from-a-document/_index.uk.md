---
title: Рендерні форми Окремо з документа
second_title: Aspose.Words для .NET
articleTitle: Рендерні форми Окремо з документа
linktitle: Рендерні форми Окремо з документа
description: "Вилучення різних графічних об'єктів, таких як зображення, текстова коробка, що містить абзаци, або стрілкові форми, при обробці документа і експорт їх на зовнішнє місце за допомогою C#й"
type: docs
weight: 40
url: /uk/net/rendering-shapes-separately-from-a-document/
---

При обробці документів, загальним завданням є вилучення всіх зображень, знайдених в документі і вивезення їх на зовнішнє місце. Це завдання стає простою з Aspose.Words API, який вже надає функціональність для отримання та збереження даних зображень. Тим не менш, іноді ви можете аналогічно витягувати інші типи графічного контенту, який представлений різними типами об'єкта малювання, наприклад, текстова коробка, що містить абзаци, форму стріли та невеликий образ. Не існує прямолінійного способу надання цього об'єкту, оскільки це поєднання окремих елементів контенту. Ви також можете зіткнутися з кейсом, коли вміст було зібрано в об'єкт, який виглядає як єдиний образ.

Aspose.Words забезпечує функціональність для вилучення цього типу вмісту таким же чином, ви можете витягти простий образ з форми, що дає вміст. Ця стаття описує, як використовувати цю функціональність, щоб надати форми самостійно з документа.

## Типи форм у Aspose.Words

Весь вміст в шарі креслення документа представлений [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) або [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) вузол в Aspose.Words Модуль об'єкта документа (Document)DOM). Цей вміст може бути текстовими ящиками, зображеннями, AutoShapes, об'єктами OLE тощо. Деякі поля також імпортуються як форми, наприклад, `INCLUDEPICTURE` поле.

Простий образ представлений **Shape** вузол [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/)й Ця вершина форми не має дочірньих вузлів, але дані зображення, що містяться в цій вершині форми, можуть бути доступні [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) майно. З іншого боку, форма також може бути виконана з багатьох дочірніх вузлів. Наприклад, форма текстової коробки, яка представлена [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) властивість, може бути виконана з багатьох вузлів, таких як [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) і [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)й Більшість форм можна включати в себе **Paragraph** і **Table** блок-рівневі вузли. Це ті ж самі вузли, які з'являються в головному тілі. Види завжди є частиною деяких абзаців, або включені безпосередньо в лінію або анкеровані до **Параграф,** але "плавлення" в будь-якій точці документа.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ також містить форми, які групуються разом. Groupінг може бути включений в Microsoft Word за допомогою вибору декількох об'єктів та натискання кнопки "Group" у правому меню.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

У Aspose.Words, ці групи форм представлені [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) вузол. Це також може бути викликаний таким же чином, щоб надати всю групу до зображення.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX може містити спеціальні типи зображень, таких як діаграми або діаграми. Ці форми також представлені через **Shape** вузол в Aspose.Words, який також надає аналогічний метод, що надає їм як зображення. По дизайну форма не містить іншої форми як дитини, якщо ця форма є зображенням (04/07/2019)**ShapeType.Image**). Наприклад, Microsoft Word не дозволяє вставляти текстове поле в іншому текстовому вікні.

Види форми, описані вище, забезпечують особливий метод, щоб надати фігури через форму [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) клас. Приклад екземпляра **ShapeRenderer** клас отримується для **Shape** або **GroupShape** через **GetShapeRenderer** метод або шляхом проходження **Shape** до конструктора **ShapeRenderer** клас. Цей клас надає доступ до членів, які дозволяють надати форму наступним чином:

- Файл на диску за допомогою диска [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод перевантаження
- Потік за допомогою [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод перевантаження
- до .NET Відео Об'єкт за допомогою [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) і [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) методи

{{% alert color="primary" %}}

При рендерингу <span notrans="<span notrans=" **Shape**"=""></span>, > вона повинна бути частиною ієрархії документа. Якщо **Shape** не є частиною дерева документа, після того, як рендеринг буде порожнім після виклику **ShapeRenderer** методи.

{{% /alert %}}

## Відступ до файлу або потоку

Про нас [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) метод надає перевантаження, які надають форму безпосередньо на файл або потік. Обидва перевантаження приймають екземпляр [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) клас, який дозволяє визначити варіанти надання форми. Це працює так само, як і [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) метод. Незважаючи на те, що цей параметр необхідний, ви можете передати значення null, вказавши, що немає користувацьких варіантів.

Форма може бути експортована в будь-який формат зображення, зазначений в [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) заохочення. Наприклад, зображення можна надати як растровий образ, наприклад, JPEG, вказавши [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) enumeration, або як векторний образ, наприклад EMF, вказавши [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/)й

Приклад коду нижче ілюструє форму на зображення EMF окремо від документа і збереження диску:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Приклад коду нижче ілюструє форму на зображення JPEG окремо від документа і збереження потоку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Про нас **ImageSaveOptions** клас дозволяє вказати різні параметри, які контролюють зображення. Функціональність, описана вище, може бути застосована таким же чином до **GroupShape** і **Shape** вершини.

## Відступ до .NET Графічний об'єкт

Рендеринг безпосередньо до **Graphics** об'єкт дозволяє визначити власні налаштування та стан для **Graphics** об'єкт. Загальний сценарій передбачає надання форми безпосередньо в **Graphics** об'єкт, отриманий з Windows Форма або Bitmap. Коли **Shape** Вузол рендериться, параметри будуть впливати на зовнішній вигляд форми. Наприклад, можна обертати або масштабувати форму за допомогою **RotateTransform** або **ScaleTransform** методи для **Graphics** об'єкт.

Приклад нижче показує, як надати форму до .**NET Graphics** об'єкт окремо від документа і застосуйте обертання на зображення рендерингу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Аналогічно, до [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/) метод, [РендерToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/)метод спадок від [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) корисно для створення ескізів документа. Розмір форми визначається за допомогою конструктора. Про нас **RenderToSize** метод приймає **Graphics** об'єкт, X і Y координати положення зображення, а розмір зображення (ширина і висота), які будуть намальовані на **Graphics** об'єкт.

Про нас **Shape** може бути передано певному масштабу за допомогою [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) метод спадок від [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) клас. Це схоже на [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) метод, який приймає однакові основні параметри. Відмінність цих двох способів полягає в тому, що з **ShapeRenderer.RenderToScale** метод, замість літрового розміру, ви обираєте поплавку значення, яка задає форму під час її рендерингу. Якщо значення плавлення дорівнює 1,0 викликає форму, яка буде представлена на 100% від початкового розміру. Поплавлення значення 0,5 знизить розмір зображення навпіл.

## Рендеринг форми зображення

Про нас [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) клас являє собою об'єкти в шарі малювання, такі як AutoShape, текстова коробка, форма, об'єкт OLE, управління ActiveX або малюнок. Використання **Shape** клас, ви можете створювати або змінювати форми в Microsoft Word документ. Важливою властивістю форми є її [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype)й Види різних типів можуть мати різні можливості у документі Word. Наприклад, лише зображення і форми OLE можуть мати зображення всередині них, тоді як більшість форм можуть мати текст тільки.

Наступний приклад показує, як відобразити зображення форми на зображення JPEG окремо від документа і зберегти його на диск:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Видалення розміру форми

Про нас [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) клас також забезпечує функціональність для отримання розміру форми в пікселях через [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) метод. Цей метод приймає два плаваючі (Single) параметри – масштаб і DPI, які використовуються при розрахунку розміру форми при наведенні форми. Спосіб повертає метод [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) об'єкт, який містить ширину і висоту розрахункового розміру. Це корисно, коли потрібно знати розмір рендерованої форми заздалегідь, наприклад, при створенні нової Bitmap від рендерованого виходу.

Наведений нижче приклад показує, як створити новий об'єкт Bitmap і Графіка з шириною і висотою форми, яка буде представлена:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

При використанні **RenderToSize** або **RenderToScale** методи, розмір рендерованого зображення також повертається в [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) об'єкт. Це може бути призначене для змінної та використовується при необхідності.

Про нас **SizeInPoints** майно повертається розмір форми, вимірюється в пунктах (див. [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/)й Результати `SizeF` об'єкт, що містить ширину і висоту.
