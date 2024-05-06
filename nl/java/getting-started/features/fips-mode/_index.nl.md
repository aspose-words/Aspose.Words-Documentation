---
title: FIPS-modus
second_title: Aspose.Words voor Java
articleTitle: FIPS-modus
linktitle: FIPS-modus
description: "Aspose.Words voor Java maakt gebruik van verschillende cryptografie en hash-algoritmen bij het verwerken van documenten om te voldoen aan FIPS-normen."
type: docs
weight: 80
url: /nl/java/fips-mode/
---

Aspose.Words gebruikt verschillende cryptografie en hash-algoritmen bij het verwerken van documenten en dit artikel beschrijft hoe het verband houdt met de FIPS-normen.

Federal Information Processing Standards (FIPS) zijn een reeks openlijk gepubliceerde normen ontwikkeld door de federale overheid van de Verenigde Staten om eisen vast te stellen voor verschillende doeleinden, zoals het waarborgen van computerbeveiliging en interoperabiliteit.

## BouncyCastle to the Rescue

Aspose.Words voor Java en Aspose.Words voor Android gebruik de Bouncy Castle FIPS JAR voor encryptie, ontcijfering en ondertekening van documenten. De JAR is ontworpen en geïmplementeerd om te voldoen aan de FIPS 140-2, niveau 1-eisen.

FIPS 140-2 is een Amerikaanse computerbeveiligingsstandaard die wordt gebruikt om cryptografische modules goed te keuren. Deze norm specificeert de veiligheidseisen waaraan een cryptografische module zal voldoen en biedt hoge beveiligingsniveaus die een breed scala aan mogelijke toepassingen en omgevingen bestrijken. Voor meer informatie over FIPS 140-2, zie de [Publicatie NIST](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words voor .NET gebruikt de algemene Bouncy Castle versie zonder ondersteuning voor FIPS.

## FIPS-modusactivering

Vanaf versie 18.10 Aspose.Words maakt het mogelijk om te werken in twee modi: Algemeen en FIPS.

Standaard Aspose.Words werkt in de algemene modus, dus er zijn geen beperkingen op het gebruik van algoritmen en sleutels in dit geval.

U kunt wisselen Aspose.Words van de algemene modus naar de FIPS-modus met de volgende methode:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Om veiligheidsredenen kunt u de modus niet terugzetten naar General op runtime.

Merk ook op dat Aspose.Words kan niet automatisch herkennen of uw besturingssysteem in FIPS-modus staat, daarom moet u overstappen Aspose.Words naar FIPS-modus expliciet

Gebruik de volgende methode om zeker te zijn Aspose.Words voor Java is in FIPS modus:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

Wanneer de FIPS-modus is ingeschakeld, zal Aspose Words voorkomen dat u sommige cryptografische algoritmen en sleutels met niet-goedgekeurde lengtes kunt gebruiken.

Wanneer u bijvoorbeeld een ODT-versleuteld document probeert te openen terwijl de FIPS-modus actief is, ziet u de volgende uitzondering:

{{% alert color="primary" %}}

Niet-goedgekeurde beveiligingsoperatie Uitzondering: Een poging om een ODT-bestand te openen dat het Blowfish-algoritme gebruikt. Dit algoritme staat niet op de FIPS-goedgekeurde algoritmelijst.

{{% /alert %}}

Dit gebeurt omdat het Blowfish-algoritme niet op de FIPS goedgekeurde algoritmenlijst staat.

De soortgelijke uitzondering kan zich voordoen indien sleutels van ongeschikte lengte worden gebruikt:

Niet-goedgekeurde beveiligingsoperatie Uitzondering: U kunt geen sleutel met grootte 1024 gebruiken voor RSA in FIPS-modus.

Voor meer informatie over de goedgekeurde algoritmenlijst, zie [Bouncy Kasteel gebruikershandleiding](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), Cipher Algorithms (Symmetrisch).


