---
title: Maak'n Dokument skoon in C#
second_title: Aspose.Words vir .NET
articleTitle: Maak'n Dokument skoon
linktitle: Maak'n Dokument skoon
description: "Verwyder ongebruikte of duplikaat inligting om uitset grootte en verwerking tyd te verminder met behulp van C#. Verwyder ongebruikte style, ongebruikte ingeboude style, duplikaatstyle of ongebruikte lyste."
type: docs
weight: 30
url: /af/net/clean-up-a-document/
---

Soms moet jy dalk ongebruikte of duplikaat inligting verwyder om die grootte van die uitsetdokument en verwerkingstyd te verminder.

Alhoewel u ongebruikte data, soos style of lyste, kan vind en verwyder, of inligting handmatig kan dupliseer, sal dit baie geriefliker wees om dit te doen met behulp van funksies en vermoëns wat deur Aspose.Words verskaf word.

Met die [CleanupOptions](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/) - klas kan u opsies spesifiseer vir die skoonmaak van dokumente. Om duplikaatstyle of net ongebruikte style of lyste uit die dokument te verwyder, kan u die [Cleanup](https://reference.aspose.com/words/net/aspose.words/document/cleanup/) - metode gebruik.

## Verwyder Ongebruikte Inligting uit'n Dokument

U kan die eienskappe [UnusedStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedstyles/) en [UnusedBuiltinStyles](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedbuiltinstyles/) gebruik om style wat as "ongebruik"gemerk is, op te spoor en te verwyder.

U kan die [UnusedLists](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/unusedlists/) - eienskap gebruik om lyste en lysdefinisies wat as "ongebruik"gemerk is, op te spoor en te verwyder.

Die volgende kode voorbeeld toon hoe om net ongebruikte style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupUnusedStylesandLists.cs" >}}

## Verwyder Duplikaatinligting uit'n Dokument

U kan ook die [DuplicateStyle](https://reference.aspose.com/words/net/aspose.words/cleanupoptions/duplicatestyle/) eienskap gebruik om alle duplikaatstyle met die oorspronklike een te vervang en duplikate uit'n dokument te verwyder.

Die volgende kode voorbeeld toon hoe om dubbele style van'n dokument te verwyder:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Working with document options and settings-CleanupDuplicateStyle.cs" >}}
