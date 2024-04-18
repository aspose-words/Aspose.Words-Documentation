---
title: Работа Windows Метафили
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа Windows Метафили
linktitle: Работа Windows Метафили
description: "Aspose.Words вместо Python via .NET прилага своя собствена Windows Metafile player да играе Metafile формат на всички платформи и поддържа управлението на основните функции метафил и може да изпълнява обратно към различен тип метафиле плейър."
type: docs
weight: 30
url: /bg/python-net/handling-windows-metafiles/
---

Windows Metafile формат е образ файл формат, който може да съдържа както векторни, така и растерни графики. Този формат се използва за съхранение на графични данни в паметта или на дискови файлове. Метафиле съхранява списък на функциите призовава в Windows Графичен интерфейс за устройство (GDI), който трябва да бъде изпълнен, за да се покаже изображението на екрана. Системата интерпретира и изпълнява тези команди в контекста на дисплея.

Преди, Windows Metafile е единственият векторен формат, поддържан от Microsoft Word. Microsoft Word Сега също поддържа SVG формат, но метафилният формат все още се използва често в Word документи. Също така Metafile може да бъде обменен формат за някои други приложения, като Microsoft Висио. По същество основната цел на Metafile е да осигури обмена на графична информация между Windows заявления.

Има 3 версии на Windows Metafile:

- Магазините се обаждат на 16 бита GDI.
- Обаждам се от магазина на Win32/GDI.
- EMF+ Metafile магазините се обаждат на GDI+. EMF+ Metafile също може да бъде двойствен, описвайки една и съща графика с двете части EMF и EMF+.

Съществуващият проблем с Windows Metafile е, че не се поддържа от повечето не-Word формати, към които обикновено се съхраняват документи. Поради това е необходимо форматът Metafile да бъде преобразуван в други растерни или векторни формати. Лесно е да се превърне Windows Metafile to Raster image on .NET чрез просто предаване на GDI+, но не е възможно на други платформи, тъй като дори GDI+ не осигурява функционалността за извличане на векторната графика от Metafile. За да решим тези въпроси, Aspose.Words прилага своя собствена Windows Metafile плейър, който е в състояние да играе Metafile формат както вектор, така и Raster графика на всички платформи.

## Контролиране на Aspose.Words Metafile Player

На [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) Класът ви позволява да контролирате метафилма. Например, можете да определите как metafile изображения трябва да се предават с помощта на [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) имот, който има специално значение при преобразуване в Bitmaps (вж. също [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/) имот).

Спестяването до битов карта работи различно на платформи, различни от .NET. Докато .NET GDI+ е референция, която работи почти перфектно дори за най-сложния метафил формат, на други платформи, тя може да предизвика проблеми или изобщо да не бъде подкрепена.

## Поддържане на операциите на Raster

Рестер операции е сложна метафилна функция, която в момента има ограничена подкрепа. В WMF и EMF метафилите се предлагат операции на Raster. Форматът на метафила EMF+ не използва директно операциите на Raster, но може да съдържа EMF части, вградени WMF или EMF метафили.

Има двоични и ternary raster операции:

- Двоични растер операции се прилагат към химикала рисуване команди, като чертаене линии и криви. Когато чертаете линия, цветът на писалката се комбинира с цвета на картата на дестинацията (цветът на съответния пиксел върху повърхността на устройството) чрез използване на определени побитови логически операции с стойности на цвета на хекс. Примерът по-долу илюстрира ефекта на всички 16 двоични растерни операции, прилагани към 20 различни цветни ленти. Вертикалните цветни ленти са изтеглени първо, хоризонталните ленти се теглят след всяка двоична работа на растера. За простите случаи, R2_BLACK рисува черно, R2_NOT обръща цвета, R2_NOP не променя фона, и R2- Бяло рисува бяло.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Операции на тернари растер се прилагат при рисуване на картинки. Те съчетават цветовете на съответните пиксели с картинки, четката и крайната карта с помощта на малко логически операции с определени стойности на цветовете. Една от най-често срещаните цели на използването на рутинни операции е емулацията на прозрачността. Изображението, представено в примера по-долу, показва как може да се подражава на иконата. Има два вида битмапс: B/w маската bitmap и цвета bitmap. Първо, маската bitmap е изтеглена с операцията SRCAND Raster. Тя променя непрозрачния икона регион в черно и бяло, оставяйки прозрачния регион непроменен. След това втората bitmap се изготвя с операцията SRCINVERT растер. Показва цветните пиксели на черния регион, оставяйки прозрачния регион непроменен.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Тракторните операции не могат да бъдат преобразувани директно във векторни графики. Aspose.Words емулира работата на гранатомета чрез частично разстъргване на повърхността на устройството, засегната от операциите на гранатомета. За тази цел, [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) собственост се използва.

{{% alert color="primary" %}}

Докато в момента не се поддържат двоични операции на растера и ограниченият брой на операциите на тристерния път е подкрепен от Aspose.Words, може да се справи с основните случаи на преобразуване директно във векторни графики, например, R2_BLACK, R2Бяло, R2Не. Също така, растеризирането на повърхността на устройството оказва значително въздействие върху ефективността, особено когато се включва значителен брой записи за експлоатация на оборудването.

{{% /alert %}}

Примерът по-долу показва как Aspose.Words прави метафилм до битов карта, когато не е възможно правилно да се направят някои от метафилните записи на векторни графики:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Настройки за отпадане на Metafile

Aspose.Words не поддържа редица метафилни функции, които са най-сложни или редки. В този случай Aspose.Words може да извършва обратно към различен тип метафиле плейър

Първо: Aspose.Words изпълнява обратно от векторния метафилист до растера, който се контролира от [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/) собственост. Ако резервната функция е изключена, Aspose.Words се опитва да направи някои заместващи графики вместо характеристиките, които не се поддържат.

Aspose.Words успешно играе метафилм към растер с помощта на GDI+ на .NET, Което прави този избор безопасен.

Второ, съществува възможност за EMF+ Dual metafile to read back from playing the EMF+ part to the EMF part. Той се контролира от [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Ако възникнат някои проблеми, когато се играе ролята на EMF, тогава също може да се извърши отстъпление към Raster.

Що се отнася до операциите на растера, ако [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) е деактивирана, след това се считат за неподдържани операции на Raster, което води до отпадане на битмап метафилъра, ако е активиран. Ето защо, ако имате метафилм с операции на Raster, но не искате да използвате емулация на Raster операции и все пак искате да получите векторната изход със заместителни графики, след това изберете [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
