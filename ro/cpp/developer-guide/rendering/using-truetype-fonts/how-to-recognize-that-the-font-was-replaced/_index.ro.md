---
title: Cum să recunoașteți că fontul a fost înlocuit în C++
second_title: Aspose.Words pentru C++
articleTitle: Cum să recunoașteți că fontul a fost înlocuit
linktitle: Cum să recunoașteți că fontul a fost înlocuit
description: "Dacă nu sunteți sigur de ce s-a schimbat aspectul unui document sau de ce un anumit font nu arată așa cum era de așteptat, mesajele de avertizare privind substituirea fontului vă pot ajuta."
type: docs
weight: 13
url: /ro/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Uneori, poate fi neclar de ce s-a schimbat aspectul documentului sau de ce unele fonturi nu arată așa cum era de așteptat. În astfel de cazuri, mesajele de avertizare privind înlocuirea fontului implementate de interfața IWarningCallback vin în ajutor. Au tipul de avertizare [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) și formatul standard al textului descrierii, "Fontul "<OriginalFont>" nu a fost găsit. Folosind fontul "<SubstitutionFont>". Motiv:<Reason> ", cu următoarele motive:

- "nume alternativ din document" - pentru înlocuire cu [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "substituirea fontconfig" - pentru substituirea prin regula de configurare a fontului
- "substituirea tabelului" - pentru substituirea prin regula tabelului
- "substituirea informațiilor despre fonturi" - pentru înlocuirea cu regula informațiilor despre fonturi
- "substituirea fontului implicit" - pentru substituirea prin regula fontului implicit
- "primul font disponibil" - pentru înlocuirea cu primul font disponibil
