---
title: Konwertuj dokument na format PDF w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj dokument na format PDF
linktitle: Konwertuj dokument na format PDF
description: "Konwertuj dokument do formatu PDF za pomocą Python. Obsługiwane są różne formaty wejściowe, w tym formaty Word, OpenOffice, Image i eBook."
type: docs
weight: 10
url: /pl/python-net/convert-a-document-to-pdf/
---

Możliwość łatwej i niezawodnej konwersji dokumentów z jednego formatu na inny jest kluczową cechą Aspose.Words. Jednym z najpopularniejszych formatów do konwersji jest PDF – format o stałym układzie, który zachowuje oryginalny wygląd dokumentu podczas jego renderowania na różnych platformach. Termin "renderowanie" jest używany w Aspose.Words do opisania procesu konwertowania dokumentu do formatu pliku podzielonego na strony lub mającego koncepcję stron.

## Konwertuj dokument programu Word na format PDF {#convert-a-word-document-to-pdf}

Konwersja z programu Word do formatu PDF jest dość złożonym procesem, który wymaga kilku etapów obliczeń. Silnik układu Aspose.Words naśladuje sposób działania silnika układu strony Microsoft Word, dzięki czemu dokumenty wyjściowe PDF wyglądają jak najbliżej tego, co można zobaczyć w Microsoft Word.

Dzięki Aspose.Words możesz programowo konwertować dokument z formatów Word, takich jak DOC lub DOCX, do formatu PDF bez korzystania z pakietu Microsoft Office. W tym artykule wyjaśniono, jak przeprowadzić tę konwersję.

{{% alert color="primary" %}}

Należy pamiętać, że liczba stron w dokumencie wpływa na czas konwersji.

{{% /alert %}}

### Konwertuj DOC lub DOCX na PDF {#convert-doc-or-docx-to-pdf}

Konwersja z formatu dokumentu DOC lub DOCX na format PDF w formacie Aspose.Words jest bardzo łatwa i można ją wykonać za pomocą zaledwie dwóch linii kodu, które:

1. Załaduj dokument do obiektu [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), korzystając z jednego z jego konstruktorów, podając nazwę dokumentu wraz z rozszerzeniem formatu.
1. Wywołaj jedną z metod [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) na obiekcie [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) i określ żądany format wyjściowy jako PDF, wpisując nazwę pliku z rozszerzeniem ".PDF".

Poniższy przykład kodu pokazuje, jak przekonwertować dokument z formatu DOCX na format PDF przy użyciu metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

Możesz pobrać plik szablonu tego przykładu z [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% alert color="primary" %}}

Czasami konieczne jest określenie dodatkowych opcji, które mogą mieć wpływ na wynik zapisu dokumentu w formacie PDF. Opcje te można określić za pomocą klasy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) zawierającej właściwości określające sposób wyświetlania pliku wyjściowego PDF.

Pamiętaj, że za pomocą tej samej techniki możesz przekonwertować dowolny dokument w formacie układu przepływu na format PDF.

{{% /alert %}}

### Konwertuj na różne standardy PDF {#convert-to-various-pdf-standards}

Aspose.Words udostępnia wyliczenie [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) w celu obsługi konwersji DOC lub DOCX na różne standardy formatu PDF (takie jak PDF 1.7, PDF 1.5 itp.).

Poniższy przykład kodu demonstruje, jak przekonwertować dokument do formatu PDF 1.7 przy użyciu formatu [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) i zgodności z [PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17):

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## Konwertuj obrazy do formatu PDF

Konwersja do formatu PDF nie jest ograniczona formatami dokumentów Microsoft Word. Dowolny format obsługiwany przez Aspose.Words, w tym utworzony programowo, można również przekonwertować na format PDF. Na przykład możemy konwertować obrazy jednostronicowe, takie jak JPEG, PNG, BMP, EMF lub WMF, a także obrazy wielostronicowe, takie jak TIFF i GIF, do formatu PDF.

Poniższy przykład kodu pokazuje, jak konwertować obrazy JPEG i TIFF do formatu PDF:

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

Aby ten kod działał, musisz dodać do swojego projektu odniesienia do Aspose.Words i `aspose.pydrawing`.

## Zmniejsz rozmiar wyjściowy pliku PDF

Podczas zapisywania w formacie PDF możesz określić, czy chcesz zoptymalizować wydruk. Aby to zrobić, należy ustawić flagę [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) na true, a następnie zbędne zagnieżdżone i puste płótna zostaną usunięte, a sąsiadujące pliki glyph o tym samym formatowaniu zostaną połączone.

{{% alert color="primary" %}}

Korzystanie z właściwości **OptimizeOutput** może mieć wpływ na dokładność wyświetlania treści.

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## Zmniejsz rozmiar wyjściowy pliku PDF

Podczas zapisywania w formacie PDF możesz określić, czy chcesz zoptymalizować wydruk. Aby to zrobić, należy ustawić flagę [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) na true, a następnie zbędne zagnieżdżone i puste płótna zostaną usunięte, a sąsiadujące pliki glyph o tym samym formatowaniu zostaną połączone.

{{% alert color="primary" %}}

Korzystanie z właściwości **OptimizeOutput** może mieć wpływ na dokładność wyświetlania treści.

{{% /alert %}}

## Zobacz też

- Artykuł [Wykonanie](/words/pl/python-net/rendering/) zawiera więcej informacji na temat formatów o stałej stronie i formatach z układem przepływu
- Artykuł [Konwersja do formatu o stałej stronie](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) zawiera więcej informacji na temat układu strony
- Artykuł [Określ opcje renderowania podczas konwersji do formatu PDF](/words/pl/python-net/specify-rendering-options-when-converting-to-pdf/) zawiera więcej informacji na temat korzystania z klasy [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/)
