---
title: Documenten invoegen en toevoegen in C++
second_title: Aspose.Words voor C++
articleTitle: Documenten invoegen en toevoegen
linktitle: Documenten invoegen en toevoegen
description: "Documenten combineren tot één: een document invoegen of toevoegen in een nieuw of bestaand document met behulp van zoeken en vervangen, samenvoegen veld, bladwijzer of gewoon aan het einde van het document."
type: docs
weight: 80
url: /nl/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Soms is het nodig om meerdere documenten in één te combineren. U kunt dit handmatig doen of u kunt de functie Aspose.Words invoegen of toevoegen gebruiken.

Met de bewerking invoegen kunt u de inhoud van eerder gemaakte documenten invoegen in een nieuwe of bestaande.

Met de functie toevoegen kunt u een document alleen aan het einde van een ander document toevoegen.

In dit artikel wordt uitgelegd hoe u een document op verschillende manieren kunt invoegen of toevoegen aan een ander document en worden de algemene eigenschappen beschreven die u kunt toepassen tijdens het invoegen of toevoegen van documenten.

## Een Document invoegen

Zoals hierboven vermeld, wordt in Aspose.Words een document weergegeven als een boom van knooppunten, en de operatie van het invoegen van een document in een ander is het kopiëren van knooppunten van de eerste documentboom naar de tweede.

U kunt documenten op verschillende locaties op verschillende manieren invoegen. U kunt bijvoorbeeld een document invoegen via een bewerking vervangen, een samenvoegveld tijdens een samenvoegbewerking of via een bladwijzer.

U kunt ook de methode [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) gebruiken, die vergelijkbaar is met het invoegen van een document in Microsoft Word, om een heel document op de huidige cursorpositie in te voegen zonder eerder te importeren.

