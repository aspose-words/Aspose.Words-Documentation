---
title: Een document versleutelen in Java
second_title: Aspose.Words voor Java
articleTitle: Een document versleutelen
linktitle: Een document versleutelen
description: "Versleutel uw document met behulp van geschikte encryptie-algoritmen voor specifieke documentformaten in Java."
type: docs
weight: 20
url: /nl/java/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Encryptie is het proces dat leesbare tekst vertaalt naar betekenisloze sequenties van bytes zodat het alleen gelezen kan worden door de persoon die de decryptiesleutel of de geheime code heeft. Dit proces speelt een belangrijke rol bij het beveiligen van uw inhoud. Het helpt om de inhoud te coderen, de oorsprong van een document te controleren, te bewijzen dat de inhoud niet is gewijzigd nadat het is verzonden, en ervoor te zorgen dat de gegevens van het document veilig zijn.

Dit artikel legt uit hoe Aspose.Words kunt u een document te versleutelen en hoe te controleren of een document versleuteling heeft of niet.

## Versleutelen met wachtwoord

Om een document te versleutelen, gebruik de **Password** eigenschap om een wachtwoord dat functioneert als een encryptiesleutel te verstrekken. Dit zal de inhoud van uw document wijzigen en onleesbaar maken. Het gecodeerde document vereist dat dit wachtwoord ingevoerd wordt voordat het geopend kan worden.

{{% alert color="primary" %}}

U kunt de juiste **Password** eigenschap voor het vereiste formaat. Elk formaat voor het opslaan van documenten heeft een overeenkomstige klasse met opties voor opslaan voor dit formaat. Zo is er bijvoorbeeld de [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#getPassword) object in de [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) klasse voor DOC, of de [Password](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/#getPassword) object in de [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/) klasse voor DOCX, DOCM, DOTX, DOTM, en FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat alleen bepaalde documentformaten encryptie ondersteunen. RTF ondersteunt bijvoorbeeld geen encryptie.

{{% /alert %}}

De tabel hieronder toont de formaten en encryptie-algoritmen ondersteund door Aspose.Words:

| Formaat |  Ondersteunde versleuteling tijdens laden |  Ondersteunde versleuteling tijdens opslaan |
|  ------------------------------------------------------------  |  -----------------------------------------------------------  |  --------------------------------------------  |
|  DOC, DOT |  XOR encryptie40-bit RC4 EncryptieCryptoAPI RC4-versleuteling |  RC4-versleuteling (40-bits) |
|  DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled |  ECMA-376 Standard EncryptionECMA-376 Agile Encryption |  ECMA-376 Standard Encryption (AES128 + SHA1) |
|  ODT, OTT |  ODF-versleuteling (Blowfish/AES) |  ODF-versleuteling (AES256 + SHA256) |
|  PDF |  -                                                            |  RC4-versleuteling (40/128 bit) |

Het volgende voorbeeld van code laat zien hoe een document met een wachtwoord te versleutelen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "encrypt-document-with-password.java" >}}

## Controleren of een document versleuteld is

In sommige gevallen kunt u een onleesbaar document hebben en wilt u er zeker van zijn dat het document is gecodeerd en niet beschadigd of gecomprimeerd.

Om te detecteren of een document is gecodeerd en als een wachtwoord is vereist, kunt u de [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted) eigendom van de [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) Klasse. Deze eigenschap zal u ook toestaan om enige actie uit te voeren voordat u een document laadt, bijvoorbeeld om een gebruiker te informeren over een wachtwoord.

Het volgende voorbeeld van code laat zien hoe u de documentversleuteling kunt detecteren:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "verify-encrypted-document.java" >}}

## Een document openen met of zonder wachtwoord

Wanneer we ervoor hebben gezorgd dat een document versleuteld wordt, kunnen we proberen dit document zonder wachtwoord te openen, wat tot een uitzondering zou moeten leiden.

Het volgende voorbeeld van code laat zien hoe u een gecodeerd document kunt openen zonder wachtwoord:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-encrypted-document-without-password.java" >}}

Nadat we hebben gezien dat een gecodeerd document niet kan worden geopend zonder wachtwoord, kunnen we proberen het te openen door het wachtwoord in te voeren.

Het volgende voorbeeld van code laat zien hoe u een gecodeerd document met een wachtwoord kunt openen:

{{< gist "aspose-words-gists" "821ff3a1df0c75b2af641299b393fb60" "load-save-encrypted-document.java" >}}
