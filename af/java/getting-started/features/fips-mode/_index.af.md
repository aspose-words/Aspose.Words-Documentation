---
title: FIPS Modus
second_title: Aspose.Words vir Java
articleTitle: FIPS Modus
linktitle: FIPS Modus
description: "Aspose.Words vir Java gebruik verskeie kriptografie en hash algoritmes wanneer dokumente verwerk word om aan FIPS standaarde te voldoen."
type: docs
weight: 80
url: /af/java/fips-mode/
---

Aspose.Words gebruik verskeie kriptografie en hash algoritmes wanneer dokumente verwerk word en hierdie artikel beskryf hoe dit verband hou met die FIPS standaarde.

Federale Inligtingverwerkingstandaarde (FIPS) is'n stel openlik gepubliseerde standaarde wat deur die verenigde state se federale regering ontwikkel is om vereistes vir verskillende doeleindes vas te stel, soos om rekenaarveiligheid en interoperabiliteit te verseker.

## BouncyCastle tot Die Redding

Aspose.Words vir Java en Aspose.Words vir Android gebruik Die Springkasteel FIPS JAR vir enkripsie, dekripsie en ondertekening van dokumente. Die JAR is ontwerp en geïmplementeer om die FIPS 140-2, vlak 1 vereistes.

FIPS 140-2 is'n amerikaanse regering rekenaar sekuriteit standaard wat gebruik word om kriptografiese modules te keur. Hierdie standaard spesifiseer die sekuriteit vereistes wat sal voldoen word deur'n kriptografiese module en bied hoë vlakke van sekuriteit bedoel om'n wye verskeidenheid van potensiële toepassings en omgewings te dek. Vir meer besonderhede oor FIPS 140-2, sien die [NIST publikasie](https://www.nist.gov/publications/security-requirements-cryptographic-modules-includes-change-notices-1232002?pub_id=902003).

Aspose.Words vir .NET gebruik die algemene Bouncy Castle weergawe sonder ondersteuning vir FIPS.

## FIPS Modus Aktivering

Begin van die weergawe 18.10 Aspose.Words kan werk in twee modi: Algemene en FIPS.

By verstek werk Aspose.Words in die Algemene modus, so daar is geen beperkings op die gebruik van algoritmes en sleutels in hierdie geval nie.

Jy kan Aspose.Words van Die Algemene modus na die FIPS modus oorskakel deur die volgende metode te gebruik:

**Java**

{{< highlight csharp >}}
SecuritySettings.startFipsMode();
{{< /highlight >}}

Om veiligheidsredes kan jy nie die modus terug verander Na Algemeen tydens looptyd nie.

Let ook daarop dat Aspose.Words nie outomaties kan herken of jou bedryfstelsel in FIPS modus is nie, daarom moet jy Aspose.Words eksplisiet na FIPS modus oorskakel.

Gebruik die volgende metode om seker te maak Aspose.Words vir Java is in FIPS modus:

**Java**

{{< highlight csharp >}}
SecuritySettings.isInFipsMode();
{{< /highlight >}}

As die FIPS-modus aan is, sal Aspose-Woorde u verhinder om kriptografie-algoritmes en sleutels met nie-goedgekeurde lengtes te gebruik.

Byvoorbeeld, wanneer jy probeer om'n ODT geënkripteerde dokument oop te maak terwyl die FIPS modus aktief is, kan jy die volgende uitsondering sien:

{{% alert color="primary" %}}

UnapprovedSecurityOperationException: 'n poging om'n ODT lêer oop te maak wat die Blowfish algoritme gebruik. Hierdie algoritme is nie op die FIPS-goedgekeurde algoritme lys nie.

{{% /alert %}}

Dit gebeur omdat die Blowfish algoritme is nie op die FIPS goedgekeur algoritmes lys.

Die soortgelyke uitsondering kan voorkom as sleutels van onvanpaste lengte gebruik word:

UnapprovedSecurityOperationException: Jy kan nie'n sleutel met grootte 1024 vir RSA in FIPS modus gebruik nie.

Vir meer besonderhede oor die goedgekeurde algoritmes lys, sien [BouncyCastle Gebruikershandleiding](https://downloads.bouncycastle.org/fips-java/docs/BC-FJA-UserGuide-1.0.1.pdf), "Siferalgoritmes (Simmetries)".


