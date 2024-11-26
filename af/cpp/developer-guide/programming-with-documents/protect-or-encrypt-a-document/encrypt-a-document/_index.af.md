---
title: Enkripteer'n Dokument in C++
second_title: Aspose.Words vir C++
articleTitle: Enkripteer'n Dokument
linktitle: Enkripteer'n Dokument
description: "Enkripteer u dokument met behulp van toepaslike enkripsiealgoritmes vir spesifieke dokumentformate."
type: docs
weight: 20
url: /af/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Enkripsie is die proses wat leesbare teks vertaal na betekenislose volgorde van grepe sodat dit net gelees kan word deur die persoon wat die dekripsie sleutel of die geheime kode het. Hierdie proses speel'n belangrike rol in die beveiliging van u inhoud. Dit help om die inhoud te kodeer, die oorsprong van'n dokument te verifieer, te bewys dat die inhoud nie verander is nadat dit gestuur is nie, en te verseker dat die data van die dokument veilig is.

Hierdie artikel verduidelik hoe Aspose.Words jou toelaat om'n dokument te enkripteer en hoe om te kyk of'n dokument enkripsie het of nie.

## Enkripteer Met Wagwoord

Om'n dokument te enkripteer, gebruik die **Password** eienskap om'n wagwoord te verskaf wat as'n enkripsie sleutel funksioneer. Dit sal die inhoud van u dokument verander en dit onleesbaar maak. Die geënkripteerde dokument sal vereis dat hierdie wagwoord ingevoer word voordat dit oopgemaak kan word.

{{% alert color="primary" %}}

U kan die toepaslike **Password** eienskap vir die vereiste formaat vind. Elke dokument stoor formaat in die [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) het'n ooreenstemmende klas wat stoor opsies vir hierdie formaat. Byvoorbeeld, die [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) eienskap in die [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) klas vir DOC, of die [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) eienskap in die [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) klas vir DOCX, DOCM, DOTX, DOTM, en FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Let daarop dat slegs sekere dokumentformate kodering ondersteun. Byvoorbeeld, RTF ondersteun nie enkripsie nie.

{{% /alert %}}

Die tabel hieronder bevat die formate en enkripsie algoritmes ondersteun deur Aspose.Words:

| Formaat | Ondersteunde Enkripsie tydens Laai | Ondersteunde Enkripsie terwyl Gestoor Word |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR encryption40-bit RC4 EncryptionCryptoAPI RC4 Enkripsie | RC4 Enkripsie (40-bis) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standaard EnkripsieECMA-376 Agile Enkripsie | ECMA-376 Standaard Enkripsie (AES128 + SHA1) |
| ODT, OTT | ODF Enkripsie (Blowfish/AES) | ODF Enkripsie (AES256 + SHA256) |
| PDF | RC4 Enkripsie (40/128 bietjie) |

Die volgende kode voorbeeld toon hoe om'n dokument met'n wagwoord te enkripteer:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Kontroleer Of'n Dokument Geënkripteer Is

In sommige gevalle het u moontlik'n onleesbare dokument en wil u seker wees dat die dokument geënkripteer is en nie beskadig of saamgepers is nie.

Om vas te stel of'n dokument geënkripteer is en as'n wagwoord benodig word, kan jy die [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) eienskap van die [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) klas gebruik. Hierdie eiendom sal jou ook toelaat om'n aksie uit te voer voordat jy'n dokument laai, byvoorbeeld om'n gebruiker in te lig om'n wagwoord te verskaf.

Die volgende kode voorbeeld toon hoe om die dokument enkripsie te ontdek:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Open'n Dokument Met Of Sonder'n Wagwoord

Wanneer ons seker gemaak het dat'n dokument geënkripteer is, kan ons probeer om hierdie dokument sonder'n wagwoord oop te maak, wat tot'n uitsondering moet lei.

Die volgende kode voorbeeld toon hoe om te probeer om'n geïnkripteer dokument oop te maak sonder'n wagwoord:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Nadat ons gesien het dat'n geënkripteerde dokument nie sonder'n wagwoord oopgemaak kan word nie, kan ons probeer om dit oop te maak deur die wagwoord in te voer.

Die volgende kode voorbeeld toon hoe om te probeer om'n geïnkripteer dokument met'n wagwoord oop te maak:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
