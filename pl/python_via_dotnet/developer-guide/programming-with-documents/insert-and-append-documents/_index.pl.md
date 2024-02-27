---
title: Wstaw i dołącz dokumenty
second_title: Aspose.Words dla Python via .NET
articleTitle: Wstaw i dołącz dokumenty
linktitle: Wstaw i dołącz dokumenty
description: "Łącz dokumenty w jeden: wstaw lub dołącz dokument do nowego lub istniejącego za pomocą funkcji Znajdź i zamień, pola scalania, zakładki lub po prostu na końcu dokumentu w Python."
type: docs
weight: 80
url: /pl/python-net/insert-and-append-documents/
---

Czasami wymagane jest połączenie kilku dokumentów w jeden. Możesz to zrobić ręcznie lub możesz użyć funkcji wstawiania lub dołączania Aspose.Words.

Operacja wstawiania umożliwia wstawienie treści wcześniej utworzonych dokumentów do nowego lub istniejącego.

Z kolei funkcja dołączania pozwala na dodanie dokumentu dopiero na końcu innego dokumentu.

W tym artykule wyjaśniono, jak wstawić lub dołączyć dokument do innego na różne sposoby i opisano typowe właściwości, które można zastosować podczas wstawiania lub dołączania dokumentów.

## Wstaw dokument

Jak wspomniano powyżej, w Aspose.Words dokument jest reprezentowany jako drzewo węzłów, a operacja wstawienia jednego dokumentu do drugiego polega na skopiowaniu węzłów z pierwszego drzewa dokumentu do drugiego.

Dokumenty można wstawiać w różnych lokalizacjach na różne sposoby. Można na przykład wstawić dokument poprzez operację zamiany, pole scalania podczas operacji scalania lub poprzez zakładkę.

Możesz także użyć metody [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) lub [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), która jest podobna do wstawiania dokumentu w formacie Microsoft Word, aby wstawić cały dokument w bieżącej pozycji kursora bez wcześniejszego importowania.

Poniższy przykład kodu pokazuje, jak wstawić dokument przy użyciu metody **wstaw_dokument**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

Poniższy przykład kodu pokazuje, jak wstawić dokument przy użyciu metody **wstaw_dokument_w wierszu**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

W poniższych podrozdziałach opisano możliwości wstawiania jednego dokumentu do drugiego.

### Wstaw dokument w zakładce

Możesz zaimportować plik tekstowy do dokumentu i wstawić go zaraz za zakładką zdefiniowaną w dokumencie. Aby to zrobić, utwórz zakładkę akapitu, w którym chcesz wstawić dokument.

Poniższy przykład kodowania pokazuje, jak wstawić zawartość jednego dokumentu do zakładki w innym dokumencie:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Pamiętaj, że zakładka nie powinna zawierać wielu akapitów ani tekstu, który ma się pojawić w ostatecznym dokumencie wynikowym.

{{% /alert %}}

## Dołącz dokument

Może się zdarzyć, że zajdzie potrzeba dołączenia dodatkowych stron z dokumentu na końcu istniejącego dokumentu. Aby to zrobić, wystarczy wywołać metodę [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/), aby dodać dokument na końcu innego.

{{% alert color="primary" %}}

Należy pamiętać, że [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) jest metodą na poziomie węzła w dokumencie. Można na przykład utworzyć akapit, ustawić właściwości formatowania, a następnie dołączyć go jako element podrzędny do treści, korzystając z metody [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć dokument na końcu innego dokumentu:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importuj i wstawiaj węzły ręcznie

Aspose.Words umożliwia automatyczne wstawianie i dołączanie dokumentów bez konieczności wcześniejszego importowania. Jeśli jednak chcesz wstawić lub dołączyć określony węzeł dokumentu, na przykład sekcję lub akapit, musisz najpierw ręcznie zaimportować ten węzeł.

Kiedy chcesz wstawić lub dołączyć jedną sekcję lub akapit do drugiej, zasadniczo musisz zaimportować węzły pierwszego drzewa węzłów dokumentu do drugiego przy użyciu metody [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Po zaimportowaniu węzłów należy użyć metody [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/), aby wstawić nowy węzeł za/przed węzłem referencyjnym. Pozwala to dostosować proces wstawiania poprzez import węzłów z dokumentu i wstawianie ich w określonych pozycjach.

Możesz także użyć metody [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/), aby dodać nowy określony węzeł na końcu listy węzłów podrzędnych, na przykład jeśli chcesz dołączyć treść na poziomie akapitu, a nie sekcji.

Poniższy przykład kodu pokazuje, jak ręcznie importować węzły i wstawiać je po określonym węźle przy użyciu metody [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

Import tworzy nowy węzeł będący kopią węzła pierwotnego i nadający się do wstawienia do dokumentu docelowego.

{{% /alert %}}

Treść jest importowana do dokumentu docelowego sekcja po sekcji, co oznacza, że ustawienia, takie jak ustawienia strony oraz nagłówki i stopki, zostaną zachowane podczas importu. Warto również pamiętać, że podczas wstawiania lub dołączania dokumentu można zdefiniować ustawienia formatowania, aby określić sposób łączenia dwóch dokumentów.

## Wspólne właściwości wstawiania i dołączania dokumentów

Obie metody [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) i [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) akceptują [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) i [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) jako parametry wejściowe. Plik [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) pozwala kontrolować sposób łączenia formatowania dokumentu podczas importowania treści z jednego dokumentu do drugiego, wybierając różne tryby formatu, takie jak [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) i [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) umożliwia wybranie różnych opcji importu, takich jak [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) i [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words umożliwia dostosowanie wizualizacji dokumentu wynikowego po dodaniu dwóch dokumentów podczas operacji wstawiania lub dołączania przy użyciu formatów [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) i [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). Właściwość [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) zawiera wszystkie atrybuty sekcji, takie jak [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) i inne. Najczęstszym przypadkiem użycia jest ustawienie właściwości [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) w celu określenia, czy dodana treść pojawi się na tej samej stronie, czy zostanie podzielona na nową.

{{% alert color="primary" %}}

Należy pamiętać, że [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) i [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) nie kontrolują sposobu wstawiania/dołączenia dwóch dokumentów. Pozwalają jedynie na zmianę wyglądu dokumentu wynikowego.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak dołączyć jeden dokument do drugiego, jednocześnie zapobiegając podziałowi treści na dwie strony:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
