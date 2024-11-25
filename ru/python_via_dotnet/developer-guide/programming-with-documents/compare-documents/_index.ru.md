---
title: Сравнение документов в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Сравнение документов
linktitle: Сравнение документов
description: "Сравните два документа в любых поддерживаемых форматах и отобразите изменения в содержании, используя Python. Вы можете применить дополнительные параметры при сравнении."
type: docs
weight: 60
url: /ru/python-net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Сравнение документов - это процесс, который идентифицирует изменения между двумя документами и содержит изменения в виде ревизий. Этот процесс сравнивает любые два документа, включая версии одного конкретного документа, после чего изменения между обоими документами будут показаны как ревизии в первом документе.

Метод сравнения достигается путем сравнения слов на уровне символов или на уровне словосложения. Если в слове изменен хотя бы один символ, в результате разница будет отображаться как изменение всего слова, а не символа. Этот процесс сравнения является обычной задачей в юридической и финансовой отраслях.

Вместо ручного поиска различий между документами или их различными версиями вы можете использовать Aspose.Words для сравнения документов и получения изменений в форматировании, верхнем и нижнем колонтитулах, таблицах и многом другом.

В этой статье объясняется, как сравнивать документы и как задать расширенные свойства для сравнения.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете сравнить два документа онлайн, воспользовавшись функцией [Сравнение документов онлайн](https://products.aspose.app/words/comparison) инструмент.

Обратите внимание, что метод сравнения, описанный ниже, используется в этом инструменте для обеспечения получения одинаковых результатов. Таким образом, вы получите одинаковые результаты даже при использовании онлайн-инструмента сравнения или метода сравнения в Aspose.Words.

{{% /alert %}}

## Ограничения и поддерживаемые форматы файлов {#limitations-and-supported-file-formats}

Сравнение документов - очень сложная функция. Существуют различные комбинации элементов контента, которые необходимо проанализировать, чтобы выявить все различия. Причина этой сложности заключается в том, что алгоритм Aspose.Words стремится получить те же результаты сравнения, что и алгоритм Microsoft Word.

Общее ограничение для двух сравниваемых документов заключается в том, что они не должны иметь изменений перед вызовом метода compare, поскольку это ограничение существует в Microsoft Word.

{{% alert color="primary" %}}

Обратите внимание, что вы можете сравнить любые два документа в рамках [поддерживаемые форматы файлов](/words/python-net/supported-document-formats/). В принципе, вы можете сравнивать объекты документа и даже создавать эти объекты с нуля, не имея какого-либо определенного формата.

{{% /alert %}}

## Сравнение двух документов {#compare-two-documents}

Когда вы сравниваете документы, отличия последнего документа от первого отображаются в виде изменений по сравнению с первым. Когда вы изменяете документ, после выполнения метода сравнения каждая правка будет иметь свою собственную редакцию.

Aspose.Words позволяет идентифицировать различия в документах с помощью метода [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) – это аналогично функции сравнения документов Microsoft Word. Позволяет проверять документы или их версии на предмет различий и изменений, включая изменения в форматировании, такие как изменение шрифта, изменение интервалов, добавление слов и абзацев.

В результате сравнения документы могут быть определены как равные или неравнозначные. Термин "равные" документы означает, что метод сравнения не позволяет представить изменения в виде ревизий. Это означает, что текст документа и его форматирование одинаковы. Но между документами могут быть и другие различия. Например, Microsoft Word поддерживает только изменения формата для стилей, и вы не можете отображать вставку/удаление стилей. Таким образом, в документах может быть другой набор стилей, а метод [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) по-прежнему не производит изменений.

В следующем примере кода показано, как проверить, равны ли два документа или нет:

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

## Укажите расширенные свойства сравнения {#specify-advanced-comparing-properties}

Существует множество различных свойств класса [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/), которые вы можете применить, когда захотите сравнить документы.

Например, Aspose.Words позволяет игнорировать изменения, внесенные во время операции сравнения для определенных типов объектов в исходном документе. Вы можете выбрать подходящее свойство для типа объекта, например [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/), и другие, установив для них значение `True`.

Кроме того, Aspose.Words предоставляет свойство [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/), с помощью которого вы можете указать, следует ли отслеживать изменения по символу или по слову.

Другим распространенным свойством является выбор того, в каком документе показывать изменения для сравнения. Например, в диалоговом окне "Сравнить документы" в Microsoft Word есть опция "Показывать изменения в" – это также влияет на результаты сравнения. Aspose.Words предоставляет свойство [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/), которое служит для этой цели.

В следующем примере кода показано, как задать расширенные свойства сравнения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
