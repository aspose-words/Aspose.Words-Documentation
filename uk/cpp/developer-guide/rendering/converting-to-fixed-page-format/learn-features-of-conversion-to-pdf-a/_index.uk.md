---
title: Перетворення в PDF/A і PDF/UA
second_title: Aspose.Words для C++
articleTitle: Вивчіть особливості перетворення в PDF/A і PDF/UA
linktitle: Вивчіть особливості перетворення в PDF/A і PDF/UA
description: "Перетворити на PDF/A-1, PDF/A-2, PDF/A-4 і PDF/UA, використовуючи C++. Виберіть найкращий стандарт PDF для перетворення документа за допомогою c++."
type: docs
weight: 35
url: /uk/cpp/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

PDF - це формат фіксованої сторінки, який дуже популярний серед користувачів і широко підтримується різними програмами, оскільки документ PDF виглядає однаково на будь-якому пристрої. З цієї причини перетворення в PDF є важливою функцією Aspose.Words.

PDF сам по собі є складним форматом, оскільки він має певну структуру файлів, графічну модель, вбудовані шрифти та деякі складні функції виводу, такі як теги структури документа, шифрування, цифрові підписи та редаговані форми. Крім того, перетворення документа в PDF вимагає декількох етапів розрахунку, які є складними і забирають багато часу.

У цьому розділі ми розглянемо основні проблеми, які можуть виникнути при роботі з документами в різних стандартах PDF, і опишемо варіанти їх вирішення.

## Який PDF стандарт Aspose.Words підтримує

Aspose.Words тепер дозволяє користувачам працювати з форматами PDF/A-1, PDF/A-2 і PDF/A-4, а також з форматами PDF/UA-1:

* PDF/A-1 має серйозні обмеження, такі як прозорість, і деякі параметри стиснення заборонені
* PDF/A-2 усуває деякі обмеження PDF/A-1, такі як підтримка прозорості та ефектів шарів або вбудовування шрифтів OpenType
* PDF/A-4 передбачає переглянуті рівні відповідності: звичайна відповідність PDF/A-4 еквівалентна відповідності рівня u попередніх версій, а відповідність рівню a видалено
* PDF/UA-1 вміст повинен бути позначений та стандартизований відповідно до ISO 32000-1: 2008

PDF/A - це ISO- стандартизована версія PDF, призначена для використання при архівуванні та довгостроковому зберіганні електронних документів. У той же час, PDF/UA - це ще одна ISO стандартизована версія PDF, розроблена для забезпечення доступності для людей з обмеженими можливостями, які використовують допоміжні технології. Щоб вказати рівень відповідності стандартам PDF, використовуйте властивість [Compliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/). Через умови зберігання в документі PDF/A повинні бути вбудовані всі шрифти та вимкнено шифрування, тоді як у документі PDF/UA повинні бути вбудовані лише всі шрифти.

У цьому розділі ми більш детально розглянемо роботу з документами PDF/A або PDF/UA-1.

## Відповідні ISO стандартам PDF

Щоб дізнатися більше про різні стандарти PDF, перегляньте наступні ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Дивіться також

* [Як редагувати теги структури документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Як перевірити або відредагувати мову тексту в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Як змінити мову тексту в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Як додати альтернативний текст до фігури, малюнка, діаграми, графічного зображення SmartArt або іншого об'єкта в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Як додати альтернативний текст та додаткову інформацію до тегів](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (або прочитайте ту саму інформацію в посібнику користувача [Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Як налаштувати запис ActualText для тексту](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), розділ "додавання фактичного тексту для скороченого терміна, формули або символу, відмінного від Юнікоду"
* [Відображення в Юнікоді для поширених символьних шрифтів Windows](http://www.alanwood.net/demos/webdings.html)

