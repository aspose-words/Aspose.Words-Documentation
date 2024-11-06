---
title: Werk met Koppelteken in Java
second_title: Aspose.Words vir Java
articleTitle: Werk met Koppeling
linktitle: Werk met Koppeling
description: "Gebruik koppelteken vir'n meer kompakte rangskikking van teks. Dit bied gevorderde algoritmes om met koppeltekenwoordeboeke te werk, gebruik OpenOffice woordeboeke met Java."
type: docs
weight: 220
url: /af/java/working-with-hyphenation/
---

Soms is dit nodig om koppelteken te gebruik vir'n meer kompakte rangskikking van teks in'n dokument. Terselfdertyd is dit belangrik om te verstaan dat die besonderhede van woordverbinding vir elke taal kan verskil.

Op die oomblik word koppelteken nie so dikwels gebruik soos vroeër nie, veral in engelse tekste. Nietemin kan die gebruik van hierdie funksie'n ernstige impak op gebruikersdokumente hê – koppelteken beïnvloed die uitleg en gevolglik die voorkoms van die uitvoerlêers, byvoorbeeld in PDF - formaat.

Vir die korrekte verdeling van woorde word taalspesifieke koppeltekenwoordeboeke gebruik. Aspose.Words gebruik gevorderde algoritmes om met sulke woordeboeke te werk en laat jou toe om dieselfde koppelteken te kry as in Microsoft Word.

## Woordeboeke Vir Koppeling

Aangesien verskillende tale verskillende norme en reëls vir woordverbinding gebruik, is die optimale oplossing vir korrekte koppeling om spesiale woordeboeke te gebruik. Aspose.Words gebruik OpenOffice woordeboeke.

Vir spelling kontrole, OpenOffice gebruik die [Hunspell biblioteek](https://hunspell.github.io/), wat'n veralgemening van tex se koppelteken algoritme is. Hierdie algoritme maak voorsiening vir outomatiese nie-standaard koppeling met behulp van mededingende standaard en persoonlike koppeling patrone. Hunspell gebruik die [Koppelteken](https://github.com/hunspell/hyphen) vir koppeling.

{{% alert color="primary" %}}

Koppeltekenwoordeboeke kan geneem word uit die [LibreOffice woordeboeke GitHub](https://github.com/LibreOffice/dictionaries). Byvoorbeeld, [en - US koppeltekenwoordeboek](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Aangesien Microsoft Word ander woordeboeke as OpenOffice woordeboeke gebruik om koppeling uit te voer, kan die koppeling van sommige woorde wat deur OpenOffice woordeboeke gedefinieer word, verskil van die Microsoft Word koppeling. Om hierdie rede moet ons soms kliënte aanraai om die nodige patrone by hul woordeboeke te voeg om die koppelteken van spesifieke woorde reg te stel.

{{% /alert %}}

## Koppelteken Algoritme

Aspose.Words implementeer [die tex-koppeling algoritme](https://github.com/hunspell/hyphen/blob/master/README.hyphen) en kan OpenOffice koppeltekenwoordeboeke hergebruik.

Die volgende kenmerke van Aspose.Words algoritmes moet in ag geneem word:

* Koppelteken afstand parameters (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) gespesifiseer in die koppeltekenwoordeboek word geïgnoreer. Aspose.Words gebruik sy eie stel afstand parameters afhangende van die dokument verenigbaarheid af.
* Die koppeling algoritme in Aspose.Words ondersteun [saamgestelde koppeling](https://github.com/hunspell/hyphen/blob/master/README.compound). Aspose.Words verdeel egter karaktersekwensies wat gemengde alfabetiese en nie-alfabetiese karakters bevat in alfabetiese dele (woorde) en koppelteken hulle afsonderlik.
  Let daarop dat Microsoft Word logika van koppeling van saamgestelde woorde afhang van dokument verenigbaarheid af.
* Die koppeling algoritme in Aspose.Words implementeer nie die [nie-standaard koppeling](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Nie-standaard patrone word geïgnoreer.

## Laai Koppeltekenwoordeboeke

Om die koppeltekenfunksie te gebruik, registreer eers'n koppeltekenwoordeboek.Die volgende kode voorbeeld toon hoe om koppelteken woordeboeke vir die gespesifiseerde tale van'n lêer te laai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Die volgende kode voorbeeld toon hoe om koppelteken woordeboeke vir die gespesifiseerde taal van'n stroom te laai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Jy kan die sjabloon lêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

As alternatief vir vooraf registrasie van koppeltekenwoordeboeke, is dit moontlik om slegs vereiste koppeltekenwoordeboeke "op versoek"te registreer. Om dit te bereik, implementeer die [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) koppelvlak en gebruik die statiese terugbel [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback).

Die volgende kode voorbeeld toon hoe om die **IHyphenationCallback** koppelvlak te implementeer:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Impak van Koppeling op Uitleg

Wanneer teks in reëls verdeel word, kontroleer Aspose.Words elke woord of dit heeltemal in die huidige reël pas. As'n ander woord te lank is om aan die einde van die reël te pas, beweeg Aspose.Words dit standaard na die begin van die volgende reël in plaas daarvan om dit met'n koppelteken te koppel.

Die koppeltekenfunksie kan egter in Aspose.Words gebruik word om koppeltekens in woorde in te voeg om leemtes in geregverdigde teks uit te skakel of om'n eweredige lynlengte in smal kolomme te handhaaf. Dit kan natuurlik die aantal reëls en dus die aantal bladsye beïnvloed. Met ander woorde, die gebruik van die koppelteken funksie beïnvloed die dokument uitleg.

## Koppelteken en Regverdiging (H&J)

Microsoft Word het komplekse logika vir die keuse van'n breekpunt as teks geregverdig is en koppeling geaktiveer is. Kortom, Microsoft Word verkies dalk om spasies te verklein of te rek om lynverbinding te vermy. Hierdie logika is waarskynlik gebaseer op [Knuth se artikel](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words implementeer sy eie H&j algoritme wat dieselfde resultaat as Microsoft Word gee en bied identiese lyn breek in die uitset dokument.

## Sien Ook

* [Hyphen-hyphenation biblioteek](https://github.com/hunspell/hyphen/blob/master/README)
* [Nie-standaard koppeling](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Outomatiese nie-standaard koppelteken In Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
