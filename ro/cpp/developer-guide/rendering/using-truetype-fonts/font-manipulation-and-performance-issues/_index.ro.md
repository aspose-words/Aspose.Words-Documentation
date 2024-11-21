---
title: Manipularea fontului și probleme de performanță în C++
second_title: Aspose.Words pentru C++
articleTitle: Manipularea fontului și probleme de performanță
linktitle: Manipularea fontului și probleme de performanță
description: "Aspose.Words pentru C++ folosește numele complet al fontului, numele de familie, versiunea, stilul pentru a găsi datele de font necesare sau un înlocuitor adecvat pentru fontul solicitat. FontSettings vă permite să accelerați încărcarea documentelor."
type: docs
weight: 11
url: /ro/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Toate mecanismele de manipulare a fontului disponibile sunt conținute în clasa [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Această clasă este responsabilă pentru preluarea fonturilor în sursele de fonturi definite, precum și pentru procesul de substituire a fontului, așa cum este descris mai jos.

## Parsarea fonturilor rezolvate

Fonturile sunt analizate în mai multe etape:

1. Obținerea de informații pentru font, rezolvarea de la toate fonturile disponibile.
1. Parsarea fonturilor rezolvate pentru a obține glife și valori disponibile (orizontale și verticale).
1. Parsarea fonturilor rezolvate pentru încorporare și subsetare.

Când Aspose.Words întâlnește un font în document pentru prima dată, încearcă să obțină informații de bază despre font, cum ar fi numele complet al fontului, numele de familie, versiunea, stilul, din fișierele de font situate în fiecare sursă de font. După ce toate fonturile sunt recuperate, Aspose.Words folosește aceste detalii pentru a găsi datele de font necesare sau un înlocuitor adecvat pentru fontul solicitat.

## Problemă De Performanță La Înlocuirea Fonturilor

Deoarece procedura descrisă mai sus consumă mult timp, aceasta poate afecta negativ performanța aplicației la prima lansare. Cu toate acestea, fiecare instanță de **FontSettings** are propriul cache, ceea ce ar putea reduce timpul de procesare a documentelor ulterioare. De exemplu, puteți partaja o instanță a clasei **FontSettings** între diferite documente, ceea ce vă permite să accelerați încărcarea documentelor. Următorul exemplu demonstrează acest lucru:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

În cazul în care **FontSettings** nu este definit în mod explicit, Aspose.Words utilizează instanța implicită **FontSettings**. Această instanță este, de asemenea, partajată automat între documente și poate fi extrasă după cum urmează:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Folosind instanța implicită FontSettings

Dacă sunteți sigur că toate documentele de procesare necesită aceleași setări de font, atunci este recomandat să configurați și să utilizați instanța implicită **FontSettings**. Să presupunem că trebuie să utilizați aceleași surse de fonturi pentru toate documentele dvs. În acest caz, puteți modifica instanța implicită după cum urmează:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Personalizat **FontSettings** au prioritate mai mare decât instanța implicită.

{{% /alert %}}
