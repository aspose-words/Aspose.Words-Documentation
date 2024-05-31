---
title: Предупреждение при запис в PDF/A и PDF/UA
second_title: Aspose.Words вместо .NET
articleTitle: Предупреждение при достъп до PDF/A и PDF/UA
linktitle: Предупреждение при достъп до PDF/A и PDF/UA
description: "PDF/A и PDF/UA налагат изисквания за достъпност, свързани със съдържанието на документи. При пестене на PDF/A или PDF/UA в C# и въпросът нарушава спазването на изискванията, издава се предупреждение."
type: docs
weight: 29
url: /bg/net/warnings-when-saving-to-pdfa-and-pdfua/
---

Форматите PDF/A и PDF/UA налагат редица изисквания за достъпност, свързани със съдържанието на документа, които не могат да бъдат изпълнени при автоматично преобразуване от Word в PDF. Тези изисквания са описани в предишната статия *"Работа с PDF/A или PDF/UA"*. Сега се отправят предупреждения за някои от тези проблеми.

Предупрежденията се издават при спестяване към един от форматите PDF/A или PDF/UA и въпросът нарушава спазването. Например, предупреждението за заглавието на липсващия документ ще бъде издадено при запис в PDF/UA и няма да бъде издадено при запис в PDF/A.

Всички предупреждения са на [WarningType](https://reference.aspose.com/words/net/aspose.words/warningtype/)**.Minor FormattingLoss** както и [WarningSource](https://reference.aspose.com/words/net/aspose.words/warningsource/)**. Pdf**. Ето списък на новите стойности на предупреждението за описание:

|  Описание на предупредителната стойност |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Документното заглавие липсва. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |                          |   {{< emoticons/tick >}}  |
|  "Документът съдържа заглавия, които не са последователни. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |                          |   {{< emoticons/tick >}}  |
|  "Има форми без алт текст в документа. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Има таблици без алт текст в документа. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Има хипервръзки без алт текст в документа. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |                          |   {{< emoticons/tick >}}  |
|  "Има таблици без заглавен ред/колона в документа. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |                          |   {{< emoticons/tick >}}  |
|  "Документът съдържа Уникод ПУА символи. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |   {{< emoticons/tick >}}  |                          |
|  "Документът съдържа .notdef glyphс. Това нарушава изискванията за съответствие. Изходният документ няма да бъде напълно съвместим." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |