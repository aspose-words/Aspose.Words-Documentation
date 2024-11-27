---
title: Превръщане в PDF/A и PDF/UA
second_title: Aspose.Words за C++
articleTitle: Научете характеристиките на конвертирането до PDF/A и PDF/UA
linktitle: Научете характеристиките на конвертирането до PDF/A и PDF/UA
description: "Конвертиране в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA като се използва C++. Изберете най-добрия PDF стандарт, за да конвертирате документ, използвайки С++."
type: docs
weight: 35
url: /bg/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF е фиксиран формат на страницата, който е много популярен сред потребителите и се поддържа широко от различни приложения, тъй като PDF документ изглежда еднакво на всяко устройство. Поради тази причина превръщането в PDF е важна характеристика на Aspose.Words.

PDF е сложен формат сам по себе си, тъй като има специфична файлова структура, графичен модел, вграждане на шрифтове и някои сложни функции на изхода, като тагове за структурата на документа, криптиране, цифрови подписи и редактируеми формуляри. Освен това конвертирането на документ в PDF изисква няколко етапа на изчисление, които са сложни и отнемат много време.

В този раздел ще разгледаме основните проблеми, които могат да възникнат при работа с документи в различни PDF стандарти и ще опишем възможностите за решаването им.

## Какво Поддържа PDF Стандарт Aspose.Words

Aspose.Words сега позволява на потребителите да работят с PDF/A-1, PDF/A-2 и PDF/A-4 формати, както и PDF/UA-1:

* PDF/A-1 има сериозни ограничения като прозрачност и някои опции за компресиране са забранени
* PDF/A-2 елиминира някои от ограниченията на PDF/A-1, като например поддръжка на прозрачност и ефекти на слоя или вграждане на OpenType шрифтове
* PDF/A-4 предполага ревизирани нива на съответствие: редовното PDF/A-4 съответствие е еквивалентно на съответствието на ниво У на предишните версии и съответствието на ниво а се премахва
* PDF/UA-1 съдържанието трябва да бъде маркирано и стандартизирано съгласно ISO 32000-1: 2008

PDF/A е ISO-стандартизирана версия на PDF, предназначена за архивиране и дългосрочно съхранение на електронни документи. В същото време PDF/UA е друга ISO стандартизирана версия на PDF, предназначена да осигури достъпност за хора с увреждания, които използват помощни технологии. За да определите нивото на съответствие със стандартите PDF, използвайте свойството [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Поради условията за съхранение PDF/A документът трябва да вгради всички шрифтове и да забрани шифроването, докато PDF/UA трябва да вгради само всички шрифтове.

В този раздел ще разгледаме по-отблизо работата с документи PDF/A или PDF/UA-1.

## Подходящи ISO за PDF стандарти

За да научите повече за различните стандарти PDF, проверете следното ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Вижте Също

* [Как да редактирате таговете за структурата на документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Как да проверите или редактирате текстовия език в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Как да промените езика на текста в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Как да добавите алтернативен текст към фигура, картина, диаграма, SmartArt графика или друг обект в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Как да добавите алтернативен текст и допълнителна информация към етикетите](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (или прочетете същата информация в [Adobe Acrobat Ръководство За Потребителя](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Как да настроите ActualText запис за текст](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) раздел "добавяне на действителен текст за съкратен термин, формула или символ, който не е Уникод"
* [Уникод картографиране на общи Windows символни шрифтове](http://www.alanwood.net/demos/webdings.html)

