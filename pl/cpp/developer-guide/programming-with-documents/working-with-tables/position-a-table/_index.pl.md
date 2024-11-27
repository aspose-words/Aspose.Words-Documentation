---
title: Pozycja tabeli w C++
second_title: Aspose.Words dla C++
articleTitle: Ustaw tabelę
linktitle: Ustaw tabelę
description: "Określ pozycję tabeli w C++. Uzyskaj wyrównanie tabeli, uzyskaj i ustaw pływającą pozycję tabeli za pomocą C++."
type: docs
weight: 50
url: /pl/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Istnieją tabele pływające i tabele wbudowane:

* **Inline tables** są umieszczane na tej samej warstwie co tekst i są umieszczane w strumieniu tekstu, który otacza tylko tabelę powyżej i poniżej. Tabele wbudowane zawsze będą wyświetlane między akapitami, w których je umieściłeś.
* **Floating tables** są nakładane na tekst, a pozycja tabeli względem akapitu jest określana przez kotwicę tabeli. Z tego powodu na pozycję tabeli pływającej w dokumencie wpływają ustawienia pozycjonowania pionowego i poziomego.

Czasami musisz ustawić tabelę w dokumencie w określony sposób. Aby to zrobić, musisz użyć narzędzi wyrównywania i ustawić wcięcia między tabelą a otaczającym tekstem.

W tym artykule omówimy, jakie opcje Aspose.Words zapewnia pozycjonowanie.

## Określ Pozycję Tabeli W Linii

Możesz ustawić pozycję tabeli wbudowanej za pomocą właściwości Aspose.Words API i [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). W ten sposób możesz dostosować wyrównanie tabeli względem strony dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić pozycję tabeli wbudowanej:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Uzyskaj Wyrównanie Stołu Pływającego

Jeśli zawijanie tekstu tabeli jest ustawione na **Around**, można uzyskać wyrównanie tabeli w poziomie i pionie za pomocą właściwości [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) i [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Za pomocą **other types of text wrapping** możesz uzyskać wyrównanie tabeli w linii za pomocą właściwości [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Poniższy przykład kodu pokazuje, jak uzyskać wyrównanie tabeli:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Uzyskaj Pływającą Pozycję Stołu

 Położenie tabeli pływającej określa się za pomocą następujących właściwości:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - obiekt do obliczania położenia poziomego tabeli pływającej
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - obiekt do obliczania pionowego położenia tabeli pływającej
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - bezwzględna pozioma pozycja stołu pływającego
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - absolutna pionowa pozycja stołu pływającego
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opcja włączania / wyłączania nakładania się na inne obiekty pływające
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - względne wyrównanie poziome tabeli pływającej.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - względne wyrównanie pionowe stołu pływającego.

Poniższy przykład kodu pokazuje, jak uzyskać pozycję tabeli pływającej:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Ustaw Pozycję Pływającego Stołu

Podobnie jak getting, możesz ustawić pozycję pływającego stołu, używając tego samego Aspose.Words API.

Ważne jest, aby wiedzieć, że wyrównanie oraz odległość pozioma i pionowa są połączonymi właściwościami i można zresetować drugie. Na przykład ustawienie **RelativeHorizontalAlignment** spowoduje zresetowanie **AbsoluteHorizontalDistance** do wartości domyślnej i odwrotnie. To samo dotyczy układu pionowego.

Poniższy przykład kodu pokazuje, jak ustawić pozycję tabeli pływającej:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Uzyskaj odległość między tabelą a otaczającym tekstem

Aspose.Words daje również możliwość poznania odległości między tabelami a otaczającymi tekstami:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - wartość odległości od góry
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - wartość odległości percepcji
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - wartość odległości po prawej stronie
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - wartość odległości po lewej stronie

Poniższy przykład kodu pokazuje, jak uzyskać odległość między tabelą a otaczającym ją tekstem:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
