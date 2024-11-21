---
title: Maak'n Dokument skoon in Java
second_title: Aspose.Words vir Java
articleTitle: Maak'n Dokument skoon
linktitle: Maak'n Dokument skoon
description: "Verwyder ongebruikte of duplikaat inligting om uitsetgrootte en verwerkingstyd te verminder. Verwyder ongebruikte style, ongebruikte ingeboude style, duplikaatstyle of ongebruikte lyste met Java."
type: docs
weight: 30
url: /af/java/clean-up-a-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet jy dalk ongebruikte of duplikaat inligting verwyder om die grootte van die uitsetdokument en verwerkingstyd te verminder.

Alhoewel u ongebruikte data, soos style of lyste, kan vind en verwyder, of inligting handmatig kan dupliseer, sal dit baie geriefliker wees om dit te doen met behulp van funksies en vermoëns wat deur Aspose.Words verskaf word.

Met die [CleanupOptions](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/) - klas kan u opsies spesifiseer vir die skoonmaak van dokumente. Om duplikaatstyle of net ongebruikte style of lyste uit die dokument te verwyder, kan u die [Cleanup](https://reference.aspose.com/words/java/com.aspose.words/document/#cleanup) - metode gebruik.

## Verwyder Ongebruikte Inligting uit'n Dokument

U kan die eienskappe [UnusedStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedStyles) en [UnusedBuiltinStyles](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedBuiltinStyles) gebruik om style wat as "ongebruik"gemerk is, op te spoor en te verwyder.

U kan die [UnusedLists](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getUnusedLists) - eienskap gebruik om lyste en lysdefinisies wat as "ongebruik"gemerk is, op te spoor en te verwyder.

Die volgende kode voorbeeld toon hoe om net ongebruikte style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleansUnusedStylesandLists.java" >}}

## Verwyder Duplikaatinligting uit'n Dokument

U kan ook die [DuplicateStyle](https://reference.aspose.com/words/java/com.aspose.words/cleanupoptions/#getDuplicateStyle) eienskap gebruik om alle duplikaatstyle met die oorspronklike een te vervang en duplikate uit'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om dubbele style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CleanupDuplicateStyle.java" >}}
