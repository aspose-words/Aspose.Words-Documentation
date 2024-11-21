---
title: Arten von Mail Merge Operationen in C++
second_title: Aspose.Words für C++
articleTitle: Arten von Mail Merge-Operationen
linktitle: Arten von Mail Merge-Operationen
type: docs
description: "Führen Sie zwei verschiedene Arten von mail merge -Operationen aus: einfache mail merge und mail merge mit Regionen, die C++ verwenden. Einfaches mail merge wiederholt das gesamte Dokument für jeden Datenquellendatensatz, während mail merge mit Regionen nur bestimmte Regionen pro Datensatz wiederholt."
keywords: "how to execute mail merge c++"
weight: 20
url: /de/cpp/types-of-mail-merge-operations/
timestamp: 2024-09-24-14-35-44
---

Die Hauptidee von mail merge besteht darin, automatisch ein Dokument oder mehrere Dokumente basierend auf Ihrer Vorlage und den aus Ihrer Datenquelle abgerufenen Daten zu erstellen. Mit Aspose.Words können Sie zwei verschiedene Arten von mail merge-Operationen ausführen: einfache mail merge und mail merge mit Regionen.

Das häufigste Beispiel für die Verwendung von einfachem mail merge ist, wenn Sie ein Dokument für verschiedene Kunden senden möchten, indem Sie deren Namen am Anfang des Dokuments einfügen. Dazu müssen Sie Seriendruckfelder wie *First Name* und *Last Name* in Ihrer Vorlage erstellen und diese dann mit Daten aus Ihrer Datenquelle ausfüllen. Das häufigste Beispiel für die Verwendung von mail merge mit Regionen ist, wenn Sie ein Dokument senden möchten, das bestimmte Bestellungen mit der Liste aller Artikel in jeder Bestellung enthält. Dazu müssen Sie für jede Bestellung Zusammenführungsregionen in Ihrer vorlageneigenen Region erstellen, um sie mit allen erforderlichen Daten für die Artikel zu füllen.

Der Hauptunterschied zwischen beiden Zusammenführungsvorgängen besteht darin, dass einfach mail merge (ohne Regionen) das gesamte Dokument für jeden Datenquellendatensatz wiederholt, während mail merge mit Regionen nur bestimmte Regionen pro Datensatz wiederholt. Sie können sich eine einfache mail merge -Operation als einen bestimmten Fall der Zusammenführung mit Regionen vorstellen, in denen die einzige Region das gesamte Dokument ist.

{{% alert color="primary" %}}

Die [MailMerge](https://reference.aspose.com/words/cpp/class/aspose.words.mailmerging/mailmerge/) -Klasse repräsentiert eine mail merge -Funktionalität. Mit seinen Eigenschaften können Sie das erforderliche Verhalten anpassen, bevor Sie eine mail merge -Operation ausführen.

{{% /alert %}}

