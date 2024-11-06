---
title: Open'n Dokument Leesalleen in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Open'n Leesalleen Dokument
linktitle: Open'n Leesalleen Dokument
description: "Maak u dokument leesalleen sodat die inhoud gekopieer of gelees kan word, maar nie met Python gewysig kan word nie."
type: docs
weight: 10
url: /af/python-net/open-a-document-read-only/
---

Soms het u'n dokument wat'n hersiening benodig, maar u wil nie hê dat beoordelaars u inhoud lukraak moet verander nie. Aspose.Words laat jou toe om die toestemming van jou dokument leesalleen te maak sodat die inhoud gekopieer of gelees kan word, maar nie gewysig kan word nie. Dit sal voorkom dat inhoud verwyder of by u dokument gevoeg word.

{{% alert color="primary" %}}

Die toepassing van die lees-alleen opsie om jou dokument nie verhoed dat iemand van die skep van'n nuwe kopie van dit en stoor dit met'n ander naam.

{{% /alert %}}

Hierdie artikel verduidelik hoe om'n dokument lees-alleen te maak.

## Maak'n Dokument Leesalleen

Aspose.Words het die openbare klas [WriteProtection](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/) wat skryfbeskermingsinstellings vir'n dokument spesifiseer. Jy skep nie gevalle van hierdie klas direk.

Skryfbeskerming toon of die skrywer aanbeveel het om'n dokument as lees-alleen oop te maak en/of'n wagwoord te vereis om die dokument te verander.

Aspose.Words laat jou toe om'n dokument lees-alleen te maak om redigering te beperk deur die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eienskap en die [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) metode te gebruik.

{{% alert color="primary" %}}

In Microsoft Word, kan jy'n Lees-Alleen dokument te skep in'n soortgelyke manier met behulp van beide:

* "Maak Altyd Leesalleen Oop "(Lêer)
* "Wagwoord om te verander"(Stoor As Rytoetsen Gereedskap Rytoetsen Algemene Opsies Rytoetsen Wagwoord)

{{% /alert %}}

{{% alert color="primary" %}}

Gebruikers kan ook dokument redigering beperk deur [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) as [READ_ONLY](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#read_only) te kies, maar dit is nog'n funksie wat meer gevorderde beskerming vermoëns bied. Daar is so'n funksie in Microsoft Word, onderskeidelik, dit is geïmplementeer in Aspose.Words.

[ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/) sal in detail beskryf word in een van die volgende artikels – "Beperk Dokument Redigering".

{{% /alert %}}

Die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eienskap is wagwoord-beveilig, so as jy nie'n wagwoord stel voordat jy die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eienskap toepas nie, dan kan ander gebruikers eenvoudig die dokument oopmaak asof dit onbeskerm is. Jy kry toegang tot die dokumentbeskermingsinstellings en stel'n skryfbeskermingswagwoord in via die [set_password](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/set_password/) - metode.

{{% alert color="primary" %}}

Let daarop dat die wagwoord wat gestel word net'n eienskap in'n dokument is wat verwyder kan word as toegang tot die dokument eienskappe verkry word. Gevolglik is so'n wagwoord nie'n waarborg vir die dokument sekuriteit nie.

{{% /alert %}}

As jy moet kyk of'n dokument'n skryfbeskermingswagwoord het wat dit beperk om te redigeer, kan jy die [is_write_protected](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/is_write_protected/) - eienskap gebruik.

Die volgende kode voorbeeld toon hoe om'n dokument lees-alleen te maak:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.write("Open document as read-only")

# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Make the document as read-only.
doc.write_protection.read_only_recommended = True

# Apply write protection as read-only.
doc.protect(aw.ProtectionType.READ_ONLY)
doc.save(docs_base.artifacts_dir + "DocumentProtection.ReadOnlyProtection.docx")
{{< /highlight >}}

## Verwyder Leesalleen Beperking

As jy nie wil hê dat'n gebruiker jou dokument as leesalleen moet oopmaak nie, kan jy eenvoudig die [read_only_recommended](https://reference.aspose.com/words/python-net/aspose.words.settings/writeprotection/read_only_recommended/) eienskap op `False` stel of [ProtectionType](https://reference.aspose.com/words/python-net/aspose.words/document/protection_type/) as [NO_PROTECTION](https://reference.aspose.com/words/python-net/aspose.words/protectiontype/#no_protection) kies.

Die volgende kode voorbeeld toon hoe om lees-alleen toegang vir'n dokument te verwyder:

{{< highlight python >}}
import aspose.words as aw

doc = aw.Document()
            
# Enter a password that's up to 15 characters long.
doc.write_protection.set_password("MyPassword")

# Remove the read-only option.
doc.write_protection.read_only_recommended = False

# Apply write protection without any protection.
doc.protect(aw.ProtectionType.NO_PROTECTION)
doc.save(docs_base.artifacts_dir + "DocumentProtection.RemoveReadOnlyRestriction.docx")
{{< /highlight >}}
