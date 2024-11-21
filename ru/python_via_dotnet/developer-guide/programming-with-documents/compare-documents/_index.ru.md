---
title: Сравнение документов в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сравнить документы
linktitle: Сравнить документы
description: "Сравните два документа в любых поддерживаемых форматах и покажите изменения контента с помощью Python. Вы можете использовать расширенные варианты при сравнении."
type: docs
weight: 60
url: /ru/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Сравнение документов - это процесс, который идентифицирует изменения между двумя документами и содержит изменения в виде изменений. Этот процесс сравнивает любые два документа, включая версии одного конкретного документа, затем изменения между обоими документами будут показаны как изменения в первом документе.

Метод сравнения достигается путем сравнения слов на уровне символов или на уровне слов. Если слово содержит изменение хотя бы одного символа, то в результате различие будет отображаться как изменение всего слова, а не символа. Этот процесс сравнения является обычной задачей в юридической и финансовой отраслях.

Вместо ручного поиска различий между документами или между различными их версиями вы можете использовать Aspose.Words для сравнения документов и получения изменений контента в форматировании, заголовке / футере, таблицах и многом другом.

В этой статье объясняется, как сравнивать документы и как указывать расширенные свойства сравнения.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете сравнить два документа онлайн, используя [Сравнение документов онлайн](https://products.aspose.app/words/comparison) инструмент.

Обратите внимание, что метод сравнения, описанный ниже, используется в этом инструменте для обеспечения равных результатов. Таким образом, вы получите те же результаты, даже используя онлайн-инструмент сравнения или используя метод сравнения. Aspose.Words.

{{% /alert %}}

## Ограничения и поддерживаемые форматы файлов {#limitations-and-supported-file-formats}

Сравнение документов – очень сложная особенность. Существуют различные части комбинации контента, которые необходимо проанализировать, чтобы распознать все различия. Причина такой сложности заключается в том, что Aspose.Words стремится получить те же результаты сравнения, что и Microsoft Word алгоритм сравнения.

Общим ограничением для двух сравниваемых документов является то, что они не должны иметь пересмотра, прежде чем называть метод сравнения, поскольку это ограничение существует. Microsoft Word.

{{% alert color="primary" %}}

Обратите внимание, что вы можете сравнить любые два документа. [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/). По сути, вы можете сравнивать объекты документов и даже создавать эти объекты с нуля без какого-либо определенного формата.

{{% /alert %}}

## Сравните два документа {#compare-two-documents}

Когда вы сравниваете документы, отличия последнего документа от первого появляются в виде изменений к первому. При изменении документа каждое редактирование будет иметь свой собственный пересмотр после запуска метода сравнения.

Aspose.Words позволяет выявить отличия документов с помощью [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) метод – это аналогично Microsoft Word Особенность сравнения документов. Он позволяет проверять документы или версии документов, чтобы найти различия и изменения, включая изменения форматирования, такие как изменения шрифта, изменения интервала, добавление слов и абзацев.

В результате сравнения документы могут быть определены как равные или не равные. Термин "равные" документы означает, что метод сравнения не может представлять изменения в виде пересмотров. Это означает, что и текст документа, и форматирование текста одинаковы. Между документами могут быть и другие различия. Например, Microsoft Word Поддерживает только изменения формата для стилей, и вы не можете представлять вставку / удаление стиля. Таким образом, документы могут иметь различный набор стилей, и [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) Метод до сих пор не производит никаких изменений.

Следующий пример кода показывает, как проверить, равны ли два документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Следующий пример кода показывает, как просто применить `Compare` Способ до двух документов:

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

## Укажите расширенные свойства сравнения {#specify-advanced-comparing-properties}

Существует множество различных свойств [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/) Класс, который вы можете применить, если хотите сравнить документы.

Например, Aspose.Words позволяет игнорировать изменения, внесенные в ходе операции сравнения для определенных типов объектов в исходном документе. Вы можете выбрать подходящее свойство для типа объекта, например: [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), и других, устанавливая их на `True`.

Кроме того, Aspose.Words обеспечивает [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/) свойство, с помощью которого можно указать, отслеживать изменения по характеру или по слову.

Другим общим свойством является выбор, в котором документ показывает изменения сравнения. Например, "Сравнить документы диалогового окна" в Microsoft Word Имеется опция "Показать изменения" - это также влияет на результаты сравнения. Aspose.Words обеспечивает [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/) собственности, которая служит этой цели.

Следующий пример кода показывает, как установить расширенные свойства сравнения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
