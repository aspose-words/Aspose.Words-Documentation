---
title: Werk met Boekmerke in C++
second_title: Aspose.Words vir C++
articleTitle: Werk met Boekmerke
linktitle: Werk met Boekmerke
description: "Verstaan boekmerk konsepte en hoe boekmerk gebruik kan word in jou program met behulp van C++."
type: docs
weight: 180
url: /af/cpp/working-with-bookmarks/
---

Boekmerke identifiseer in'n Microsoft Word dokument die liggings of fragmente wat jy noem en identifiseer vir toekomstige verwysing. U kan byvoorbeeld'n boekmerk gebruik om teks te identifiseer wat u later wil hersien. In plaas daarvan om deur die dokument te blaai om die teks te vind, kan jy daarheen gaan deur Die Boekmerk-dialoogkassie te gebruik.

Die aksies wat uitgevoer kan word met boekmerke met behulp van Aspose.Words is dieselfde as die wat jy kan uitvoer met behulp van Microsoft Word. Jy kan'n nuwe boekmerk invoeg, uitvee, na'n boekmerk skuif, 'n boekmerknaam kry of stel, teks daarin kry of stel. Met Aspose.Words kan jy ook boekmerke in verslae of dokumente gebruik om sekere data in die boekmerk in te voeg of spesiale formatering op die inhoud daarvan toe te pas. Jy kan ook boekmerke gebruik om teks van'n sekere plek in jou dokument af te haal.

## Voeg'n Boekmerk in

Gebruik [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) en [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) om'n boekmerk te skep deur die begin en einde daarvan te merk. Moenie vergeet om dieselfde boekmerknaam aan albei metodes deur te gee nie. Boekmerke in'n dokument kan oorvleuel en enige reeks oorskry. Swak gevormde boekmerke of boekmerke met dubbele name sal geïgnoreer word wanneer die dokument gestoor word.

Die volgende kode voorbeeld toon hoe om'n nuwe boekmerk te skep:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Verkry Boekmerke

Soms is dit nodig om'n boekmerk versameling te verkry om te herhaal deur boekmerke of vir ander doeleindes. Gebruik die [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) eienskap blootgestel deur enige dokument node wat'n [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) voorwerp wat die gedeelte van die dokument wat in hierdie node. Gebruik hierdie voorwerp om'n [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) te haal en gebruik dan die versameling indekser om'n spesifieke boekmerk te kry.

Die volgende kode voorbeeld toon hoe om boekmerke te verkry uit'n boekmerk versameling:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Die volgende kode voorbeeld toon hoe om te kry of stel'n boekmerk naam en teks:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Die volgende kode voorbeeld toon hoe om'n tabel te boekmerk:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

As jy die naam van'n boekmerk verander na'n naam wat reeds in die dokument bestaan, sal geen fout gegenereer word nie en slegs die eerste boekmerk sal gestoor word wanneer jy die dokument stoor.

{{% alert color="primary" %}}

Let daarop dat sommige boekmerke in die dokument aan vormvelde toegeken word. As jy na so'n boekmerk beweeg en teks daar invoeg, word die teks in die vormveldkode ingevoeg. Alhoewel dit nie die vormveld ongeldig sal maak nie, sal die ingevoegde teks nie sigbaar wees nie omdat dit deel word van die veldkode.

{{% /alert %}}

## Skuif Na'n Boekmerk

As jy ryk inhoud (nie net gewone teks) in'n boekmerk moet invoeg, moet jy [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) gebruik om die wyser na die boekmerk te skuif en dan die [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) metodes en eienskappe gebruik om inhoud in te voeg.

## Wys Versteek Boekmerk Inhoud

Die hele Boekmerk (*including the bookmarked content*) kan gekapsel word binne die Ware deel van die `IF` veld met behulp van Aspose.Words. Dit kan op so'n manier wees dat die `IF` veld'n geneste Samesmelting Veld in die uitdrukking (*Left of Operator*) bevat en afhangende van die waarde van Samesmelting Veld, die `IF` veld toon of verberg die inhoud van Boekmerk in Word Dokument.

Die volgende kode voorbeeld toon hoe om te wys/ verberg boekmerke:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
