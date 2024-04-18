---
title: Een document versleutelen in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document versleutelen
linktitle: Een document versleutelen
description: "Versleutel uw document met behulp van geschikte encryptie-algoritmen voor specifieke documentformaten in C#."
type: docs
weight: 20
url: /nl/net/encrypt-a-document/
---

Encryptie is het proces dat leesbare tekst vertaalt naar betekenisloze sequenties van bytes zodat het alleen gelezen kan worden door de persoon die de decryptiesleutel of de geheime code heeft. Dit proces speelt een belangrijke rol bij het beveiligen van uw inhoud. Het helpt om de inhoud te coderen, de oorsprong van een document te verifiëren, te bewijzen dat de inhoud niet is gewijzigd nadat het is verzonden, en ervoor te zorgen dat de gegevens van het document veilig zijn.

Dit artikel legt uit hoe Aspose.Words kunt u een document te versleutelen en hoe te controleren of een document versleuteling heeft of niet.

## Versleutelen met wachtwoord

Om een document te versleutelen, gebruik de **Password** eigenschap om een wachtwoord dat functioneert als een encryptiesleutel te verstrekken. Dit zal de inhoud van uw document wijzigen en onleesbaar maken. Het versleutelde document vereist dat dit wachtwoord ingevoerd wordt voordat het geopend kan worden.

{{% alert color="primary" %}}

U kunt de juiste **Password** eigenschap voor het vereiste formaat. Elk document opslaan formaat in de [Naamruimte opslaan](https://reference.aspose.com/words/net/aspose.words.saving/) heeft een overeenkomstige klasse met opties voor opslaan voor dit formaat. Zo is het [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) object in de [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) klasse voor DOC, of de [Password](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/password/) object in de [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/) klasse voor DOCX, DOCM, DOTX, DOTM, en FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat alleen bepaalde documentformaten versleuteling ondersteunen. RTF ondersteunt bijvoorbeeld geen encryptie.

{{% /alert %}}

De tabel hieronder toont de formaten en encryptie-algoritmen ondersteund door Aspose.Words:

| Formaat |  Ondersteunde versleuteling tijdens laden |  Ondersteunde versleuteling tijdens opslaan |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR encryptie40-bit RC4 EncryptieCryptoAPI RC4-versleuteling |  RC4-versleuteling (40-bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standard EncryptionECMA-376 Agile Encryption |  ECMA-376 Standaardencryptie (AES128 + SHA1) |
|  ODT, OTT |  ODF-versleuteling (Blowfish/AES) |  ODF-versleuteling (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4-versleuteling (40/128 bit) |

Het volgende codevoorbeeld laat zien hoe een document met een wachtwoord te versleutelen:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "encrypt-document-with-password.cs" >}}

## Controleren of een document versleuteld is

In sommige gevallen kunt u een onleesbaar document hebben en wilt u er zeker van zijn dat het document is gecodeerd en niet beschadigd of gecomprimeerd.

Om te detecteren of een document is gecodeerd en als een wachtwoord is vereist, kunt u de [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/) eigendom van de [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) Klasse. Deze eigenschap zal u ook toestaan om enige actie uit te voeren voordat u een document laadt, bijvoorbeeld een gebruiker informeren om een wachtwoord te verstrekken.

Het volgende voorbeeld van code laat zien hoe u de documentversleuteling kunt detecteren:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "verify-encrypted-document.cs" >}}

## Een document openen met of zonder wachtwoord

Wanneer we ervoor hebben gezorgd dat een document versleuteld wordt, kunnen we proberen dit document zonder wachtwoord te openen, wat tot een uitzondering zou moeten leiden.

Het volgende voorbeeld van code laat zien hoe je een versleuteld document kunt openen zonder wachtwoord:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-encrypted-document-without-password.cs" >}}

Nadat we hebben gezien dat een gecodeerd document niet kan worden geopend zonder wachtwoord, kunnen we proberen het te openen door het wachtwoord in te voeren.

Het volgende voorbeeld van code laat zien hoe u een gecodeerd document met een wachtwoord kunt openen:

{{< gist "aspose-words-gists" "af95c7a408187bb25cf9137465fe5ce6" "load-save-encrypted-document.cs" >}}
