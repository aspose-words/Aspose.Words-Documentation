---
title: Porównaj dokumenty w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Porównaj dokumenty
linktitle: Porównaj dokumenty
description: "Porównaj dwa dokumenty w dowolnych obsługiwanych formatach i pokaż zmiany treści za pomocą Python. Podczas porównywania możesz zastosować opcje zaawansowane."
type: docs
weight: 60
url: /pl/python-net/compare-documents/
---

Porównywanie dokumentów to proces, który identyfikuje zmiany między dwoma dokumentami i traktuje zmiany jako poprawki. W procesie tym porównywane są dowolne dwa dokumenty, w tym wersje jednego konkretnego dokumentu, następnie zmiany pomiędzy obydwoma dokumentami zostaną pokazane jako poprawki w pierwszym dokumencie.

Metodę porównania osiąga się poprzez porównywanie słów na poziomie znaku lub na poziomie słowa. Jeśli słowo zawiera zmianę przynajmniej jednego znaku, w rezultacie różnica zostanie wyświetlona jako zmiana całego słowa, a nie znaku. Ten proces porównywania jest typowym zadaniem w branży prawniczej i finansowej.

Zamiast ręcznie wyszukiwać różnice między dokumentami lub między ich różnymi wersjami, możesz użyć Aspose.Words do porównywania dokumentów i uzyskiwania zmian w treści w formatowaniu, nagłówku/stopce, tabelach i nie tylko.

W tym artykule wyjaśniono, jak porównywać dokumenty i jak określać zaawansowane właściwości porównywania.

{{% alert color="primary" %}}

**Spróbuj online**

Możesz porównać dwa dokumenty online, korzystając z narzędzia [Porównanie dokumentów online](https://products.aspose.app/words/comparison).

Należy pamiętać, że w tym narzędziu zastosowano metodę porównania opisaną poniżej, aby zapewnić uzyskanie jednakowych wyników. Dzięki temu takie same wyniki uzyskasz nawet korzystając z porównywarki online lub metody porównawczej w Aspose.Words.

{{% /alert %}}

## Ograniczenia i obsługiwane formaty plików {#limitations-and-supported-file-formats}

Porównywanie dokumentów to bardzo złożona funkcja. Istnieją różne części kombinacji treści, które należy przeanalizować, aby rozpoznać wszystkie różnice. Powodem tej złożoności jest fakt, że Aspose.Words ma na celu uzyskanie takich samych wyników porównania, jak algorytm porównania Microsoft Word.

Ogólne ograniczenie dotyczące dwóch porównywanych dokumentów polega na tym, że przed wywołaniem metody porównywania nie można w nich wprowadzać poprawek, ponieważ takie ograniczenie istnieje w Microsoft Word.

{{% alert color="primary" %}}

Pamiętaj, że w [Obsługiwane formaty dokumentów](/words/pl/python-net/supported-document-formats/) możesz porównać dowolne dwa dokumenty. Zasadniczo możesz porównywać obiekty dokumentów, a nawet tworzyć te obiekty od podstaw, bez określonego formatu.

{{% /alert %}}

## Porównaj dwa dokumenty {#compare-two-documents}

Kiedy porównujesz dokumenty, różnice między drugim dokumentem a pierwszym ukazują się jako poprawki do pierwszego. Kiedy modyfikujesz dokument, każda edycja będzie miała własną wersję po uruchomieniu metody porównania.

Aspose.Words umożliwia identyfikację różnic w dokumentach za pomocą metody [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) – jest to podobne do funkcji porównywania dokumentów Microsoft Word. Umożliwia sprawdzanie dokumentów lub wersji dokumentów pod kątem różnic i zmian, w tym modyfikacji formatowania, takich jak zmiany czcionki, zmiany odstępów, dodanie słów i akapitów.

W wyniku porównania dokumenty można określić jako równe lub nierówne. Termin "równe" dokumenty oznacza, że metoda porównawcza nie jest w stanie przedstawić zmian jako poprawek. Oznacza to, że zarówno tekst dokumentu, jak i formatowanie tekstu są takie same. Pomiędzy dokumentami mogą jednak występować inne różnice. Na przykład Microsoft Word obsługuje tylko wersje formatu stylów i nie można reprezentować wstawiania/usuwania stylu. Dlatego dokumenty mogą mieć inny zestaw stylów, a metoda [compare](https://reference.aspose.com/words/python-net/aspose.words/document/compare/) nadal nie generuje żadnych poprawek.

Poniższy przykład kodu pokazuje, jak sprawdzić, czy dwa dokumenty są równe, czy nie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareForEqual.py" >}}

Poniższy przykład kodu pokazuje, jak po prostu zastosować metodę `Compare` do dwóch dokumentów:

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

## Określ zaawansowane właściwości porównywania {#specify-advanced-comparing-properties}

Istnieje wiele różnych właściwości klasy [CompareOptions](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/), które można zastosować, gdy chcesz porównać dokumenty.

Na przykład Aspose.Words pozwala zignorować zmiany wprowadzone podczas operacji porównywania dla niektórych typów obiektów w oryginalnym dokumencie. Możesz wybrać odpowiednią właściwość dla typu obiektu, taką jak [ignore_headers_and_footers](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_headers_and_footers/), [ignore_formatting](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_formatting/), [ignore_comments](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/ignore_comments/) i inne, ustawiając je na `True`.

Dodatkowo Aspose.Words udostępnia właściwość [granularity](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/granularity/), za pomocą której można określić, czy zmiany mają być śledzone po znaku, czy po słowie.

Inną wspólną właściwością jest wybór, w którym dokumencie mają być pokazane zmiany porównawcze. Przykładowo w oknie dialogowym "Porównaj dokumenty" w Microsoft Word dostępna jest opcja "Pokaż zmiany w" – ma to również wpływ na wyniki porównania. Aspose.Words udostępnia właściwość [target](https://reference.aspose.com/words/python-net/aspose.words.comparing/compareoptions/target/), która służy temu celowi.

Poniższy przykład kodu pokazuje, jak ustawić zaawansowane właściwości porównywania:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-compare_documents-CompareOptions.py" >}}
