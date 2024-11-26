---
title: Beperk Dokument Redigering in C#
second_title: Aspose.Words vir .NET
articleTitle: Beperk Dokument Redigering
linktitle: Beperk Dokument Redigering
description: "Beperk redigering van'n dokument deur die opstel van'n beperking tipe met behulp van C#. U kan ook beskerming verwyder en onbeperkte bewerkbare streke maak."
type: docs
weight: 30
url: /af/net/restrict-document-editing/
timestamp: 2024-01-27-14-07-04
---

Soms moet jy dalk die vermoë om'n dokument te wysig beperk en slegs sekere aksies daarmee toelaat. Dit kan nuttig wees om te verhoed dat ander mense sensitiewe en vertroulike inligting in u dokument redigeer.

Aspose.Words laat jou toe om die redigering van'n dokument te beperk deur'n beperking tipe te stel. Daarbenewens stel Aspose.Words jou ook in staat om skryfbeskermingsinstellings vir'n dokument te spesifiseer.

Hierdie artikel verduidelik hoe om Aspose.Words te gebruik om'n beperking tipe te kies, hoe om beskerming by te voeg of te verwyder, en hoe om onbeperkte bewerkbare streke te maak.

## Kies Redigeer Beperking Tipe

Aspose.Words laat jou toe om die manier waarop jy die inhoud beperk te beheer deur die [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) opsommingsparameter te gebruik. Dit sal jou in staat stel om'n presiese tipe beskerming soos die volgende te kies:

* AllowOnlyComments
* AllowOnlyFormFields
* AllowOnlyRevisions
* ReadOnly
* NoProtection

Alle tipes is wagwoordbeveilig, en as hierdie wagwoord nie korrek ingevoer word nie, sal'n gebruiker nie die inhoud van u dokument wettiglik kan verander nie. As u dokument dus aan u terugbesorg word sonder dat u die nodige wagwoord moet verskaf, is dit'n teken dat iets verkeerd is.

As u nie'n wagwoord gestel het by die keuse van die sekuriteitstipe nie, kan ander gebruikers eenvoudig die beskerming van u dokument ignoreer.

{{% alert color="primary" %}}

Let daarop dat die wagwoord wat gestel word net'n eienskap in'n dokument is wat verwyder kan word as toegang tot die dokument eienskappe verkry word. Gevolglik is so'n wagwoord nie'n waarborg vir die dokument sekuriteit nie. Die [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) metode toon net dit.

{{% /alert %}}

## Voeg Dokumentbeskerming By

Om beskerming by u dokument te voeg, is'n eenvoudige proses, aangesien u net een van die beskermingsmetodes wat in hierdie afdeling uiteengesit word, moet toepas.

Aspose.Words laat jou toe om jou dokumente teen veranderinge te beskerm deur die [Protect](https://reference.aspose.com/words/net/aspose.words/document/protect/#protect/) metode te gebruik. Hierdie metode is nie'n sekuriteitsfunksie nie en enkripteer nie'n dokument nie.

{{% alert color="primary" %}}

In Microsoft Word, kan jy redigering beperk in'n soortgelyke manier met behulp van beide:

* Beperk Redigering (Lêer)
* Alternatiewe funksie - "Beperk Redigering" (Resensie)

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om wagwoord beskerming te voeg tot jou dokument:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-PasswordProtection.cs" >}}

Die volgende kode voorbeeld toon hoe om redigering in'n dokument te beperk sodat slegs redigering in vorm velde moontlik is:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-AllowOnlyFormFieldsProtect.cs" >}}

## Verwyder Dokumentbeskerming

Aspose.Words laat jou toe om beskerming van'n dokument te verwyder met eenvoudige en direkte dokumentwysiging. U kan die dokumentbeskerming verwyder sonder om die werklike wagwoord te ken of die korrekte wagwoord verskaf om die dokument te ontsluit deur die [Unprotect](https://reference.aspose.com/words/net/aspose.words/document/unprotect/#unprotect/) - metode te gebruik. Beide verwyder maniere het geen verskil nie.

Die volgende kode voorbeeld toon hoe om beskerming uit jou dokument te verwyder:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveDocumentProtection.cs" >}}

## Spesifiseer Onbeperkte Bewerkbare Streke

U kan die redigering van u dokument beperk en terselfdertyd veranderinge aan geselekteerde dele daarvan toelaat. Dus, enigiemand wat jou dokument oopmaak, sal toegang tot hierdie onbeperkte dele kan kry en veranderinge aan die inhoud kan aanbring.

Aspose.Words laat jou toe om die dele wat verander kan word in jou dokument te merk met behulp van die [StartEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starteditablerange/) en [EndEditableRange](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endeditablerange/#endeditablerange/) metodes.

Die volgende kode voorbeeld toon hoe om die hele dokument as lees-alleen te merk en spesifiseer bewerkbare streke in dit:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedEditableRegions.cs" >}}

Jy kan ook kies verskillende dokument redigering beperkings vir verskillende afdelings.

Die volgende kode voorbeeld toon hoe om'n beperking vir die hele dokument by te voeg, en dan verwyder die beperking vir een van die afdelings:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-UnrestrictedSection.cs" >}}
