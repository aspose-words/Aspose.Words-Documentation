---
title: Pozycja tabeli w Java
second_title: Aspose.Words zamiast Java
articleTitle: Położenie tabeli
linktitle: Położenie tabeli
description: "Określić pozycję tabeli w Java. Uzyskaj ustawienie tabeli, ustaw i ustaw pozycję tabeli pływającej Java."
type: docs
weight: 50
url: /pl/java/position-a-table/
---

Istnieją tablice pływające i tabele inline:

* **Tabele inline** są umieszczone na tej samej warstwie co tekst i umieszczone w strumieniu tekstu, który otacza jedynie tabelę powyżej i poniżej. Tabele wewnętrzne zawsze pojawiają się pomiędzy akapitami, w których je umieściłeś.
* **Stoły pływające** są poziome względem tekstu, a pozycja tabeli względem punktu jest określona przez kotwicę tabeli. W związku z tym pozycja tabeli zmiennoprzecinkowej w dokumencie zależy od pionowych i poziomych ustawień pozycjonowania.

Czasami trzeba umieścić stół w dokumencie w określony sposób. Aby to zrobić, musisz użyć narzędzi osiowania i ustawić tiret między tabelą a otaczającym tekstem.

W tym artykule, omówimy jakie opcje Aspose.Words zapewnia pozycjonowanie.

## Określić pozycję tabeli inline

Można ustawić pozycję tablicy inline za pomocą Aspose.Words API oraz [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) nieruchomości. W ten sposób można dostosować ustawienie tabeli względem strony dokumentu.

Poniższy przykład kodu pokazuje jak ustawić pozycję tabeli inline:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Pobierz pływające wyrównanie tabeli

Jeśli tekst tabeli jest ustawiony na **Around**, można uzyskać poziome i pionowe ustawienie tabeli za pomocą [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) oraz [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) nieruchomości.

Z **inne rodzaje opakowań tekstowych**, można uzyskać ustawienia tabeli inline za pomocą **Alignment** nieruchomości.

Poniższy przykład kodu pokazuje jak uzyskać ustawienie tabeli:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Uzyskaj pozycję pływającego stołu

 Położenie tabeli zmiennoprzecinkowej określa się przy użyciu następujących właściwości:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - obiekt do obliczania poziomego pozycjonowania tabeli
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - obiekt do obliczania pionowego pozycjonowania pływającego stołu
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - bezwzględna pozioma pozycja tabeli
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - bezwzględna pionowa pozycja tabeli
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - opcja włączenia / wyłączenia pokrywania się z innymi obiektami zmiennymi
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - pływający stół względne poziome ustawienie.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - pływający stół względne pionowe ustawienie.

Poniższy przykład kodu pokazuje jak uzyskać pozycję tabeli zmiennoprzecinkowej:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Ustaw pozycję tabeli pływającej

Tak jak otrzymanie, możesz ustawić pozycję pływającego stołu używając tego samego Aspose.Words API.

Ważne jest, aby wiedzieć, że osiowanie oraz odległość pozioma i pionowa są właściwościami łączonymi, a jeden może zresetować drugi. Na przykład, ustawienie **RelativeHorizontalAlignment** zresetuje **AbsoluteHorizontalDistance** do wartości domyślnej i odwrotnie. To samo jest true dla układu pionowego.

Poniższy przykład kodu pokazuje jak ustawić pozycję tabeli zmiennoprzecinkowej:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Get Distance between Table and Surrounding Text

Aspose.Words umożliwia również poznanie odległości między tabelami a otaczającymi je tekstami:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - wartość odległości od góry
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - wartość odległości percepcji
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - wartość odległości po prawej
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - wartość odległości po lewej stronie

Poniższy przykład kodu pokazuje, jak uzyskać odległość między tabelą a otaczającym tekstem:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
