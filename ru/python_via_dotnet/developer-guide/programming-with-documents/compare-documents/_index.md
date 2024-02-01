---
title: Сравнить документы в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сравнить документы
linktitle: Сравнить документы
description: "Сравните два документа в любых поддерживаемых форматах и отобразите изменения содержимого, используя Python. При сравнении можно применить дополнительные параметры."
type: docs
weight: 60
url: /ru/python-net/compare-documents/
---

Сравнение документов — это процесс, который идентифицирует изменения между двумя документами и сохраняет эти изменения в виде редакций. В этом процессе сравниваются любые два документа, включая версии одного конкретного документа, после чего изменения между обоими документами будут отображаться как исправления в первом документе.

Метод сравнения достигается путем сравнения слов на уровне символов или на уровне слов. Если слово содержит изменение хотя бы одного символа, в результате разница будет отображена как изменение всего слова, а не символа. Этот процесс сравнения является обычной задачей в юридической и финансовой отраслях.

Вместо ручного поиска различий между документами или между разными их версиями вы можете использовать Aspose.Words для сравнения документов и получения изменений содержимого в форматировании, верхнем/нижнем колонтитуле, таблицах и т.д.

В этой статье объясняется, как сравнивать документы и как указать расширенные свойства сравнения.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете сравнить два документа онлайн с помощью инструмента [Сравнение документов онлайн](https://products.aspose.app/words/comparison).

Обратите внимание, что метод сравнения, описанный ниже, используется в этом инструменте для обеспечения получения одинаковых результатов. Таким образом, вы получите те же результаты, даже используя инструмент онлайн-сравнения или метод сравнения в Aspose.Words.

{{% /alert %}}

## Ограничения и поддерживаемые форматы файлов {#limitations-and-supported-file-formats}

Сравнение документов — очень сложная функция. Существуют различные части комбинации контента, которые необходимо проанализировать, чтобы выявить все различия. Причина этой сложности связана с тем, что Aspose.Words стремится получить те же результаты сравнения, что и алгоритм сравнения Microsoft Word.

Общее ограничение для двух сравниваемых документов заключается в том, что они не должны иметь редакций до вызова метода сравнения, поскольку это ограничение существует в версии Microsoft Word.

{{% alert color="primary" %}}

Обратите внимание, что вы можете сравнивать любые два документа в пределах [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/). По сути, вы можете сравнивать объекты документов и даже создавать эти объекты с нуля, не имея какого-либо определенного формата.

{{% /alert %}}

## Сравнить два документа {#compare-two-documents}

Когда вы сравниваете документы, отличия последнего документа от первого проявляются в виде изменений в первом. Когда вы изменяете документ, каждое изменение будет иметь свою собственную версию после запуска метода сравнения.

Aspose.Words позволяет выявлять различия документов с помощью метода [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) — это аналогично функции сравнения документов Microsoft Word. Он позволяет вам проверять документы или версии документов на предмет различий и изменений, включая изменения форматирования, такие как изменения шрифта, изменения интервалов, добавление слов и абзацев.

В результате сравнения документы могут быть определены как равные или не равные. Термин "равные" документы означает, что метод сравнения не может представлять изменения как версии. Это означает, что и текст документа, и форматирование текста одинаковы. Но между документами могут быть и другие различия. Например, Microsoft Word поддерживает только версии формата для стилей, и вы не можете представить вставку/удаление стиля. Таким образом, документы могут иметь другой набор стилей, а метод [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) по-прежнему не создает никаких изменений.

В следующем примере кода показано, как проверить, равны ли два документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

В следующем примере кода показано, как просто применить метод `Compare` к двум документам:

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

## Укажите свойства расширенного сравнения {#specify-advanced-comparing-properties}

Существует множество различных свойств класса [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/), которые вы можете применить, когда хотите сравнить документы.

Например, Aspose.Words позволяет игнорировать изменения, внесенные во время операции сравнения для определенных типов объектов в исходном документе. Вы можете выбрать подходящее свойство для типа объекта, например [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) и другие, установив для них значение `True`.

Кроме того, Aspose.Words предоставляет свойство [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/), с помощью которого можно указать, следует ли отслеживать изменения по символам или по словам.

Еще одним общим свойством является выбор, в каком документе отображать изменения сравнения. Например, в "Диалоговом окне "Сравнить документы"" в Microsoft Word есть опция "Показать изменения в" — это тоже влияет на результаты сравнения. Aspose.Words предоставляет свойство [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/), которое служит этой цели.

В следующем примере кода показано, как установить расширенные свойства сравнения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
