---
title: Erstellen eines Seitenlayouts in C++
second_title: Aspose.Words für C++
articleTitle: Erstellen eines Seitenlayouts
linktitle: Erstellen eines Seitenlayouts
description: "Das Erstellen eines Seitenlayouts kann ein kostspieliges Verfahren sein. Aspose.Words erstellt ein Seitenlayout nur dann, wenn es erforderlich ist: zum Rendern von Dokumentseiten, zum Abrufen eines Feldwerts, zum Exportieren eines Dokuments nach HTML usw."
type: docs
weight: 10
url: /de/cpp/creating-a-page-layout/
---

Das Erstellen eines Seitenlayouts kann sowohl in Bezug auf die Geschwindigkeit als auch auf den Speicher ein kostspieliger Vorgang sein. Dies hat mehrere Gründe:

- Das Dokument kann eine große Menge an Inhalten enthalten, die möglicherweise auf Tausenden von Seiten angezeigt werden müssen. Die Geometrie jedes Objekts auf jeder Seite müsste beschrieben werden, was Speicherressourcen verbraucht.
- Das Dokument kann viele Regeln enthalten, die der Geometrie Einschränkungen auferlegen. Es kann eine beträchtliche Rechenzeit aufgewendet werden, um sicherzustellen, dass jede Einschränkung erfüllt ist.
- Einige Dokumentfunktionen, z. B. das Feld `NUMPAGES`, erstellen rekursive Abhängigkeiten für zukünftige Eigenschaftswerte, die zum Zeitpunkt der Berechnung nicht verfügbar sind. Dies führt zu sich wiederholenden Berechnungen und summiert sich in der Rechenzeit.

Aus den oben genannten Gründen erstellt Aspose.Words nur dann ein Seitenlayout, wenn dies erforderlich ist. Ein typischer Grund dafür wäre eine Anforderung, Dokumentseiten zu rendern oder einen Feldwert zu erhalten, der von den im Seitenlayout verfügbaren Informationen abhängt. Ein weniger offensichtlicher Grund könnte der Export eines Dokuments nach HTML sein. Obwohl HTML kein festes Seitenformat ist und die Geometrie der Inhaltsobjekte nicht beschreibt, werden dennoch Bilder unterstützt. Solche Bilder können in Form von Formen vorliegen, die in Microsoft Word mit einem Text darin erstellt wurden. Beispielsweise kann ein Diagramm mit Achsenbeschriftungen als Bild in HTML exportiert werden, aber bevor dies geschehen kann, muss Aspose.Words dieses Bild rendern und daher wissen, wo die Beschriftung angezeigt werden soll. Siehe das Diagrammbeispiel unten:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## Nicht-geometrische Eigenschaften

Neben dem Umgang mit geometrischen Informationen ist ein Seitenlayout auch für die Berechnung von Farben und Rahmenstilen verantwortlich. In Microsoft Word kann die Textfarbe als automatisch angegeben werden, was bedeutet, dass die Farbauswahl auf der Schattierungsfarbe der Zelle oder des Absatzes oder auf der Farbe der Seite basiert, auf der der Text angezeigt wird.

Das Seitenlayout berechnet, wo der Text angezeigt wird und welcher Inhalt dahinter gerendert wird, wodurch die Farbberechnung aktiviert wird. Es gibt andere spezifische Berechnungen, die vom Seitenlayout durchgeführt werden. Beispielsweise hängt ein horizontaler Rahmen in einer Tabelle davon ab, ob eine Tabellenzeile in einer Textspalte die letzte ist und ob sie spaltenübergreifend unterteilt ist. Wenn eine Zeile zuletzt in einer Spalte gerendert wird, wird der untere Rand anstelle der horizontalen verwendet.

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

In Aspose.Words kann ein Benutzer anfordern, ob ein neues Seitenlayout erstellt oder ein vorhandenes aktualisiert werden soll. Beides kann mit der Methode [UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/) ausgeführt werden, die von der Klasse [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) bereitgestellt wird. Wenn ein Seitenlayout nicht vorhanden ist, aber benötigt wird (z. B. wenn das Dokument in ein festes Seitenformat exportiert wird), ruft Aspose.Words diese Methode automatisch auf. Wenn jedoch bereits ein Seitenlayout vorhanden ist, verwendet Aspose.Words das vorhandene, um zu vermeiden, dass die für die Aktualisierung erforderlichen Ressourcen verbraucht werden. In diesem Fall muss der Benutzer die Methode `UpdatePageLayout` aufrufen, um sicherzustellen, dass das Seitenlayout mit dem Dokumentmodell auf dem neuesten Stand ist.

## Dynamische Struktur

Der Prozess der Erstellung des Seitenlayouts umfasst die folgenden Schritte:

- *Conversion* - Aufzählung des Inhalts des Dokumentmodells und Vorbereitung der entsprechenden Layoutobjekte.
- *Build* - Anordnen von Layoutobjekten, um den Inhalt des Dokuments auf Seiten darzustellen.
- *Reflow* - Aktualisieren der Objektanordnung, um Geometrieeinschränkungen zu erfüllen.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - Ein Schritt, der erforderlich ist, wenn das Dokument Formen mit verschachteltem Textinhalt enthält.

Beachten Sie, dass das Seitenlayout eine dynamische Struktur ist, die teilweise neu erstellt werden kann. Dies ist insbesondere dann erforderlich, wenn es unmöglich ist, Feldwerte zu berechnen, ohne die Dokumentlayoutstruktur neu zu erstellen. Das Feld kann auf die Position eines Objekts auf einer Seite verweisen, und gleichzeitig wird auch der Feldwert selbst auf der Seite gerendert, was sich auf die Position des referenzierten Objekts auswirkt. Ein Seitenlayout kann nicht auf einmal erstellt werden, da Feldwerte zum Zeitpunkt der Positionierung auf einer Seite möglicherweise noch nicht verfügbar sind.

Stellen Sie sich das typische Szenario vor, in dem das Feld `NUMPAGES` in der Fußzeile der ersten Seite des Dokuments angezeigt wird. Der Wert dieses Feldes ist die Gesamtzahl der Seiten. Um das Feld auf einer Seite zu positionieren, sollte sein Wert bekannt sein. Wenn derzeit nur die erste Seite erstellt wird, ist die Gesamtzahl der Seiten noch nicht bekannt. In diesem Fall muss das Seitenlayout den Standardwert verwenden und später zu diesem Feld zurückkehren und seinen Wert entsprechend den tatsächlichen Berechnungen ändern. Das Ändern des Feldwerts kann sich jedoch auf andere Dokumentinhalte auf einer Seite auswirken und letztendlich dazu führen, dass eine neue Seite angehängt oder eine vorhandene Seite entfernt wird, wodurch der berechnete Wert veraltet wird. Dieses Problem kann gelöst werden, indem das vorhandene Seitenlayout aktualisiert werden kann.

Beim Erstellen eines Layouts ist es auch möglich, [LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/) -Eigenschaften einzurichten, die sich auf die Ausgabe des Dokuments auf Seiten auswirken.