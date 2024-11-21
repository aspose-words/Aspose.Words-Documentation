---
title: Сравняване на документите Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Сравняване
linktitle: Сравняване
description: "Сравняване на два документа във всички поддържани формати и показва промени в съдържанието, използвайки Python. Можете да приложите напреднали опции при сравняване."
type: docs
weight: 60
url: /bg/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Сравняването на документите е процес, който идентифицира промените между два документа и съдържа промените като ревизии. Този процес сравнява всеки два документа, включително версии на един конкретен документ, след което промените между двата документа ще бъдат показани като ревизии в първия документ.

Методът за сравнение се постига чрез сравняване на думи на ниво характер или на ниво дума. Ако една дума съдържа промяна на поне един символ, в резултат, разликата ще бъде показана като промяна на цялата дума, а не като символ. Този процес на сравнение е обичайна задача в правната и финансовата промишленост.

Вместо ръчно търсене на разлики между документи или между различни версии на тях, можете да използвате Aspose.Words за сравняване на документи и получаване на промени в съдържанието във форматиране, заглавна/крака, таблици и др.

Тази статия обяснява как да се сравняват документи и как да се определят напредналите сравняващи свойства.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да сравните два документа онлайн с помощта на [Сравнение на документи онлайн](https://products.aspose.app/words/comparison) инструмент.

Имайте предвид, че методът за сравнение, описан по-долу, се използва в този инструмент, за да се гарантира постигането на равни резултати. Така че ще получите същите резултати дори чрез използване на онлайн инструмент за сравнение или чрез използване на метода за сравнение в Aspose.Words.

{{% /alert %}}

## Ограничения и поддържани файлови формати {#limitations-and-supported-file-formats}

Сравняването на документи е много сложна характеристика. Има различни части на съдържание комбинация, която трябва да се анализира, за да се признае всички разлики. Причината за тази сложност се дължи на факта, че Aspose.Words цели да получи същите резултати от сравнение като Microsoft Word алгоритъм за сравнение.

Общото ограничение за два документа, които се сравняват, е, че те не трябва да имат ревизии, преди да се нарече метод за сравнение, тъй като това ограничение съществува в Microsoft Word.

{{% alert color="primary" %}}

Имайте предвид, че можете да сравните всеки два документа в рамките на [Поддържани формати на документи](/words/bg/python-net/supported-document-formats/). В общи линии, можете да сравните обекти документ и дори можете да създадете тези обекти от нулата, без да имате конкретен формат.

{{% /alert %}}

## Сравняване на две документи {#compare-two-documents}

Когато сравнявате документите, разликите в последния документ от първия се появяват като ревизии към предишния. Когато промените даден документ, всяка редакция ще има своя собствена ревизия след изпълнение на метода за сравнение.

Aspose.Words ви позволява да идентифицирате разликите в документите с помощта на [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) метод. . това е подобно на Microsoft Word функция за сравняване на документи. Тя ви позволява да проверявате документи или версии на документи, за да откриете разлики и промени, включително форматиране на модификации като промени в шрифта, промени в разстоянието, добавяне на думи и параграфи.

В резултат на сравнението документите могат да бъдат определени като равни или неравни. Терминът "равни" документи означава, че методът за сравнение не е в състояние да представя промените като ревизии. Това означава, че форматирането на текст и текст е еднакво. Но може да има и други различия между документите. Например, Microsoft Word поддържа само формат за ревизии за стилове и не можете да представлявате стил за вмъкване/изтриване. Така документите могат да имат различен набор от стилове и [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) метод все още не произвежда ревизии.

Следният пример за код показва как да се провери дали два документа са равни или не:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Следният пример с код показва как просто да се приложи `Compare` метод на два документа:

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

## Посочване на усъвършенстваните сравнявания {#specify-advanced-comparing-properties}

Има много различни свойства на [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) клас, който можете да приложите, когато искате да сравните документи.

Например, Aspose.Words ви позволява да игнорирате промените, направени по време на операция за сравнение за определени видове обекти в рамките на оригиналния документ. Можете да изберете подходящото свойство за типа обект, като [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), и други, като ги настройваш `True`.

Освен това, Aspose.Words осигурява [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) собственост, с която можете да посочите дали да следите промените по характер или по дума.

Друг общ имот е изборът, в който документът да покаже промените в сравнението. Например, в кутията за диалог с документите Microsoft Word има опцията "Покажи промените в" това също се отразява на резултатите от сравнението. Aspose.Words осигурява [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) собственост, която служи на тази цел.

Следният пример за код показва как да зададете напреднали сравняващи свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
