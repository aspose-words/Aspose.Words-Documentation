---
title: Порівняйте документи Python
second_title: Aspose.Words для Python via .NET
articleTitle: Документи
linktitle: Документи
description: "Порівняти два документи в будь-яких форматах і показує зміни вмісту Pythonй Ви можете застосувати розширені параметри при порівнянні."
type: docs
weight: 60
url: /uk/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Порівняти документи – це процес, який визначає зміни між двома документами та містить зміни у вигляді джерел. Цей процес порівнює будь-які два документи, включаючи версії одного конкретного документа, після чого зміни між документами будуть показані як ревізії у першому документі.

Метод порівняння досягається шляхом порівняння слів на рівні символів або на рівні слово. Якщо слово містить зміну принаймні одного персонажа, в результаті різниця буде відображатися як зміна всього слова, а не символу. Цей процес порівняння є звичайним завданням в юридичній та фінансовій галузі.

Замість ручного пошуку відмінностей між документами або між різними версіями їх можна використовувати Aspose.Words для порівняння документів та отримання змін вмісту у форматі, заголовок/фут, таблиці тощо.

Ця стаття пояснює, як порівняти документи і як визначити розширені властивості порівняння.

{{% alert color="primary" %}}

**Почати онлайн**

Ви можете порівняти два документи онлайн, використовуючи [Порівняння документів онлайн](https://products.aspose.app/words/comparison) інструмент.

Зверніть увагу, що метод порівняння, описаний нижче, використовується в цьому інструменті для забезпечення отримання рівних результатів. Таким чином, ви отримаєте однакові результати навіть за допомогою інструменту порівняння онлайн або за допомогою методу порівняння Aspose.Wordsй

{{% /alert %}}

## Обмеження та підтримка форматів файлів {#limitations-and-supported-file-formats}

Порівняти документи є дуже складною рисою. Розрізняються різні частини комбінації контенту, які потрібно аналізувати для розпізнавання всіх відмінностей. Причина такої складності обумовлена тим, що Aspose.Words мета, щоб отримати однакові результати порівняння, як Microsoft Word алгоритм порівняння.

Загальна обмеження для двох документів, що порівнюються, полягає в тому, що вони не повинні мати редакцій перед викликом методу порівняння, оскільки це обмеження існує в Microsoft Wordй

{{% alert color="primary" %}}

Зауважте, що ви можете порівняти будь-які два документи в межах [Підтримувані формати документів](/words/uk/python-net/supported-document-formats/)й В основному ви можете порівняти об'єкти документа і навіть ви можете створювати об'єкти з нуля, не маючи певного формату.

{{% /alert %}}

## Порівняйте два документи {#compare-two-documents}

При порівнянні документів, відмінностей останнього документа від колишнього показаного доопрацювання. Коли ви зміните документ, кожен редагування буде мати власний ревізій після запуску методу порівняння.

Aspose.Words дозволяє визначити відмінності документів за допомогою [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) метод – це схоже на Microsoft Word Функція порівняння документів. Ви можете перевірити документи або документи для пошуку відмінностей і змін, в тому числі форматування модифікацій, таких як зміни шрифтів, зміни стрибків, додавання слів і абзаців.

В результаті порівняння документів можна визначити як рівні, так і не рівні. Термін "equal" документів означає, що метод порівняння не здатний представляти зміни як ревізії. Це означає, що як текст документа, так і текстове форматування є однаковим. Але є інші відмінності між документами. Наприклад, Microsoft Word підтримує лише форматні версії для стилів, і ви не можете представляти вставку стилю / видалення. Отже, документи можуть мати різний набір стилів, і [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) метод ще не виробляє ревізій.

Приклад коду показує, як перевірити, чи є два документи рівні або не:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Приклад наступного коду показує, як просто застосувати `Compare` метод до двох документів:

{{< highlight python >}}
# The source document doc1.
doc1 = aw.Document()
builder = aw.DocumentBuilder(doc1)
builder.writeln("This is the original document.")

# The target document doc2.
doc2 = aw.Document()
builder = aw.DocumentBuilder(doc2)
builder.writeln("This is the edited document.")

# If either document has a revision, an exception will be thrown.
if (doc1.revisions.count == 0 and doc2.revisions.count == 0) :
    doc1.compare(doc2, "authorName", datetime.today())

# If doc1 and doc2 are different, doc1 now has some revisions after the comparison, which can now be viewed and processed.
self.assertEqual(2, doc1.revisions.count)

for r in doc1.revisions :
    print(f"Revision type: {r.revision_type}, on a node of type \"{r.parent_node.node_type}\"")
    print(f"\tChanged text: \"{r.parent_node.get_text()}\"")

# All the revisions in doc1 are differences between doc1 and doc2, so accepting them on doc1 transforms doc1 into doc2.
doc1.revisions.accept_all()

# doc1, when saved, now resembles doc2.
doc1.save(docs_base.artifacts_dir + "Document.Compare.docx")
doc1 = aw.Document(docs_base.artifacts_dir + "Document.Compare.docx")
self.assertEqual(0, doc1.revisions.count)
self.assertEqual(doc2.get_text().strip(), doc1.get_text().strip())
{{< /highlight >}}

## Вказати додаткові властивості порівняння {#specify-advanced-comparing-properties}

Є багато різних властивостей [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) клас, який можна застосувати, коли потрібно порівнювати документи.

Наприклад, Aspose.Words дозволяє ігнорувати зміни, внесені під час операції порівняння за певними типами об'єктів в оригінальному документі. Ви можете вибрати відповідне майно для типу об'єкта, такі як [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), і інші, встановивши їх `True`й

Додатково Aspose.Words забезпечує [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) майно, за допомогою якого можна вказати, чи слідкувати зміни за символом або словом.

Інша загальна властивість - це вибір, в якому документ, щоб показати зміни порівняння. Наприклад, діалогове вікно "Порівняти документи" Microsoft Word має опцію "Показати зміни" – це також впливає на результати порівняння. Aspose.Words забезпечує [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) властивість, яка служить цією метою.

Приклад коду показує, як встановити розширені властивості порівняння:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
