---
title: Jak rozpoznać, że czcionka została zastąpiona w C++
second_title: Aspose.Words dla C++
articleTitle: Jak rozpoznać, że czcionka została zastąpiona
linktitle: Jak rozpoznać, że czcionka została zastąpiona
description: "Jeśli nie masz pewności, dlaczego zmienił się układ dokumentu lub dlaczego określona czcionka nie wygląda zgodnie z oczekiwaniami, pomocne mogą być komunikaty z ostrzeżeniami o zastępowaniu czcionek."
type: docs
weight: 13
url: /pl/cpp/how-to-recognize-that-the-font-was-replaced/
timestamp: 2024-09-24-14-35-44
---

Czasami może być niejasne, dlaczego zmienił się układ dokumentu lub dlaczego niektóre czcionki nie wyglądają zgodnie z oczekiwaniami. W takich przypadkach na ratunek przychodzą komunikaty ostrzegające o podstawianiu czcionek zaimplementowane przez interfejs IWarningCallback. Mają typ Ostrzeżenia [FontSubstitution](https://reference.aspose.com/words/cpp/aspose.words/warningtype/) i standardowy format tekstu opisu, " Nie znaleziono CZCIONKI '<OriginalFont>'. Zamiast tego użyj czcionki " <SubstitutionFont>". Powód: <Reason>", z następujących powodów:

- "alternatywna nazwa z dokumentu" - dla zastąpienia przez [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)
- "podstawienie fontconfig" - do podstawienia regułą konfiguracji czcionki
- "substytucja tabeli" - dla podstawienia regułą tabeli
- "font info substitution" - do zastąpienia regułą font info
- "default font substitution" - dla podstawienia przez domyślną regułę czcionki
- "pierwsza dostępna czcionka" - do zastąpienia pierwszą dostępną czcionką
