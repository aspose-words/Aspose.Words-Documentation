---
title: Pozycja tabeli w Python
second_title: Aspose.Words dla Python
articleTitle: Ustaw stół
linktitle: Ustaw stół
description: "Określ pozycję tabeli w Python. Uzyskaj wyrównanie stołu, uzyskaj i ustaw pływającą pozycję stołu za pomocą Python."
type: docs
weight: 50
url: /pl/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Istnieją tabele pływające i tabele wbudowane:

* **Tabele wbudowane** są umieszczane na tej samej warstwie co tekst i są umieszczane w strumieniu tekstu otaczającym tylko tabelę powyżej i poniżej. Tabele wbudowane będą zawsze pojawiać się pomiędzy akapitami, w których je umieściłeś.
* **Pływające stoły** są nakładane na tekst, a położenie tabeli względem akapitu określa kotwica tabeli. Z tego powodu na położenie tabeli ruchomej w dokumencie wpływają ustawienia położenia pionowego i poziomego.

Czasami trzeba ustawić tabelę w dokumencie w określony sposób. W tym celu należy skorzystać z narzędzi wyrównywania i ustawić wcięcia pomiędzy tabelą a otaczającym ją tekstem.

W tym artykule omówimy, jakie opcje pozycjonowania zapewnia Aspose.Words.

## Określ pozycję tabeli wbudowanej

Położenie tabeli wbudowanej można ustawić za pomocą właściwości Aspose.Words API i [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). W ten sposób można dostosować wyrównanie tabeli względem strony dokumentu.

Poniższy przykład kodu pokazuje, jak ustawić pozycję tabeli wbudowanej:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Uzyskaj wyrównanie tabeli pływającej

Jeśli zawijanie tekstu w tabeli jest ustawione na **Around**, wyrównanie tabeli w poziomie i w pionie można uzyskać za pomocą właściwości [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) i [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Dzięki **inne rodzaje zawijania tekstu** możesz uzyskać wbudowane wyrównanie tabeli za pomocą właściwości [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

Poniższy przykład kodu pokazuje, jak uzyskać wyrównanie tabeli:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Uzyskaj pozycję pływającego stołu

 Pozycję tabeli pływającej określa się za pomocą następujących właściwości:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – obiekt do obliczania poziomego ustawienia stołu pływającego
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – obiekt do obliczania położenia pionowego stołu pływającego
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – absolutna pozioma pozycja stołu pływającego
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – absolutna pionowa pozycja stołu pływającego
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – opcja włączania/wyłączania nakładania się na inne obiekty pływające
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – względne wyrównanie poziome tabeli pływającej.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – względne wyrównanie pionowe tabeli pływającej.

Poniższy przykład kodu pokazuje, jak uzyskać pozycję tabeli pływającej:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Ustaw pozycję stołu pływającego

Podobnie jak w przypadku uzyskiwania, możesz ustawić pozycję pływającego stołu za pomocą tego samego Aspose.Words API.

Ważne jest, aby wiedzieć, że wyrównanie oraz odległość w poziomie i w pionie to połączone właściwości i jedna może zresetować drugą. Na przykład ustawienie **RelativeHorizontalAlignment** spowoduje zresetowanie **AbsoluteHorizontalDistance** do wartości domyślnej i odwrotnie. To samo dotyczy formatu true w przypadku układu pionowego.

Poniższy przykład kodu pokazuje, jak ustawić pozycję tabeli pływającej:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Uzyskaj odległość między tabelą a otaczającym tekstem

Aspose.Words zapewnia również możliwość sprawdzenia odległości pomiędzy tabelami i otaczającymi je tekstami:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – wartość odległości od góry
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – wartość odległości percepcji
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – wartość odległości po prawej stronie
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – wartość odległości po lewej stronie

Poniższy przykład kodu pokazuje, jak uzyskać odległość między tabelą a otaczającym ją tekstem:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