Het volgende codevoorbeeld laat zien hoe u een document invoegt met de methode `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

In de volgende subsecties worden de opties beschreven waarin u het ene document in het andere kunt invoegen.

### Een Document invoegen tijdens bewerking {#insert-a-document-during-find-and-replace-operation}zoeken en vervangen

U kunt documenten invoegen terwijl u bewerkingen zoeken en vervangen uitvoert. Een document kan bijvoorbeeld alinea ' s bevatten met de tekst [INTRODUCTION] en [CONCLUSION]. Maar in het einddocument moet u die alinea ' s vervangen door de inhoud die is verkregen uit een ander extern document. Om dat te bereiken, moet u een handler maken voor de replace-gebeurtenis.

Het volgende codevoorbeeld laat zien hoe u een handler voor de vervangingsgebeurtenis kunt maken om deze later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

Het volgende codevoorbeeld laat zien hoe de inhoud van een document in een ander document wordt ingevoegd tijdens een bewerking zoeken en vervangen:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Een Document invoegen tijdens Mail Merge bewerking {#insert-a-document-during-mail-merge-operation}

U kunt een document invoegen in een samenvoegveld tijdens een bewerking van Mail Merge. Een Mail Merge - sjabloon kan bijvoorbeeld een samenvoegveld bevatten, zoals [samenvatting]. Maar in het einddocument moet u inhoud die is verkregen uit een ander extern document invoegen in dit samenvoegveld. Om dat te bereiken, moet u een handler maken voor de merge-gebeurtenis.

Het volgende codevoorbeeld laat zien hoe u een handler voor de samenvoegende gebeurtenis kunt maken om deze later in het invoegproces te gebruiken:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

Het volgende codevoorbeeld laat zien hoe u een document invoegt in het samenvoegveld met behulp van de aangemaakte handler:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Een Document invoegen bij bladwijzer

U kunt een tekstbestand in een document importeren en direct na een bladwijzer invoegen die u in het document hebt gedefinieerd. Maak hiervoor een alinea met bladwijzers waarop u het document wilt invoegen.

Het volgende coderingsvoorbeeld laat zien hoe u de inhoud van een document invoegt in een bladwijzer in een ander document:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Houd er rekening mee dat de bladwijzer niet meerdere alinea ' s of tekst mag bevatten waarvan u wilt dat deze in het uiteindelijke resulterende document worden weergegeven.

{{% /alert %}}

## Een Document toevoegen

Mogelijk hebt u een use case waarbij u extra pagina ' s van een document moet toevoegen aan het einde van een bestaand document. Hiervoor hoeft u alleen de methode [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) aan te roepen om een document aan het einde van een ander document toe te voegen.

{{% alert color="primary" %}}

Merk op dat [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) een methode op knoopniveau is in een document. U kunt bijvoorbeeld een alinea maken, opmaakeigenschappen instellen en deze vervolgens als een kind aan de hoofdtekst toevoegen met de methode **AppendChild**.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u een document aan het einde van een ander document toevoegt:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Knooppunten handmatig {#import-and-insert-nodes-manually}importeren en invoegen

Met Aspose.Words kunt u documenten automatisch invoegen en toevoegen zonder voorafgaande importvereisten. Als u echter een specifiek knooppunt van uw document wilt invoegen of toevoegen, zoals een sectie of een alinea, moet u dit knooppunt eerst handmatig importeren.

Wanneer u een sectie of alinea moet invoegen of toevoegen aan een andere, moet u in wezen de knooppunten van de eerste documentknoopboom importeren in de tweede met behulp van de methode [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Na het importeren van uw knooppunten, moet u de methode [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) gebruiken om een nieuw knooppunt na/voor het referentieknooppunt in te voegen. Hiermee kunt u het invoegproces aanpassen door knooppunten uit een document te importeren en op bepaalde posities in te voegen.

U kunt ook de methode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) gebruiken om een nieuw opgegeven knooppunt aan het einde van de lijst met onderliggende knooppunten toe te voegen, bijvoorbeeld als u inhoud op alineaniveau wilt toevoegen in plaats van op sectieniveau.

Het volgende codevoorbeeld laat zien hoe u knooppunten handmatig kunt importeren en invoegen na een specifiek knooppunt met behulp van de methode **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

Bij het importeren wordt een nieuw knooppunt gemaakt dat een kopie is van het oorspronkelijke knooppunt en geschikt is voor invoeging in het doeldocument.

{{% /alert %}}

Inhoud wordt sectie voor sectie geïmporteerd in het doeldocument, wat betekent dat instellingen, zoals Pagina-instellingen en kop-of voetteksten, behouden blijven tijdens het importeren. Het is ook handig op te merken dat u opmaakinstellingen kunt definiëren wanneer u een document invoegt of toevoegt om aan te geven hoe twee documenten worden samengevoegd.

## Gemeenschappelijke eigenschappen voor documenten invoegen en toevoegen {#common-properties-for-insert-and-append-documents}

Zowel [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) als [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) methoden accepteren [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) en [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) als invoerparameters. Met **ImportFormatMode** kunt u bepalen hoe documentopmaak wordt samengevoegd wanneer u inhoud van het ene document naar het andere importeert door verschillende opmaakmodi te selecteren, zoals [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) en [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). Met **ImportFormatOptions** kunt u verschillende importopties selecteren, zoals [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), en [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Met Aspose.Words kunt u de visualisatie van een resulterende document aanpassen wanneer twee documenten bij elkaar worden opgeteld in een bewerking invoegen of toevoegen met behulp van de eigenschappen [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) en [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). De eigenschap **PageSetup** bevat alle attributen van een sectie zoals [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), en anderen. Het meest voorkomende gebruik is om de eigenschap **SectionStart** in te stellen om te bepalen of de toegevoegde inhoud op dezelfde pagina verschijnt of in een nieuwe wordt gesplitst.

{{% alert color="primary" %}}

Merk op dat de eigenschappen **Section** en **PageSetup** niet bepalen hoe twee documenten aan elkaar worden toegevoegd. Hiermee kunt u alleen het uiterlijk van uw resultaatdocument wijzigen.

{{% /alert %}}

Het volgende codevoorbeeld laat zien hoe u het ene document aan het andere kunt toevoegen terwijl de inhoud niet over twee pagina ' s wordt gesplitst:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}
