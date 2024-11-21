---
title: Open'n Dokument Leesalleen in C#
second_title: Aspose.Words vir .NET
articleTitle: Open'n Leesalleen Dokument
linktitle: Open'n Leesalleen Dokument
description: "Maak u dokument leesalleen sodat die inhoud gekopieer of gelees kan word, maar nie met C# gewysig kan word nie."
type: docs
weight: 10
url: /af/net/open-a-document-read-only/
timestamp: 2024-01-27-14-07-04
---

Soms het u'n dokument wat'n hersiening benodig, maar u wil nie hê dat beoordelaars u inhoud lukraak moet verander nie. Aspose.Words laat jou toe om die toestemming van jou dokument leesalleen te maak sodat die inhoud gekopieer of gelees kan word, maar nie gewysig kan word nie. Dit sal voorkom dat inhoud verwyder of by u dokument gevoeg word.

{{% alert color="primary" %}}

Die toepassing van die lees-alleen opsie om jou dokument nie verhoed dat iemand van die skep van'n nuwe kopie van dit en stoor dit met'n ander naam.

{{% /alert %}}

Hierdie artikel verduidelik hoe om'n dokument lees-alleen te maak.

## Maak'n Dokument Leesalleen

Aspose.Words het die openbare klas [WriteProtection](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/) wat skryfbeskermingsinstellings vir'n dokument spesifiseer. Jy skep nie gevalle van hierdie klas direk.

Skryfbeskerming toon of die skrywer aanbeveel het om'n dokument as lees-alleen oop te maak en/of'n wagwoord te vereis om die dokument te verander.

Aspose.Words laat jou toe om'n dokument lees-alleen te maak om redigering te beperk deur die [ReadOnlyRecommended](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/readonlyrecommended/) eienskap en die [SetPassword](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/setpassword/) metode te gebruik.

{{% alert color="primary" %}}

In Microsoft Word, kan jy'n Lees-Alleen dokument te skep in'n soortgelyke manier met behulp van beide:

* "Maak Altyd Leesalleen Oop "(Lêer)
* "Wagwoord om te verander"(Stoor As Rytoetsen Gereedskap Rytoetsen Algemene Opsies Rytoetsen Wagwoord)

{{% /alert %}}

{{% alert color="primary" %}}

Gebruikers kan ook dokument redigering beperk deur [ProtectionType](https://reference.aspose.com/words/net/aspose.words/protectiontype/) as **ReadOnly** te kies, maar dit is nog'n funksie wat meer gevorderde beskerming vermoëns bied. Daar is so'n funksie in Microsoft Word, onderskeidelik, dit is geïmplementeer in Aspose.Words.

**ProtectionType**

{{% /alert %}}

Die **ReadOnlyRecommended** eienskap is wagwoord-beveilig, so as jy nie'n wagwoord stel voordat jy die **ReadOnlyRecommended** eienskap toepas nie, dan kan ander gebruikers eenvoudig die dokument oopmaak asof dit onbeskerm is. Jy kry toegang tot die dokumentbeskermingsinstellings en stel'n skryfbeskermingswagwoord in via die **SetPassword** - metode.

{{% alert color="primary" %}}

Let daarop dat die wagwoord wat gestel word net'n eienskap in'n dokument is wat verwyder kan word as toegang tot die dokument eienskappe verkry word. Gevolglik is so'n wagwoord nie'n waarborg vir die dokument sekuriteit nie.

{{% /alert %}}

As jy moet kyk of'n dokument'n skryfbeskermingswagwoord het wat dit beperk om te redigeer, kan jy die [IsWriteProtected](https://reference.aspose.com/words/net/aspose.words.settings/writeprotection/iswriteprotected/) - eienskap gebruik.

Die volgende kode voorbeeld toon hoe om'n dokument lees-alleen te maak:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-ReadOnlyProtection.cs" >}}

## Verwyder Leesalleen Beperking

As jy nie wil hê dat'n gebruiker jou dokument as leesalleen moet oopmaak nie, kan jy eenvoudig die **ReadOnlyRecommened** eienskap op *false* stel of **ProtectionType** as **NoProtection** kies.

Die volgende kode voorbeeld toon hoe om lees-alleen toegang vir'n dokument te verwyder:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Protect or Encrypt Document-Document protection-RemoveReadOnlyRestriction.cs" >}}
