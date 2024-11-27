---
title: Manipulacja czcionkami i problemy z wydajnością w C++
second_title: Aspose.Words dla C++
articleTitle: Manipulacja czcionkami i problemy z wydajnością
linktitle: Manipulacja czcionkami i problemy z wydajnością
description: "Aspose.Words dla C++ używa pełnej nazwy czcionki, nazwiska, wersji, stylu, aby znaleźć wymagane dane czcionki lub odpowiedni zamiennik żądanej czcionki. FontSettings pozwala przyspieszyć ładowanie dokumentów."
type: docs
weight: 11
url: /pl/cpp/font-manipulation-and-performance-issues/
timestamp: 2024-09-24-14-35-44
---

Wszystkie dostępne mechanizmy manipulacji czcionkami są zawarte w klasie [FontSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_settings). Ta klasa jest odpowiedzialna za pobieranie czcionek w określonych źródłach czcionek, a także za proces zastępowania czcionek, jak opisano poniżej.

## Analizowanie rozwiązanych czcionek

Czcionki są analizowane w kilku krokach:

1. Uzyskiwanie informacji o czcionce, rozwiązywanie ze wszystkich dostępnych czcionek.
1. Analizowanie rozwiązanych czcionek w celu uzyskania dostępnych glifów i metryk (poziomych i pionowych).
1. Analizowanie rozwiązanych czcionek do osadzania i podsadzania.

Gdy Aspose.Words napotka czcionkę w dokumencie po raz pierwszy, próbuje uzyskać podstawowe informacje o czcionce, takie jak pełna nazwa czcionki, Nazwa Rodziny, wersja, styl, z plików czcionek znajdujących się w każdym źródle czcionki. Po pobraniu wszystkich czcionek Aspose.Words używa tych szczegółów, aby znaleźć wymagane dane czcionki lub odpowiedni zamiennik żądanej czcionki.

## Problem Z Wydajnością Podczas Wymiany Czcionek

Ponieważ procedura opisana powyżej jest czasochłonna, może negatywnie wpłynąć na wydajność aplikacji przy pierwszym uruchomieniu. Jednak każda instancja **FontSettings** ma własną pamięć podręczną, co może skrócić czas przetwarzania kolejnych dokumentów. Na przykład możesz udostępnić wystąpienie klasy **FontSettings** między różnymi dokumentami, co pozwala przyspieszyć ładowanie dokumentów. Poniższy przykład pokazuje to:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.cpp" >}}

W przypadku, gdy **FontSettings** nie jest zdefiniowana jawnie, Aspose.Words używa domyślnej instancji **FontSettings**. Ta instancja jest również automatycznie udostępniana między dokumentami i można ją wyodrębnić w następujący sposób:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontSettings> fontSettings = System::MakeObject<FontSettings>()->get_DefaultInstance();
{{< /highlight >}}

## Używanie domyślnej instancji FontSettings

Jeśli masz pewność, że wszystkie dokumenty przetwarzania wymagają tych samych ustawień czcionek, zaleca się skonfigurowanie i użycie domyślnej instancji **FontSettings**. Załóżmy, że musisz użyć tych samych źródeł czcionek dla wszystkich swoich dokumentów. W takim przypadku możesz po prostu zmienić domyślną instancję w następujący sposób:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-FontSettingsFontSource.cpp" >}}

{{% alert color="primary" %}}

Niestandardowy **FontSettings** ma wyższy priorytet niż domyślna instancja.

{{% /alert %}}
