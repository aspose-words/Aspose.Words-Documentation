---
title: Перетворення в PDF/A та PDF/UA
second_title: Aspose.Words для Java
articleTitle: Особливості перетворення в PDF/A та PDF/UA
linktitle: Особливості перетворення в PDF/A та PDF/UA
description: "Перетворення в PDF/A-1, PDF/A-2, PDF/A-4 та PDF/UA за допомогою Javaй Виберіть найкращий стандарт PDF для перетворення документа за допомогою Javaй"
type: docs
weight: 25
url: /uk/java/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF є фіксованим форматом сторінок, який дуже популярний серед користувачів і широко підтримується різними додатками, оскільки документ PDF виглядає таким же на будь-якому пристрої. З цієї причини перетворення в PDF є важливою особливістю Aspose.Wordsй

PDF є складним форматом, оскільки він має певну структуру файлів, графічну модель, розширення шрифтів та деякі складні функції виведення, такі як теги структури документів, шифрування, цифрові підписи та редаговані форми. Крім того, конвертація документа в PDF вимагає декількох етапів розрахунку, які є складними і трудомісткими.

У цьому розділі ми розглянемо основні проблеми, які можуть виникнути при роботі з документами в різних стандартах PDF і описати варіанти їх вирішення.

## Який PDF Стандарти Aspose.Words Підтримка

Aspose.Words тепер дозволяє користувачам працювати з PDF/A-1, PDF/A-2 та PDF/A-4 форматами, а також PDF/UA-1:

* PDF/A-1 має серйозні обмеження, такі як прозорість та деякі варіанти стиснення
* PDF/A-2 усуває деякі обмеження PDF/A-1, такі як підтримка ефектів прозорості та шару або складання шрифтів OpenType
* PDF/A-4 припускає переглянуті рівні конформансу: регулярний PDF/A-4 конформанс еквівалентний попередньому рівні версій У відповідності, а рівень А видалення
* PDF/UA-1 вміст повинен бути позначений і стандартизований відповідно до ISO 32000-1: 2008

PDF/A є PDF ISO-стандартна версія PDF, призначена для використання в архіві та довгостроковому зберіганні електронних документів. При цьому PDF/UA ще ISO стандартизована версія PDF, призначена для забезпечення доступності людей з обмеженими можливостями, які використовують допоміжну технологію. Для визначення рівня відповідності стандартам PDF, використання [Compliance](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getCompliance) майно. У зв'язку з умовами зберігання PDF/A документ необхідно зібрати всі шрифти та вимкнути шифрування, в той час як PDF/UA необхідно лише зібрати всі шрифти.

У цьому розділі ми розглянемо більш детальну інформацію про роботу з документами PDF/A або PDF/UA-1.

## Релевант ISO для PDF Стандарти

Щоб дізнатися більше про різні стандарти PDF, перевірте наступне ISOй

- PDF 1.7 = 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Дивитися ще

* [Як редагувати теги структури документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Як перевірити або редагувати текстову мову в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Як змінити мову тексту Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Як додати альтернативний текст до форми, зображення, діаграми, смарт-арт-графічного або іншого об'єкта в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* Ім'я * [Як додати альтернативну текстову та додаткову інформацію для тегів](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (або читати однакову інформацію в [Adobe Acrobat Керівництво користувача](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)й
* Ім'я * [Як налаштувати запис Актексу для тексту](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), розділ "Додати Фактичний текст для скороченого терміну, формули або не-Unicode Символ"
* [Унікод картографування для загального Windows символічні шрифти](http://www.alanwood.net/demos/webdings.html)
