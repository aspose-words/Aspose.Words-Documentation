---
title: Konwersja do formatu stałej strony w C++
second_title: Aspose.Words dla C++
articleTitle: Konwersja do formatu stałej strony
linktitle: Konwersja do formatu stałej strony
description: "Zapisywanie dokumentów do PDF, XPS, HTML, XAML, PostScript, i PCL formatów."
type: docs
weight: 10
url: /pl/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementuje własny silnik układu strony. Przed zagłębieniem się w jego specyfikacje warto najpierw omówić dokument na wysokim poziomie.

## Co to jest dokument?

Myśląc o dokumencie, użytkownicy zazwyczaj wyobrażają sobie kilka arkuszy papieru zawierających słowa, obrazy, tabele i wykresy. Dokumenty mogą być różnego rodzaju, takie jak tekst, arkusze kalkulacyjne, slajdy, rysunki CAD, schematy blokowe, a zatem mogą mieć zasadniczo różne układy. Większość aplikacji umożliwia wysyłanie dokumentów do drukarki; wtedy użytkownik może faktycznie wyświetlić ostateczny zamierzony wygląd dokumentu.

## Wyświetlanie dokumentu w różnych aplikacjach

Różne aplikacje do przeglądania lub publikowania dokumentów umożliwiają użytkownikom otwieranie (Adobe Acrobat, XPS Viewer), a czasem edytowanie (Adobe InDesign) dokumentów w określonych formatach. Aplikacje te zazwyczaj tworzą tak zwane dokumenty w formacie "stałej strony". Taki format dokumentu opisuje dokładnie, gdzie zawartość dokumentu jest umieszczona na każdej stronie. Wewnętrznie format PDF lub XPS zawiera opis każdej strony, a także instrukcje rysowania, określające układ treści na stronie. Jest to podobne do formatów graficznych, opisujących, gdzie zawartość jest wyświetlana w formie rastrowej lub wektorowej.

Natomiast niektóre aplikacje do edycji tekstu nie obsługują przeglądania stron dokumentu. Na przykład Notatnik Microsoft obsługuje bardzo niewiele funkcji innych niż zwykłe wyświetlanie, edytowanie i drukowanie tekstu. Ważną obserwacją jest to, że takie aplikacje nie mogą ani wyświetlać stron dokumentu, ani informować użytkownika, ile z nich zostanie wydrukowanych, umożliwiając jedynie przeglądanie zawartości dokumentu. Dokument może być zapisany w formacie zwykłego tekstu i może być otwierany przez wiele innych aplikacji. Korzystając z aplikacji, która umożliwia przeglądanie zawartości binarnej dowolnego pliku, można zobaczyć, co jest przechowywane w pliku dokumentu – jest to zwykły tekst, nie ma w nim nic więcej.

Nieco bardziej wyrafinowane aplikacje do edycji tekstu, takie jak Microsoft WordPad, zapisują dokument w formacie tekstu sformatowanego (RTF), który obsługuje więcej funkcji formatowania, takich jak wstawianie obrazów, formatowanie znaków, marginesy akapitów i odstępy. Jednak format RTF zawiera również tylko zawartość dokumentu i nie zawiera informacji o stronach.

Microsoft Word jest obecnie najbardziej zaawansowaną aplikacją do edycji tekstu w Windows. Formatuje pliki w formacie DOCX, który opisuje zawartość dokumentu w sposób elastyczny i obszerny, umożliwiając użytkownikom określenie rozmiaru strony, orientacji sekcji dokumentu, a będąc aplikacją WYSIWYG nawet wyświetlać strony dokumentu na ekranie. Niemniej jednak nadal nie ma informacji dotyczących sposobu wyświetlania treści dokumentu na stronach dostępnych w pliku dokumentu. Plik dokumentu opisuje tylko samą zawartość i relacje obiektów dokumentu ze sobą, wraz z pewnymi ograniczeniami geometrycznymi. W rezultacie, przed wyświetleniem dokumentu, Microsoft Word sam oblicza te informacje. Tutaj w grę wchodzi układ strony.

## Zobacz także

* [Co to jest układ strony](/words/cpp/what-is-a-page-layout/)
* [Tworzenie układu strony](/words/cpp/creating-a-page-layout/)
* [Zapisywanie dokumentu w formacie stałej strony](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Określ Opcje Układu](/words/cpp/specify-layout-options/)
