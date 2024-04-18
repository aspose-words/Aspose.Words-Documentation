---
title: Шапки Окремо від документа
second_title: Aspose.Words для Python via .NET
articleTitle: Рендерні форми Окремо з документа
linktitle: Рендерні форми Окремо з документа
description: "Вилучення різних графічних об'єктів, таких як зображення, текстова коробка, що містить абзаци, або стрілкові форми, при обробці документа і експорт їх на зовнішнє місце за допомогою Pythonй"
type: docs
weight: 40
url: /uk/python-net/rendering-shapes-separately-from-a-document/
---

При обробці документів, загальним завданням є вилучення всіх зображень, знайдених в документі і вивезення їх на зовнішнє місце. Це завдання стає простою з Aspose.Words API, який вже надає функціональність для отримання та збереження даних зображень. Тим не менш, іноді ви можете аналогічно витягувати інші типи графічного контенту, який представлений різними типами об'єкта малювання, наприклад, текстова коробка, що містить абзаци, форму стріли та невеликий образ. Не існує прямолінійного способу надання цього об'єкту, оскільки це поєднання окремих елементів контенту. Ви також можете зіткнутися з кейсом, коли вміст було зібрано в об'єкт, який виглядає як єдиний образ.

Aspose.Words забезпечує функціональність для вилучення цього типу вмісту таким же чином, ви можете витягти простий образ з форми, що дає вміст. Ця стаття описує, як використовувати цю функціональність, щоб надати форми самостійно з документа.

## Типи форм у Aspose.Words

Весь вміст в шарі креслення документа представлений [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) або [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) вузол в Aspose.Words Модуль об'єкта документа (Document)DOM). Цей вміст може бути текстовими ящиками, зображеннями, AutoShapes, об'єктами OLE тощо. Деякі поля також імпортуються як форми, наприклад, `INCLUDEPICTURE` поле.

Простий образ представлений [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вузол [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image)й Ця вершина форми не має дочірньих вузлів, але дані зображення, що містяться в цій вершині форми, можуть бути доступні [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) майно. З іншого боку, форма також може бути виконана з багатьох дочірніх вузлів. Наприклад, форма текстової коробки, яка представлена [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) властивість, може бути виконана з багатьох вузлів, таких як [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) і [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)й Більшість форм можна включати в себе [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) і [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) блок-рівневі вузли. Це ті ж самі вузли, які з'являються в головному тілі. Види завжди є частиною деяких абзаців, або включені безпосередньо в лінію або анкеровані до [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), але "плавлення" в будь-якій точці документа.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Документ також містить форми, які групуються разом. Groupінг може бути включений в Microsoft Word за допомогою вибору декількох об'єктів та натискання кнопки "Group" у правому меню.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

У Aspose.Words, ці групи форм представлені [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) вузол. Це також може бути викликаний таким же чином, щоб надати всю групу до зображення.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Формат DOCX може містити спеціальні типи зображень, таких як діаграми або діаграми. Ці форми також представлені через [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вузол в Aspose.Words, який також надає аналогічний метод, що надає їм як зображення. По дизайну форма не містить іншої форми як дитини, якщо ця форма є зображенням (04/07/2019)[ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Наприклад, Microsoft Word не дозволяє вставляти текстове поле в іншому текстовому вікні.

Види форми, описані вище, забезпечують особливий метод, щоб надати фігури через форму [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) клас. Приклад екземпляра [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) клас отримується для [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) або [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) через [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) метод або шляхом проходження [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) до конструктора [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) клас. Цей клас надає доступ до членів, які дозволяють надати форму наступним чином:

- Файл на диску
- Потік

{{% alert color="primary" %}}

При рендерингу <span notrans="<span notrans=" [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)"=""></span>, > вона повинна бути частиною ієрархії документа. Якщо [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) не є частиною дерева документа, після того, як рендеринг буде порожнім після виклику [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) методи.

{{% /alert %}}

## Відступ до файлу або потоку

Про нас [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) метод надає перевантаження, які надають форму безпосередньо на файл або потік. Обидва перевантаження приймають екземпляр [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас, який дозволяє визначити варіанти надання форми. Це працює так само, як і [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) метод. Незважаючи на те, що цей параметр необхідний, ви можете передати значення null, вказавши, що немає користувацьких варіантів.

Форма може бути експортована в будь-який формат зображення, зазначений в [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) заохочення. Наприклад, зображення можна надати як растровий образ, наприклад, JPEG, вказавши [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) enumeration, або як векторний образ, наприклад EMF, вказавши [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf)й

Приклад коду нижче ілюструє форму на зображення EMF окремо від документа і збереження диску:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Приклад коду нижче ілюструє форму на зображення JPEG окремо від документа і збереження потоку:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Про нас [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) клас дозволяє вказати різні параметри, які контролюють зображення. Функціональність, описана вище, може бути застосована таким же чином до [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) і [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вершини.

## Рендеринг форми зображення

Про нас [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас являє собою об'єкти в шарі малювання, такі як AutoShape, текстова коробка, форма, об'єкт OLE, управління ActiveX або малюнок. Використання [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас, ви можете створювати або змінювати форми в Microsoft Word документ. Важливою властивістю форми є її [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/)й Види різних типів можуть мати різні можливості у документі Word. Наприклад, лише зображення і форми OLE можуть мати зображення всередині них, тоді як більшість форм можуть мати текст тільки.

Наступний приклад показує, як відобразити зображення форми на зображення JPEG окремо від документа і зберегти його на диск:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Видалення розміру форми

Про нас [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) клас також забезпечує функціональність для отримання розміру форми в пікселях через [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) метод. Цей метод приймає два плаваючі (Single) параметри – масштаб і DPI, які використовуються при розрахунку розміру форми при наведенні форми. Спосіб повертає метод **Size** об'єкт, який містить ширину і висоту розрахункового розміру. Це корисно, коли потрібно знати розмір рендерованої форми заздалегідь. Про нас [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) майно повертається розмір форми, вимірюється в точках. Результати **SizeF** об'єкт, що містить ширину і висоту. Також можна використовувати [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) майно для отримання фактичних меж форми.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


