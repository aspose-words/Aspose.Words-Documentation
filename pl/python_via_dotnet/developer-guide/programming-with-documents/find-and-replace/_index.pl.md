---
title: Znajdź i zamień w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Znajdź i zamień
linktitle: Znajdź i zamień
type: docs
description: "Znajdź ciąg znaków lub wzorzec wyrażenia regularnego w swoim dokumencie i zastąp go żądanym tekstem, korzystając z Python."
weight: 100
url: /pl/python-net/find-and-replace/
---

Możesz łatwo poruszać się po dokumencie za pomocą klawiatury i myszy, ale jeśli masz wiele stron do przewinięcia, znalezienie określonego tekstu w długim dokumencie zajmie sporo czasu. Zastąpienie niektórych znaków lub słów użytych w dokumencie będzie bardziej czasochłonne. Funkcjonalność "Znajdź i zamień" umożliwia odnalezienie ciągu znaków w dokumencie i zastąpienie go innym ciągiem znaków.

Aspose.Words umożliwia znalezienie określonego ciągu znaków lub wzorca wyrażenia regularnego w dokumencie i zastąpienie go alternatywą bez instalowania i używania dodatkowych aplikacji, takich jak Microsoft Word. Przyspieszy to wiele zadań związanych z pisaniem i formatowaniem, potencjalnie oszczędzając godziny pracy.

W tym artykule wyjaśniono, jak zastosować zamianę ciągów i wyrażenia regularne z obsługą metaznaków.

## Sposoby znajdowania i zamiany {#ways-to-find-and-replace}

Aspose.Words udostępnia dwa sposoby stosowania operacji znajdowania i zamieniania, korzystając z następujących metod:

1. *Prosta zamiana ciągu* – aby znaleźć i zamienić konkretny ciąg na inny, należy podać szukany ciąg (znaki alfanumeryczne), który będzie zastępowany każdorazowo wystąpieniem innego określonego ciągu zastępczego. Oba ciągi nie mogą zawierać symboli. Weź pod uwagę, że przy porównywaniu ciągów może uwzględniać wielkość liter lub możesz nie być pewien pisowni lub mieć kilka podobnych pisowni.
2. *Wyrażenia regularne* – aby określić wyrażenie regularne, aby znaleźć dokładnie pasujące ciągi znaków i zastąpić je zgodnie z wyrażeniem regularnym. Należy pamiętać, że słowo definiuje się jako składające się wyłącznie ze znaków alfanumerycznych. Jeśli zamiana zostanie wykonana z dopasowaniem tylko całych słów, a ciąg wejściowy będzie zawierał symbole, wówczas nie zostaną znalezione żadne frazy.

Ponadto można używać specjalnych metaznaków przy prostej zamianie ciągów znaków i wyrażeń regularnych w celu określenia przerw w operacji znajdowania i zamiany.

