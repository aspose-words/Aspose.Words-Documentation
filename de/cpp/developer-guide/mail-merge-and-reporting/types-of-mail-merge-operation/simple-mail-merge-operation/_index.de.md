---
title: Einfache Mail Merge -Operation in C++
second_title: Aspose.Words für C++
articleTitle: Einfache Mail Merge-Operation
linktitle: Einfache Mail Merge-Operation
type: docs
description: "Ein einfaches Mail Merge wird verwendet, um die Mail Merge –Felder in Ihrer Vorlage mit den erforderlichen Daten aus Ihrer Datenquelle zu füllen - es ähnelt dem klassischen Mail Merge in Microsoft Word. Fügen Sie ein oder mehrere Seriendruckfelder in Ihre Vorlage ein und führen Sie dann die einfache Operation Mail Merge aus."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /de/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Ein einfaches Mail Merge wird verwendet, um die Mail Merge -Felder in Ihrer Vorlage mit den erforderlichen Daten aus Ihrer Datenquelle zu füllen (Einzeltabellendarstellung). Es ähnelt also dem klassischen Mail Merge in Microsoft Word.

Sie können Ihrer Vorlage ein oder mehrere Seriendruckfelder hinzufügen und dann die einfache Operation Mail Merge ausführen. Es wird empfohlen, es zu verwenden, wenn Ihre Vorlage keine Zusammenführungsbereiche enthält.

Die Haupteinschränkung bei der Verwendung dieses Typs besteht darin, dass der gesamte Dokumentinhalt für jeden Datensatz in der Datenquelle wiederholt wird.

## So führen Sie eine einfache Mail Merge -Operation aus

Sobald Ihre Vorlage fertig ist, können Sie mit der einfachen Operation Mail Merge beginnen. Mit Aspose.Words können Sie eine einfache Mail Merge -Operation mit verschiedenen [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/)-Methoden ausführen, die verschiedene Datenobjekte als Datenquelle akzeptieren.

Das folgende Codebeispiel zeigt, wie eine einfache Mail Merge -Operation mit einer der [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/)-Methoden ausgeführt wird:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Sie können den Unterschied zwischen dem Dokument feststellen, bevor Sie einfach Mail Merge ausführen:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Und nach dem Ausführen von einfachem mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## So erstellen Sie mehrere zusammengeführte Dokumente

In Aspose.Words füllt der Standardoperation Mail Merge nur ein einzelnes Dokument mit Inhalten aus Ihrer Datenquelle. Sie müssen also die Operation Mail Merge viele Male ausführen, um einige zusammengeführte Dokumente als Ausgabe zu erstellen.

Das folgende Codebeispiel zeigt, wie einige zusammengeführte Dokumente während einer Mail Merge -Operation mit generiert werden [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
