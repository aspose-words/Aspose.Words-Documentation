---
title: Замінити поля Python
second_title: Aspose.Words для Python via .NET
articleTitle: Замінити поля з статичним текстом
linktitle: Замінити поля з статичним текстом
description: "Дізнайтеся, як замінити поля з текстом в Pythonй Замінити поля статичними даними за допомогою статичних даних Python via .NET APIй"
type: docs
weight: 37
url: /uk/python-net/replace-fields/
---

Перезавантаження полів часто необхідно при бажанні зберегти ваш документ як статичну копію. Наприклад, при надсиланні в електронному вигляді на електронну пошту. Перетворення полів, таких як `DATE` або `TIME` до статичного тексту дозволить документу відображати однакову дату, коли він був відправлений. Також в деяких ситуаціях можна видалити умовний режим `IF` поля з вашого документа і замініть їх за допомогою останнього текстового результату. Наприклад, перетворення результату `IF` поле до статичного тексту, так що він не буде динамічно змінювати його значення, коли поля в документі оновлюються.

Схема нижче показує, як показано `IF` поле зберігається в документі:

* Текст оточений спеціальними польовими вузлами – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) і [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* до [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) вершина відокремлює текст у полі в польовий код і результат поля
* код поля визначає загальну поведінку поля, в той час як результат поля зберігає найсвіжіші результати, коли це поле оновлюється за допомогою Microsoft Word або Aspose.Words
* результат поля, що зберігається в полі і відображається в документі при перегляді

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

Структура також може бути показано нижче в ієрархічному вигляді за допомогою ієрархічної форми [демо-проект * "ДокументExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Поля, які не можуть бути замінені на текст

Заміна поля статичним текстом не працює належним чином для деяких полів в заголовку або нижній колонтитул.

Наприклад, намагаючись перетворити `PAGE` поле в заголовку або нижній колонтитул до статичного тексту призведе до того ж значення, що відображається на всіх сторінках. Це тому, що заголовки та піддони повторюються через кілька сторінок, і коли вони залишаються як поля, вони обробляються особливо так, щоб вони відображали правильний результат для кожної сторінки.

Однак в заголовку, `PAGE` поле добре перекладається на статичний запуск тексту. Цей курс буде оцінювати, якби він був останню сторінку в розділі, яка призведе до виникнення будь-якого `PAGE` поле в заголовку для відображення останньої сторінки над усіма сторінками.

Наприклад, наступний код показує, як замінити поле за допомогою останнього результату:

КОМПЛЕКС

## Конвертувати деякі типи поля в певних частинах документа

З моменту **ConvertFieldsToStaticText** метод приймає два параметри – [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) властивості і властивості [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) занурення, можна пройти будь-який композитний вузол до цього методу. Це дозволяє полям перетворюватися на статичний текст тільки в певних частинах документа.

Наприклад, можна пропустити [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт і конвертування полів вказаного типу з усього документа в статичний текст, або ви можете перенести [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) об'єкт розділу і тільки перетворюйте поля, знайдені в цьому тілі.

{{% alert color="primary" %}}

При переході вузла блочного рівня такі як [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), будь-ласка, що в деяких випадках поля можуть переходити через кілька абзаців. Якщо це відбувається, рекомендується пройти батьківщину композиту замість того, щоб уникнути цього.

{{% /alert %}}

Про нас [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) занурення передано до **ConvertFieldsToStaticText** метод визначає, який тип поля слід конвертувати в статичний текст. Будь-який інший тип поля, знайдений в документі, буде залишатися незмінним.

Приклад коду показує, як вибрати поля конкретного типу – *targetFieldType* в певній вершині – *compositeNode* а потім перетворюйте їх в статичний текст:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

Приклад наступного коду показує, як перетворити всі `IF` поля в документі на статичний текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx)й

{{% /alert %}}

Приклад наступного коду показує, як перетворити всі `PAGE` поля в тілі документа на статичний текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

Приклад наступного коду показує, як перетворити всі `IF` поля в останньому пункті статичного тексту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}