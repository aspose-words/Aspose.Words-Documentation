---
title: Візуалізація фігур окремо від документа
second_title: Aspose.Words для C++
articleTitle: Візуалізація фігур окремо від документа
linktitle: Візуалізація фігур окремо від документа
description: "Витягніть різні графічні об'єкти, такі як зображення, текстове поле, що містить абзаци, або фігури зі стрілками під час обробки документа та експортуйте їх у зовнішнє сховище."
type: docs
weight: 40
url: /uk/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

При обробці документів звичайним завданням є вилучення всіх зображень, знайдених у документі, та експорт їх у зовнішнє сховище. Це завдання спрощується за допомогою функції Aspose.Words API, яка вже забезпечує функціональність для отримання та збереження даних зображень. Однак іноді може знадобитися аналогічно витягти графічний вміст інших типів, представлений іншим типом графічного об'єкта, наприклад, текстове поле, що містить абзаци, фігури зі стрілками та невелике зображення. Простого способу візуалізації цього об'єкта не існує, оскільки він являє собою комбінацію окремих елементів контенту. Ви також можете зіткнутися з випадком, коли вміст було згруповано в об'єкт, який виглядає як єдине зображення.

Aspose.Words надає функціональність для вилучення цього типу вмісту таким же чином, як ви можете витягти просте зображення з shape як відтворюваний вміст. У цій статті описано, як використовувати цю функціональність для візуалізації фігур незалежно від документа.

## Типи фігур в Aspose.Words

Весь вміст шару малювання документа представлено вузлом [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) або [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) в модулі об'єктів документа Aspose.Words (DOM). Таким вмістом можуть бути текстові поля, зображення, об'єкти AutoShapes, OLE і т.д. деякі поля також імпортуються у вигляді фігур, наприклад, поле `INCLUDEPICTURE`.

