---
title: Преобразование в PDF/A и PDF/UA
second_title: Aspose.Words для Python via .NET
articleTitle: Изучите особенности преобразования в PDF/A и PDF/UA
linktitle: Изучите особенности преобразования в PDF/A и PDF/UA
description: "Преобразуйте в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA с помощью Python. Выберите наилучший стандарт PDF для преобразования документа с помощью Python via .NET."
type: docs
weight: 25
url: /ru/python-net/learn-features-of-conversion-to-pdf-a/
timestamp: 2024-01-31-14-23-37
---

PDF - это формат фиксированной страницы, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной функцией Aspose.Words.

PDF сам по себе является сложным форматом, поскольку он имеет определенную файловую структуру, графическую модель, встроенные шрифты и некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы. Кроме того, преобразование документа в PDF требует нескольких этапов расчета, которые являются сложными и отнимают много времени.

В этом разделе мы рассмотрим основные проблемы, которые могут возникнуть при работе с документами в различных стандартах PDF, и опишем варианты их решения.

## Какой PDF Стандарт Aspose.Words поддерживает

Aspose.Words теперь позволяет пользователям работать с форматами PDF/A-1, PDF/A-2 и PDF/A-4, а также с форматами PDF/UA-1:

- PDF/A-1 имеет серьезные ограничения, такие как прозрачность, и некоторые параметры сжатия запрещены
- PDF/A-2 устраняет некоторые ограничения PDF/A-1, такие как поддержка прозрачности и эффектов слоев или встраивание шрифтов OpenType
- PDF/A-4 предполагает пересмотренные уровни соответствия: обычное соответствие PDF/A-4 эквивалентно соответствию уровня U предыдущих версий, а соответствие уровню A удалено
- PDF/UA-1 контент должен быть помечен и стандартизирован в соответствии с ISO 32000-1: 2008

PDF/A - это ISO- стандартизированная версия PDF, предназначенная для использования при архивировании и долгосрочном хранении электронных документов. В то же время, PDF/UA - это еще одна ISO стандартизированная версия PDF, разработанная для обеспечения доступности для людей с ограниченными возможностями, использующих вспомогательные технологии. Чтобы указать уровень соответствия стандартам PDF, используйте свойство [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/). Из-за условий хранения в документе PDF/A должны быть встроены все шрифты и отключено шифрование, в то время как в документе PDF/UA должны быть встроены только все шрифты.

В этом разделе мы более подробно рассмотрим работу с документами PDF/A или PDF/UA-1.

## Соответствующие ISO стандартам PDF

Чтобы узнать больше о различных стандартах PDF, ознакомьтесь со следующими ISOs:

- PDF 1.7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Смотрите также

* [Как редактировать теги структуры документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Как проверить или отредактировать язык текста в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Как изменить язык текста в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Как добавить альтернативный текст к фигуре, рисунку, диаграмме, графическому изображению SmartArt или другому объекту в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Как добавить альтернативный текст и дополнительную информацию к тегам](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (или прочитайте ту же информацию в руководстве пользователя [Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Как настроить запись ActualText для текста](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), раздел "Добавление фактического текста для сокращенного термина, формулы или символа, отличного от Юникода"
* [Отображение в Юникоде для распространенных символьных шрифтов Windows](http://www.alanwood.net/demos/webdings.html)
