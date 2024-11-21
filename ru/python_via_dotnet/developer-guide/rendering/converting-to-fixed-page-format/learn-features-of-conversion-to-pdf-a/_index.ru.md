---
title: Преобразование в PDF/A и PDF/UA
second_title: Aspose.Words для Python via .NET
articleTitle: Узнать особенности преобразования в PDF/A и PDF/UA
linktitle: Узнать особенности преобразования в PDF/A и PDF/UA
description: "Преобразование в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA Python. Выберите лучший стандарт PDF для конвертации документа Python via .NET."
type: docs
weight: 25
url: /ru/python-net/learn-features-of-conversion-to-pdf-a/
timestamp: 2024-01-31-14-23-37
---

PDF - это фиксированный формат страницы, который очень популярен среди пользователей и широко поддерживается различными приложениями, так как PDF-документ выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной особенностью Aspose.Words.

PDF сам по себе является сложным форматом, поскольку он имеет определенную структуру файла, графическую модель, встраивание шрифта и некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы. Кроме того, преобразование документа в PDF требует нескольких этапов расчета, которые являются сложными и трудоемкими.

В этом разделе мы рассмотрим основные проблемы, которые могут возникнуть при работе с документами в различных стандартах PDF и опишем варианты их решения.

## Какой PDF Стандарт Aspose.Words Поддержка

Aspose.Words Теперь пользователи могут работать с форматами PDF/A-1, PDF/A-2 и PDF/A-4, а также PDF/UA-1:

- PDF/A-1 имеет серьезные ограничения, такие как прозрачность и некоторые варианты сжатия запрещены
- PDF/A-2 устраняет некоторые ограничения PDF/A-1, такие как поддержка прозрачности и эффектов слоев или встраивание шрифтов OpenType
- PDF/A-4 предполагает пересмотренные уровни соответствия: обычное соответствие PDF/A-4 эквивалентно уровню U соответствия предыдущих версий, и уровень A соответствия удаляется
- Содержимое PDF/UA-1 должно быть помечено и стандартизировано в соответствии с ISO 32000-1: 2008

PDF/A является ISOСтандартизированная версия PDF, предназначенная для использования в архивировании и долгосрочном хранении электронных документов. В то же время, PDF/UA - это другой формат. ISO Стандартизированная версия PDF предназначена для обеспечения доступности для людей с ограниченными возможностями, которые используют вспомогательные технологии. Для определения уровня соответствия стандартам PDF используйте [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/) собственность. Из-за условий хранения документ PDF/A должен встраивать все шрифты и отключать шифрование, в то время как PDF/UA должен встраивать только все шрифты.

В этом разделе мы рассмотрим более подробно работу с документами PDF/A или PDF/UA-1.

## Относящийся ISO для PDF Стандарты

Чтобы узнать больше о различных стандартах PDF, проверьте следующее: ISOs:

- PDF 1,7 = ISO-32000-1: 2008
- PDF 2.0 = ISO-32000-2: 2020
- PDF/A-1 = ISO19005-1: 2005
- PDF/A-2 = ISO19005-2: 2011
- PDF/A-4 = ISO-19005-4: 2020
- PDF/UA-1 = ISO-14289: 2014

## Смотрите также

* [Как редактировать теги структуры документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Как проверить или отредактировать текстовый язык Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Как изменить язык текста в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Как добавить альтернативный текст к форме, картинке, диаграмме, графике SmartArt или другому объекту Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Как добавить альтернативный текст и дополнительную информацию к тегам](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (или прочитать ту же информацию в [Adobe Acrobat Руководство пользователя](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Как настроить ActualText для текста](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), "Добавить фактический текст для сокращенного термина, формулы или символа без кода"
* [Картирование Unicode для общего Windows символические шрифты](http://www.alanwood.net/demos/webdings.html)