Просте зображення представлено вузлом **Shape** з [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Цей вузол форми не має дочірніх вузлів, але до даних зображення, що містяться в цьому вузлі форми, можна отримати доступ за допомогою властивості [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). З іншого боку, фігура також може складатися з багатьох дочірніх вузлів. Наприклад, форма текстового поля, яка представлена властивістю [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), може складатися з багатьох вузлів, таких як [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) та [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Більшість форм можуть включати вузли рівня блоку **Paragraph** та **Table**. Це ті ж вузли, що і в основній частині документа. Фігури завжди є частинами будь-якого абзацу, або включеними безпосередньо в текст, або прив'язаними до **Paragraph,**, але "плаваючими" в будь-якому місці сторінки документа.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Документ також може містити фігури, які згруповані разом. Групування можна включити в Microsoft Word, вибравши кілька об'єктів і натиснувши "згрупувати" в контекстному меню.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

У Aspose.Words ці групи фігур представлені вузлом `GroupShape`. Вони також можуть бути викликані таким же чином, щоб відобразити всю групу на зображенні.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Формат DOCX може містити спеціальні типи зображень, такі як діаграми. Ці фігури також представлені за допомогою вузла **Shape** в Aspose.Words, який також забезпечує подібний метод для їх відображення у вигляді зображень. За задумом, фігура не може містити іншу фігуру в якості дочірньої, якщо тільки ця фігура не є зображенням (**ShapeType.Image**). Наприклад, Microsoft Word не дозволяє вставляти текстове поле в інше текстове поле.

Описані вище типи фігур забезпечують спеціальний метод візуалізації фігур за допомогою класу [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Екземпляр класу **ShapeRenderer** витягується для **Shape** або **GroupShape** методом **GetShapeRenderer** або шляхом передачі **Shape** конструктору класу **ShapeRenderer**. Цей клас надає доступ до елементів, які дозволяють відображати форму наступним чином:

- Файл на диску за допомогою методу перевантаження [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Потік за допомогою перевантаження методу [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)
- Об'єкт `Graphics` за допомогою методів [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) та [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

При відображенні **Shape** він повинен бути частиною ієрархії документів. Якщо **Shape** не є частиною дерева документів, то після виклику методів **ShapeRenderer** відображений результат буде порожнім.

{{% /alert %}}

## Рендеринг у файл або потік

Метод [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) забезпечує перевантаження, які відображають фігуру безпосередньо у файл або потік. Обидва перевантаження підтримують екземпляр класу [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), який дозволяє визначати параметри для відображення фігури. Це працює так само, як метод [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Незважаючи на те, що цей параметр є обов'язковим, ви можете передати нульове значення, вказавши, що користувацьких параметрів немає.

Фігура може бути експортована в будь-якому графічному форматі, зазначеному в перерахуванні [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Наприклад, зображення можна відобразити як растрове, наприклад, як JPEG, вказавши перерахування `SaveFormat.Jpeg`, або як векторне, наприклад, як EMF, вказавши `SaveFormat.Emf`.

Наведений нижче приклад коду ілюструє рендеринг фігури у вигляді зображення EMF окремо від документа і збереження на диск:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Наведений нижче приклад коду ілюструє рендеринг фігури у вигляді зображення JPEG окремо від документа і збереження в потоці:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Клас **ImageSaveOptions** дозволяє задати безліч параметрів, що керують відображенням зображення. Функціональність, описана вище, може бути застосована таким же чином до вузлів **GroupShape** і **Shape**.

## Рендеринг в графічний об'єкт .NET

Візуалізація безпосередньо в об'єкт **Graphics** дозволяє визначити власні налаштування та стан об'єкта **Graphics**. Звичайний сценарій передбачає візуалізацію фігури безпосередньо в об'єкт **Graphics**, отриманий з форми Windows або растрового зображення. При відображенні вузла **Shape** параметри впливатимуть на зовнішній вигляд фігури. Наприклад, ви можете обертати або масштабувати фігуру, використовуючи методи **RotateTransform** або **ScaleTransform** для об'єкта **Graphics**.

У наведеному нижче прикладі показано, як отрисовать фігуру для об'єкта .**NET Graphics** окремо від документа та застосувати поворот до відтвореного зображення:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Подібно до методу [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), метод [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/), успадкований від методу [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/), корисний для створення ескізів вмісту документа. Розмір Фігури задається за допомогою конструктора. Метод **RenderToSize** приймає об'єкт **Graphics**, координати X та Y положення зображення та розмір зображення (ширина та Висота), які будуть відображені на об'єкті **Graphics**.

Зображення **Shape** може бути відображено в певному масштабі за допомогою методу [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/), успадкованого від класу [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Це аналогічно методу [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/), який приймає ті самі основні параметри. Різниця між цими двома методами полягає в тому, що при використанні методу **ShapeRenderer.RenderToScale** замість буквального розміру Ви вибираєте значення з плаваючою точкою, яке масштабує фігуру під час її візуалізації. Якщо значення з плаваючою точкою дорівнює 1.0, форма відображатиметься на 100% від початкового розміру. Значення з плаваючою комою 0.5 зменшить розмір зображення вдвічі.

## Рендеринг зображення фігури

Клас [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) представляє об'єкти на рівні малювання, такі як AutoShape, текстове поле, довільна форма, об'єкт OLE, елемент керування ActiveX або зображення. Використовуючи клас **Shape**, ви можете створювати або змінювати фігури в документі Microsoft Word. Важливою властивістю фігури є її значення [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Фігури різних типів можуть мати різні можливості в документі Word. Наприклад, лише зображення та фігури OLE можуть містити зображення всередині себе, тоді як більшість фігур можуть містити лише текст.

Наступний приклад показує, як перетворити зображення фігури на зображення JPEG окремо від документа та зберегти його на диску:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Отримання розміру фігури

Клас [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) також надає функціональні можливості для отримання розміру фігури в пікселях за допомогою методу [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Цей метод приймає два параметри типу float (одиночних) – масштаб і DPI, які використовуються при обчисленні розміру фігури при її візуалізації. Метод повертає об'єкт `Size`, який містить Ширину та висоту обчисленого розміру. Це корисно, коли потрібно заздалегідь знати розмір візуалізується фігури, наприклад, при створенні нового растрового зображення на основі результатів візуалізації.

У наведеному нижче прикладі показано, як створити нове растрове зображення та графічний об'єкт із шириною та висотою фігури, яка відображатиметься:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

При використанні методів **RenderToSize** або **RenderToScale** Розмір відображуваного зображення також повертається до об'єкта [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Це значення можна присвоїти змінній і використовувати при необхідності.

Властивість **SizeInPoints** повертає розмір Фігури, виміряний у точках (див. [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Результатом є об'єкт `SizeF`, що містить ширину та висоту.
