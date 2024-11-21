---
title: Werk Met Kommentaar in C++
second_title: Aspose.Words vir C++
articleTitle: Werk Met Kommentaar
linktitle: Werk Met Kommentaar
description: "Werk met kommentaar met C++."
type: docs
weight: 260
url: /af/cpp/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Probeer online**

Jy kan hierdie funksie probeer met ons [Gratis aanlyn verwyder aantekeninge](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words laat gebruikers toe om met kommentaar te werk kommentaar in'n dokument in Aspose.Words word verteenwoordig deur die [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) klas. Gebruik ook die [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/) klasse om die streek van teks wat met'n kommentaar geassosieer moet word spesifiseer.

## Voeg'n Opmerking by

Aspose.Words laat jou toe om kommentaar op verskeie maniere by te voeg:

1. Gebruik die [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) klas
2. Gebruik die [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/) en [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) klasse

Die volgende kode voorbeeld toon hoe om'n kommentaar by te voeg tot'n paragraaf met behulp van die **Comment** klas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AddComments-AddComments.cpp" >}}

Die volgende kode voorbeeld toon hoe om'n kommentaar by te voeg tot'n paragraaf met behulp van'n streek van teks en die **CommentRangeStart** en **CommentRangeEnd** klasse:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-AnchorComment-AnchorComment.cpp" >}}

## Uittreksel Of Verwyder Kommentaar

Die gebruik van Kommentaar in'n Word-dokument (benewens Spoorveranderings) is'n algemene praktyk wanneer dokumente hersien word, veral wanneer daar verskeie beoordelaars is. Daar kan situasies wees waar die enigste ding wat jy van'n dokument benodig, die kommentaar is. Sê jy wil'n lys van hersieningsbevindinge genereer, of dalk het jy al die nuttige inligting uit die dokument versamel en jy wil eenvoudig onnodige kommentaar verwyder. Miskien wil u die kommentaar van'n spesifieke resensent sien of verwyder.

In hierdie voorbeeld gaan ons kyk na'n paar eenvoudige metodes vir beide die insameling van inligting uit die kommentaar binne'n dokument en vir die verwydering van kommentaar uit'n dokument. Spesifiek, ons sal dek hoe om:

- Onttrek al die kommentaar uit'n dokument of slegs die wat deur'n spesifieke skrywer gemaak is.
- Verwyder al die kommentaar uit'n dokument of slegs van'n spesifieke skrywer.

### Hoe Om Kommentaar Te Onttrek Of Te Verwyder

Die kode in hierdie voorbeeld is eintlik redelik eenvoudig en alle metodes is gebaseer op dieselfde benadering. 'n kommentaar in'n Word dokument word verteenwoordig deur'n [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) voorwerp in die Aspose.Words dokument voorwerp model. Om al die kommentaar in'n dokument te versamel, gebruik die [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) metode met die eerste parameter wat op [NodeType.Comment](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) gestel is. Maak seker dat die tweede parameter van die **GetChildNodes** metode is ingestel op waar: dit dwing die **GetChildNodes** om te kies uit alle kind nodes rekursief, eerder as om net die onmiddellike kinders te versamel.

Om te illustreer hoe om kommentaar uit'n dokument te onttrek en te verwyder, sal ons deur die volgende stappe gaan:

1. Open'n word-dokument met die [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) - klas
1. Kry alle kommentaar van die dokument in'n versameling
1. Om kommentaar te onttrek:
   1. Gaan deur die versameling met behulp van die foreach operateur
   1. Uittreksel en lys die outeur se naam, datum en tyd en teks van alle kommentaar
   1. Uittreksel en lys die outeur se naam, datum en tyd en teks van kommentaar geskryf deur'n spesifieke outeur, in hierdie geval, die outeur'ks'
1. Om kommentaar te verwyder:
   1. Gaan agteruit deur die versameling met behulp van die vir die operateur
   1. Verwyder kommentaar
1. Stoor die veranderinge

### Hoe Om Alle Kommentaar Te Onttrek

Die **GetChildNodes** metode is baie nuttig en jy kan dit gebruik elke keer as jy'n lys van dokumentknope van enige tipe moet kry. Die gevolglike versameling skep nie'n onmiddellike oorhoofse koste nie, want die nodusse word slegs in hierdie versameling gekies wanneer u items daarin opsom of toegang daartoe verkry.

Die volgende kode voorbeeld toon hoe om die outeur naam, datum en tyd en teks van alle kommentaar in die dokument te onttrek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractComments.cpp" >}}

### Hoe Om Kommentaar Van'n Gespesifiseerde Skrywer Te Onttrek

Nadat u Kommentaarknope in'n versameling gekies het, hoef u net die inligting wat u benodig, te onttrek. In hierdie voorbeeld word die outeur se voorletters, datum, tyd en die gewone teks van die kommentaar in een string gekombineer; jy kan kies om dit op ander maniere te stoor.

Die oorbelaaide metode wat Die Kommentaar van'n spesifieke skrywer onttrek, is amper dieselfde, dit kontroleer net die skrywer se naam voordat die inligting by die skikking gevoeg word.

Die volgende kode voorbeeld toon hoe om die outeur naam, datum en tyd en teks van die kommentaar deur die gespesifiseerde outeur te onttrek:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ExtractCommentsByAuthor.cpp" >}}

### Hoe Om Kommentaar Te Verwyder

As u alle kommentaar verwyder, hoef u nie een vir een deur die versameling te beweeg nie; u kan dit verwyder deur `NodeCollection.Clear` op die kommentaarversameling te skakel.

Die volgende kode voorbeeld toon hoe om alle kommentaar in die dokument te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveComments.cpp" >}}

Wanneer jy kommentaar selektief moet verwyder, word die proses meer soortgelyk aan die kode wat ons gebruik het vir kommentaar onttrekking.

Die volgende kode voorbeeld toon hoe om kommentaar te verwyder deur die gespesifiseerde skrywer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-RemoveCommentsByAuthor.cpp" >}}

Die belangrikste punt om hier uit te lig is die gebruik van die for operateur. Anders as die eenvoudige onttrekking, hier wil jy'n opmerking uitvee. 'n gepaste truuk is om die versameling agteruit te herhaal van die laaste Kommentaar na die eerste Een. Die rede hiervoor as jy van die einde af begin en agteruit beweeg, bly die indeks van die voorafgaande items onveranderd, en jy kan jou pad terugwerk na die eerste item in die versameling.

Die volgende kode voorbeeld toon die metodes vir die kommentaar onttrekking en verwydering:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-ProcessComments.cpp" >}}

{{% alert color="primary" %}}

U kan die voorbeeldlêer van hierdie voorbeeld aflaai van [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Hoe Om'n Kommentaar Tussen CommentRangeStart En CommentRangeEndTe Verwyder

Met behulp van Aspose.Words kan jy ook kommentaar tussen die **CommentRangeStart** en **CommentRangeEnd** nodusse verwyder.

Die volgende kode voorbeeld toon hoe om teks tussen **CommentRangeStart** en **CommentRangeEnd**te verwyder:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-RemoveRegionText-RemoveRegionText.cpp" >}}

## Voeg By En Verwyder Kommentaar Se Antwoord

Die [AddReply](https://reference.aspose.com/words/cpp/aspose.words/comment/addreply/) metode voeg'n antwoord by hierdie opmerking. Let asseblief daarop dat as gevolg van die bestaande Microsoft Office beperkings slegs 1 vlak van antwoorde in die dokument toegelaat word. 'n uitsondering van tipe *InvalidOperationException* sal geopper word indien hierdie metode op die bestaande Antwoord kommentaar genoem word.

U kan die [RemoveReply](https://reference.aspose.com/words/cpp/aspose.words/comment/removereply/) - metode gebruik om die gespesifiseerde antwoord op hierdie opmerking te verwyder.

Die volgende kode voorbeeld toon hoe om'n antwoord by te voeg tot kommentaar en verwyder kommentaar se antwoord:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-CommentReply-AddRemoveCommentReply.cpp" >}}

## Lees Kommentaar Se Antwoord

Die [Replies](https://reference.aspose.com/words/cpp/aspose.words/comment/get_replies/) eiendom gee'n versameling van die **Comment** voorwerpe wat onmiddellike kinders van die gespesifiseerde kommentaar.

Die volgende kode voorbeeld toon hoe om te iterate deur middel van'n kommentaar se antwoorde en opgelos hulle:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Comments-ProcessComments-CommentResolvedandReplies.cpp" >}}
