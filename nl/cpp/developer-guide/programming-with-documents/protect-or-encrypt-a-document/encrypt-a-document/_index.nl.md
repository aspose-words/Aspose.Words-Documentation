---
title: Een Document versleutelen in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document versleutelen
linktitle: Een Document versleutelen
description: "Versleutel uw document met behulp van geschikte versleutelingsalgoritmen voor specifieke documentformaten."
type: docs
weight: 20
url: /nl/cpp/encrypt-a-document/
timestamp: 2024-10-21-11-17-44
---

Encryptie is het proces dat leesbare tekst vertaalt naar betekenisloze opeenvolgingen van bytes, zodat het alleen kan worden gelezen door de persoon die de decoderingssleutel of de geheime code heeft. Dit proces speelt een belangrijke rol bij het beveiligen van uw inhoud. Het helpt om de inhoud te coderen, de oorsprong van een document te verifiëren, te bewijzen dat de inhoud niet is gewijzigd nadat deze is verzonden en ervoor te zorgen dat de gegevens uit het document veilig zijn.

In dit artikel wordt uitgelegd hoe u met Aspose.Words een document kunt versleutelen en hoe u kunt controleren of een document al dan niet versleuteld is.

## Versleutelen met wachtwoord

Als u een document wilt coderen, gebruikt u de eigenschap **Password** om een wachtwoord op te geven dat fungeert als een coderingssleutel. Dit zal de inhoud van uw document wijzigen en onleesbaar maken. Het gecodeerde document moet dit wachtwoord hebben ingevoerd voordat het kan worden geopend.

{{% alert color="primary" %}}

U kunt de juiste **Password** eigenschap vinden voor het gewenste formaat. Elke documentopslagnotatie in [Saving Namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.saving) heeft een overeenkomstige klasse met opslagopties voor deze indeling. Bijvoorbeeld de Eigenschap [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) in de klasse [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) voor DOC, of de eigenschap [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/get_password/) in de klasse [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/) voor DOCX, DOCM, DOTX, DOTM, en FlatOpc.

{{% /alert %}}

{{% alert color="primary" %}}

Merk op dat alleen bepaalde documentformaten encryptie ondersteunen. RTF ondersteunt bijvoorbeeld geen encryptie.

{{% /alert %}}

In de onderstaande tabel staan de indelingen en versleutelingsalgoritmen die worden ondersteund door Aspose.Words:

| Formaat | Ondersteunde encryptie tijdens het laden | Ondersteunde encryptie tijdens het opslaan |
| ------------------------------------------------------------ | ----------------------------------------------------------- | -------------------------------------------- |
| DOC, DOT | XOR encryption40-bit RC4 EncryptionCryptoAPI RC4 encryptie | RC4 encryptie (40-bit) |
| DOCX, DOTX, DOCM, DOTM, FlatOPC, FlatOpcTemplate, FlatOpcMacroEnabled, FlatOpcTemplateMacroEnabled | ECMA-376 Standaard EncryptionECMA-376 Agile Encryptie | ECMA-376 Standaardversleuteling (AES128 + SHA1) |
| ODT, OTT | ODF Encryptie (Blowfish / AES) | ODF encryptie (AES256 + SHA256) |
| PDF | RC4 encryptie (40/128 bit) |

Het volgende codevoorbeeld laat zien hoe u een document versleutelt met een wachtwoord:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "encrypt-document-with-password.h" >}}

## Controleer of een Document versleuteld Is

In sommige gevallen hebt u mogelijk een onleesbaar document en wilt u er zeker van zijn dat het document is gecodeerd en niet is beschadigd of gecomprimeerd.

Om te detecteren of een document is gecodeerd en of een wachtwoord vereist is, kunt u de eigenschap [IsEncrypted](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/get_isencrypted/) van de klasse [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo) gebruiken. Met deze eigenschap kunt u ook een actie uitvoeren voordat u een document laadt, bijvoorbeeld een gebruiker informeren om een wachtwoord op te geven.

Het volgende codevoorbeeld laat zien hoe de documentversleuteling kan worden gedetecteerd:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "verify-encrypted-document.h" >}}

## Een Document openen met of zonder wachtwoord

Wanneer we ervoor hebben gezorgd dat een document versleuteld is, kunnen we proberen dit document zonder wachtwoord te openen, wat zou moeten leiden tot een uitzondering.

Het volgende codevoorbeeld laat zien hoe u een gecodeerd document probeert te openen zonder een wachtwoord:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-encrypted-document-without-password.h" >}}

Nadat we hebben gezien dat een versleuteld document niet kan worden geopend zonder een wachtwoord, kunnen we proberen het te openen door het wachtwoord in te voeren.

Het volgende codevoorbeeld laat zien hoe u een gecodeerd document met een wachtwoord probeert te openen:

{{< gist "aspose-words-gists" "b4e8a7baa7d3c08127f9a043487de21b" "load-save-encrypted-document.h" >}}
