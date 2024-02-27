---
title: Konwertuj pliki PDF na inne formaty dokumentów w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwertuj pliki PDF na inne formaty dokumentów
linktitle: Konwertuj pliki PDF na inne formaty dokumentów
type: docs
description: "Konwertuj pliki PDF na formaty Word, takie jak DOCX, DOC, formaty obrazów, takie jak JPG lub PNG, lub dowolne inne formaty obsługiwane przez Aspose.Words za pomocą C#."
keywords: convert pdf to other formats c#
weight: 45
url: /pl/net/convert-pdf-to-other-document-formats/
---

Aspose.Words może załadować nawet tak złożony format jak PDF. Otwiera to nowe możliwości: możliwa jest konwersja plików PDF do programu Word lub innych formatów, które zapewniają użytkownikom daleko idącą przewagę w rozwiązywaniu wielu stosowanych problemów.

## Warunki wstępne

* Dodano odniesienie do pakietu Aspose.Words ***LUB*** do Aspose.Words.Pdf2Word.dll.
* Przynajmniej .NET Framework 4.6.1 lub .NET Standard 2.0. Cele takie jak .NET Core 2.x lub 3.0, .NET 5 i Xamarin są również obsługiwane dzięki zgodności z .NET Standard.

## Konwertuj pliki PDF na różne formaty {#convert-pdf-to-other-formats}

Najpopularniejszą konwersją z formatu PDF jest konwersja do formatów Microsoft Word takich jak DOCX, DOC, a także formatów graficznych takich jak JPG czy PNG. W związku z tym konwersja dokumentu z jednego formatu na inny przebiega w znany sposób.

Poniższy przykład kodu pokazuje, jak przekonwertować dokument z formatu PDF na DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Określ opcje ładowania podczas importowania pliku PDF {#specify-load-options-when-importing-pdf}

Aspose.Words udostępnia klasę [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), która umożliwia bardziej precyzyjną kontrolę nad sposobem ładowania dokumentów PDF.

Większość właściwości dziedziczy lub przeciąża właściwości, które już istnieją w klasie `LoadOptions`. Oprócz nich dla formatu PDF określono szereg właściwości. Można na przykład użyć właściwości [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) i [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) do zdefiniowania zakresu stron ładowanych z dokumentu PDF oraz właściwości [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) do kontrolowania, czy obrazy powinny być pomijane podczas ładowania pliku PDF. Kolejnym obsługiwanym parametrem jest [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), który należy podać w przypadku pliku [dokumenty chronione hasłem](/words/net/protect-documents-and-parts-of-documents/).

## Obsługiwana zawartość PDF {#supported-pdf-content}

Wtyczka PDF2Word obsługuje obecnie następujące typy danych:

* Tekst akapitów
* Obrazy
* Stoły
* Listy
* Nagłówki i stopki
* Przypisy
* Numery stron
* Tekst pisany od prawej do lewej (z pewnymi ograniczeniami)
* Pliki PDF z możliwością przeszukiwania (obrazy z przodu zostaną usunięte na rzecz tekstu w tle)

## Przyszłe funkcje {#planned-features}

Niektóre funkcje są wciąż na wczesnym etapie rozwoju lub są uwzględnione w planie rozwoju:

* Spis treści
* OCR dla plików PDF z możliwością przeszukiwania i bez możliwości przeszukiwania
* Status postępu
* Tekst wielokolumnowy
* Wzory matematyczne
* Więcej pól automatycznych (oprócz `PAGE` i NUMPAGES)

## Wyjątki ładowania plików PDF

Podczas konwersji dokumentu PDF może wystąpić jeden z następujących wyjątków:

|  Wyjątek |  Opis |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Z jakiegoś powodu nie można przetworzyć pliku PDF.<br /> {{% alert color="primary" %}}Możesz zgłosić problem zespołowi programistów w celu szczegółowego zbadania, korzystając z pliku [Pomoc techniczna](/words/pl/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Plik PDF jest chroniony przez Adobe DRM i nie może być dekodowany przez Pdf2Word |
|  `PasswordProtectedFileException`  |  W przypadku pliku PDF chronionego hasłem należy podać prawidłowe hasło |

## Zobacz też

* [Odniesienie Nuget do Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

