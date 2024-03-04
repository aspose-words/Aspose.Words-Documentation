---
title: Преобразование в PDF/A и PDF/UA
second_title: Aspose.Words для .NET
articleTitle: Изучите особенности преобразования в PDF/A и PDF/UA
linktitle: Изучите особенности преобразования в PDF/A и PDF/UA
description: "Конвертируйте в PDF/A-1, PDF/A-2, PDF/A-4 и PDF/UA с помощью C#. Выберите лучший стандарт PDF для преобразования документа с помощью C#."
type: docs
weight: 25
url: /ru/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
---

PDF — это фиксированный формат страниц, который очень популярен среди пользователей и широко поддерживается различными приложениями, поскольку документ PDF выглядит одинаково на любом устройстве. По этой причине преобразование в PDF является важной функцией Aspose.Words.

PDF сам по себе является сложным форматом, поскольку он имеет определенную файловую структуру, графическую модель, встраивание шрифтов и некоторые сложные функции вывода, такие как теги структуры документа, шифрование, цифровые подписи и редактируемые формы. Кроме того, преобразование документа в PDF требует нескольких этапов расчетов, которые являются сложными и трудоемкими.

В следующих статьях мы рассмотрим основные проблемы, которые могут возникнуть при работе с документами в различных стандартах PDF, и опишем варианты их решения.

## Какой стандарт PDF Aspose.Words поддерживает

Aspose.Words теперь позволяет пользователям работать с форматами PDF/A-1, PDF/A-2 и PDF/A-4, а также PDF/UA-1:

* PDF/A-1 имеет серьезные ограничения, такие как прозрачность, а некоторые параметры сжатия запрещены
* PDF/A-2 устраняет некоторые ограничения PDF/A-1, такие как поддержка прозрачности и эффектов слоев или встраивание шрифтов OpenType
* PDF/A-4 предполагает пересмотренные уровни соответствия: обычное соответствие PDF/A-4 эквивалентно соответствию уровня U предыдущих версий, а соответствие уровня A удалено
* Содержимое PDF/UA-1 должно быть помечено и стандартизировано в соответствии с ISO 32000-1: 2008

PDF/A — это стандартизированная версия PDF ISO, предназначенная для использования при архивировании и долговременном хранении электронных документов. В то же время PDF/UA — это еще одна стандартизированная версия PDF ISO, предназначенная для обеспечения доступности для людей с ограниченными возможностями, использующих ассистивные технологии. Чтобы указать уровень соответствия стандартам PDF, используйте свойство [Compliance](https://reference.aspose.com/words/ru/net/aspose.words.saving/pdfsaveoptions/compliance/). Из-за условий хранения в документ PDF/A необходимо встроить все шрифты и отключить шифрование, а в PDF/UA – только все шрифты.

В этом разделе мы подробнее рассмотрим работу с документами PDF/A или PDF/UA-1.

## Соответствующий ISO для стандартов PDF

Чтобы узнать больше о различных стандартах PDF, проверьте следующие ISO:

* PDF 1.7=ISO-32000-1:2008
* PDF 2.0 = ISO-32000-2:2020
* PDF/A-1=ISO-19005-1:2005
* PDF/A-2=ISO-19005-2:2011
* PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1=ISO-14289:2014

## Смотрите также

* [Конвертировать документ в PDF](/words/ru/net/convert-a-document-to-pdf/)
* [Как редактировать теги структуры документа в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Как проверить или отредактировать язык текста в Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Как изменить язык текста в Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Как добавить альтернативный текст к фигуре, изображению, диаграмме, графическому элементу SmartArt или другому объекту в Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
*[Как добавить в теги альтернативный текст и дополнительную информацию](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (или читайте ту же информацию в разделе [Adobe Acrobat Руководство пользователя](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Как настроить запись ActualText для текста](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), раздел "Добавление фактического текста для сокращенного термина, формулы или символа, отличного от Юникода"
* [Сопоставление Юникода для Windows распространенных символических шрифтов](http://www.alanwood.net/demos/webdings.html)