Aspose.Words przedstawia funkcję wyszukiwania i zamiany w module [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Podczas procesu znajdowania i zamieniania można pracować z wieloma opcjami, korzystając z klasy [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Znajdź i zamień tekst za pomocą prostego zastępowania ciągów {#find-and-replace-text-using-simple-string-replacement}

Możesz użyć jednej z metod [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) i [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/), aby znaleźć lub zamienić określony ciąg znaków i zwrócić liczbę dokonanych zamian. W takim przypadku możesz określić ciąg znaków, który ma zostać zastąpiony, ciąg, który zastąpi wszystkie jego wystąpienia, czy przy zamianie uwzględniana jest wielkość liter i czy wpłynie to tylko na pojedyncze słowa.

Poniższy przykład kodu pokazuje, jak znaleźć ciąg "_CustomerName_" i zastąpić go ciągiem *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem prostej zamiany ciągu znaków:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="przed wyjściem wymianą ciągu" style="width:600px"/>

A po zastosowaniu prostej zamiany ciągów:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="po pozostawieniu w domu" style="width:600px"/>

### Znajdź i zamień tekst za pomocą wyrażeń regularnych {#find-and-replace-text-using-regular-expressions}

Wyrażenie regularne to wzorzec opisujący określoną sekwencję tekstu. Załóżmy, że chcesz zastąpić wszystkie podwójne wystąpienia słowa pojedynczym wystąpieniem słowa. Następnie możesz zastosować następujące wyrażenie regularne, aby określić wzorzec podwójnych słów: `([a-zA-Z]+) \1`.

Użyj metody [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/), aby wyszukać i zastąpić określone kombinacje znaków, ustawiając parametr wyrażenia regularnego jako wzorzec do wyszukiwania dopasowań.

Poniższy przykład kodu pokazuje, jak zastąpić ciągi pasujące do wzorca wyrażenia regularnego określonym ciągiem zastępczym:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Różnicę pomiędzy dokumentem można zauważyć przed zastosowaniem zamiany ciągów na wyrażenia regularne:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="przed-zamianą-wyrażeń-regularnych" style="width:600px"/>

A po zastosowaniu zamiany ciągów na wyrażenia regularne:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="po zamianie na odpowiedni" style="width:600px"/>

### Znajdź i zamień ciąg przy użyciu metaznaków {#find-and-replace-text-using-metacharacters}

Jeśli dany tekst lub fraza składa się z wielu akapitów, sekcji lub stron, możesz użyć metaznaków w ciągu wyszukiwania lub ciągu zastępczym. Niektóre metaznaki obejmują **&amp;P** dla podziału akapitu, **&amp;B** dla podziału sekcji, **&amp;M** dla podziału strony i **&amp;l** dla podziału wiersza.

{{% alert color="primary" %}}

Należy pamiętać, że metaznak **&&** jest równy **&**. Na przykład, jeśli chcesz znaleźć tekst w formacie **&amp;P**, który nie jest podziałem akapitu, możesz użyć **&amp;&amp;P**.

{{% /alert %}}

Poniższy przykład kodu pokazuje, jak zastąpić tekst akapitem i podziałem strony:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Znajdź i zamień ciąg w nagłówku/stopce dokumentu {#find-and-replace-string-in-header-or-footer-of-a-document}

Możesz znaleźć i zamienić tekst w sekcji nagłówka/stopki dokumentu Word, korzystając z klasy [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

Poniższy przykład kodu pokazuje, jak zastąpić tekst sekcji nagłówka w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem zamiany ciągu nagłówka:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="przed zmianą ciągu nagłówka" style="width:600px"/>

A po zastosowaniu zamiany ciągu nagłówka:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="po zastosowaniu ciągłego nagłówka po zastosowaniu" style="width:600px"/>

Przykładowy kod zastępujący tekst sekcji stopki w dokumencie jest bardzo podobny do poprzedniego przykładowego kodu nagłówka. Wszystko, co musisz zrobić, to zastąpić następujące dwie linie:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Z następującymi:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Możesz zauważyć różnicę między dokumentem przed zastosowaniem zamiany ciągu stopki:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="przed wymianą-stringu-stopki" style="width:600px"/>

A po zastosowaniu zamiany ciągu stopki:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="wymień ciąg stopki po zastosowaniu" style="width:600px"/>

## Ignoruj tekst podczas wyszukiwania i zamiany {#ignore-text-during-find-and-replace}

Stosując operację znajdź i zamień, możesz zignorować niektóre segmenty tekstu. Zatem niektóre części tekstu można wykluczyć z wyszukiwania, a funkcję Znajdź i Zamień można zastosować tylko do pozostałych części.

Aspose.Words udostępnia wiele właściwości wyszukiwania i zamiany umożliwiających ignorowanie tekstu, takich jak [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) i [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

Poniższy przykład kodu pokazuje, jak zignorować tekst w usuwanych wersjach:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Dostosuj operację Znajdź i zamień {#customize-find-and-replace-operation}

Aspose.Words udostępnia wiele różnych właściwości do wyszukiwania i zamiany tekstu, takich jak stosowanie określonego formatu za pomocą właściwości [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) i [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), używanie podstawień we wzorcach zastępowania za pomocą właściwości [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) i inne.

Poniższy przykład kodu pokazuje, jak wyróżnić określone słowo w dokumencie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
