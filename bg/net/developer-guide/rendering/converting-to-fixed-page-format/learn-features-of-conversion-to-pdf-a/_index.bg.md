---
title: Преобразуване на PDF/A и PDF/UA
second_title: Aspose.Words вместо .NET
articleTitle: Учете характеристики на преобразуване на PDF/A и PDF/UA
linktitle: Учете характеристики на преобразуване на PDF/A и PDF/UA
description: "Конвертиране на PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA, използвайки C#. Изберете най-добрия PDF стандарт за преобразуване на документ, използвайки C#."
type: docs
weight: 25
url: /bg/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF е фиксирана страница формат, който е много популярен сред потребителите и е широко подкрепен от различни приложения, като PDF документ изглежда същия на всяко устройство. Поради тази причина превръщането в PDF е важна характеристика на Aspose.Words.

PDF е сложен формат сам по себе си, тъй като има специфична файлова структура, графичен модел, вграждане на шрифт, както и някои сложни функции на изхода, като например текстови тагове, криптиране, цифрови подписи и редактирани форми. Освен това превръщането на документ в PDF изисква няколко етапа на изчисление, които са сложни и отнемащи време.

В следващите статии ще разгледаме основните проблеми, които могат да възникнат при работа с документи в различни PDF стандарти и ще опишем възможностите за решаването им.

## Коя PDF Стандартно Aspose.Words Подкрепа

Aspose.Words сега позволява на потребителите да работят с PDF/A-1, PDF/A-2 и PDF/A-4 формати, както и PDF/UA-1:

* PDF/A-1 има сериозни ограничения като прозрачност и някои опции за компресиране са забранени
* PDF/A-2 премахва някои от ограниченията на PDF/A-1, като например подкрепа за прозрачност и ефекти върху слоевете или включване на шрифтове OpenType
* PDF/A-4 приема ревизирани нива на съответствие: редовното съответствие PDF/A-4 е еквивалентно на нивото U на предишните версии, а нивото A се отстранява
* Съдържанието на PDF/UA-1 трябва да бъде маркирано и стандартизирано съгласно ISO 32000-1: 2008

PDF/A е ISO-стандартизирана версия на PDF, предназначена за използване в архивиране и дългосрочно съхранение на електронни документи. В същото време PDF/UA е друг ISO стандартизирана версия на PDF, предназначена да осигури достъпност за хора с увреждания, които използват помощни технологии. За да се определи нивото на съответствие с PDF стандартите, използвайте [Compliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/compliance/) собственост. Поради условията на съхранение, PDF/A документът трябва да внедри всички шрифтове и да деактивира криптирането, докато PDF/UA трябва само да вгради всички шрифтове.

В този раздел ще разгледаме отблизо работата с PDF/A или PDF/UA-1 документи.

## Съответни ISO за PDF Стандарти

За да научите повече за различните PDF стандарти, проверете следното: ISOс:

* PDF 1, 7 = ISO- 32000-1: 2008
* PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
* PDF/A-2 = ISO-19005-2: 2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Вижте също

* [Конвертиране на документ в PDF](/words/bg/net/convert-a-document-to-pdf/)
* [Как се редактира структурата на документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Как да проверите или редактирате текстов език в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Как да промените езика на текста в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Как да добавите алтернативен текст към форма, картина, диаграма, SmartArt графика, или друг обект в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Как да добавите алтернативен текст и допълнителна информация към таговете](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (или прочетете същата информация в [Adobe Acrobat Ръководство за потребителя](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Как да създадете текстов текст](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), Ако отговорът е "да," моля имайте предвид, че:
* [Уникод карта за общи Windows символични шрифтове](http://www.alanwood.net/demos/webdings.html)
