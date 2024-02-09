---
title: Określ opcje układu w Python
second_title: Aspose.Words dla Python via .NET
articleTitle: Określ opcje układu
linktitle: Określ opcje układu
description: "Określ opcje układu dla różnych układów dokumentów za pomocą Python."
type: docs
weight: 10
url: /pl/python-net/specify-layout-options/
---

Aspose.Words umożliwia tworzenie dokumentów wyjściowych o różnych układach, w zależności od parametrów określonych we właściwościach klasy [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Niektóre z tych właściwości przypominają niektóre opcje menu interfejsu użytkownika Microsoft Word – zostaną one opisane w tym artykule.

Pełną listę parametrów, takich jak [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) do obliczania numerów stron w ciągłej sekcji, która ponownie rozpoczyna numerowanie stron, lub [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) do ignorowania opcji zgodności "Użyj metryk drukarki do układu dokumentu", zobacz stronę klas [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Formatowanie znaków

Aspose.Words pozwala zarządzać znacznikami formatowania za pomocą następujących właściwości:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – wartość `Boolean` określająca, czy renderowany jest ukryty tekst.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – wartość `Boolean`, która określa, czy renderowane są znaki znaczników akapitu.

Strona pokazana w poniższym przykładzie zawiera trzy akapity. Drugi jest ukryty. Użytkownik może zmienić opcję [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/), aby wyświetlić ten ukryty tekst na stronie. Ponadto każdy akapit ma na końcu znak akapitu. Znak akapitu zwykle nie jest widoczny, chyba że właściwość [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) jest ustawiona tak, aby go renderować.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

W Microsoft Word parametry te ustawia się za pomocą okna dialogowego "Plik → Opcje → Wyświetlanie" w następujący sposób:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Komentarze i poprawki

Dzięki Aspose.Words możesz renderować komentarze do dokumentów, które będą wyglądać tak samo jak w Microsoft Word. Aby określić, czy komentarze mają być renderowane, użyj właściwości [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

W Microsoft Word ten parametr ustawia się za pomocą okna dialogowego "Opcje śledzenia zmian", jak pokazano poniżej:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Aspose.Words umożliwia także wyświetlanie wersji w dokumencie. Użyj właściwości [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) klasy [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/), aby określić, czy mają być wyświetlane wersje dokumentu. Aby kontrolować ich wygląd (kolor podświetlenia wersji, kolor paska wersji itp.), użyj klasy [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Wersje można także wyświetlać jako komentarze do treści. W tym celu należy wykorzystać właściwość [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) i wartość [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

Poniższy przykład kodu pokazuje, jak dostosować wyświetlanie wersji:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

Poniższy obraz pokazuje, jak Aspose.Words renderuje komentarze i usuwa wersje:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="komentarze_and_rewizje_example_aspose_words_net" style="width:800px"/>