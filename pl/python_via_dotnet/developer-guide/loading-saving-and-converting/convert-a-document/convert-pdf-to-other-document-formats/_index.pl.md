---
title: Konwertuj pliki PDF na inne formaty dokumentów
second_title: Aspose.Words dla Python via .NET
articleTitle: Konwertuj pliki PDF na inne formaty dokumentów
linktitle: Konwertuj pliki PDF na inne formaty dokumentów
type: docs
description: "Konwertuj pliki PDF na formaty Word, takie jak DOCX, DOC, formaty obrazów, takie jak JPG lub PNG, lub dowolne inne formaty obsługiwane przez Aspose za pomocą `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /pl/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words może załadować nawet tak złożony format jak PDF. Otwiera to nowe możliwości: możliwa jest konwersja plików PDF do programu Word lub innych formatów, które zapewniają użytkownikom daleko idącą przewagę w rozwiązywaniu wielu stosowanych problemów.

## Konwertuj pliki PDF na inne formaty {#convert-pdf-to-other-formats}

Najpopularniejszą konwersją z formatu PDF jest konwersja do formatów Microsoft Word takich jak DOCX, DOC, a także formatów graficznych takich jak JPG czy PNG. W związku z tym konwersja dokumentu z jednego formatu na inny przebiega w znany sposób.

Poniższy przykład kodu pokazuje, jak przekonwertować dokument z formatu PDF na DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Określ opcje ładowania podczas importowania pliku PDF {#specify-load-options-when-importing-pdf}

Aspose.Words udostępnia klasę [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), która pozwala na bardziej precyzyjną kontrolę nad sposobem ładowania dokumentów PDF.

Większość właściwości dziedziczy lub przeciąża właściwości, które już istnieją w klasie [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Oprócz nich dla formatu PDF określono szereg właściwości. Można na przykład użyć właściwości [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) i [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) do zdefiniowania zakresu stron ładowanych z dokumentu PDF oraz właściwości [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) do kontrolowania, czy obrazy powinny być pomijane podczas ładowania pliku PDF. Kolejnym obsługiwanym parametrem jest [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), który należy podać w przypadku dokumentów chronionych hasłem.

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

## Planowane funkcje {#planned-features}

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
|   *FileLoadException*               |  Z jakiegoś powodu nie można przetworzyć pliku PDF.<br /> {{% alert color="primary" %}}Możesz zgłosić problem zespołowi programistów w celu szczegółowego zbadania, korzystając z pliku [Pomoc techniczna](/words/pl/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  Plik PDF jest chroniony przez Adobe DRM i nie może być dekodowany przez Pdf2Word |
|   *PasswordProtectedFileException*  |  W przypadku pliku PDF chronionego hasłem należy podać prawidłowe hasło |


