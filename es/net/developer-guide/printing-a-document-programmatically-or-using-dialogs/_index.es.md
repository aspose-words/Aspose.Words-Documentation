---
title: Imprimir un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Imprimir un documento mediante programación o mediante cuadros de diálogo
linktitle: Imprimir un documento mediante programación o mediante cuadros de diálogo
description: "Imprima un documento en un servidor utilizando XpsPrint API no administrado o mediante una impresora seleccionada con Configuración y cuadros de diálogo de vista previa de impresión en C#."
type: docs
weight: 55
url: /es/net/print-a-document-programmatically-or-using-dialogs/
---

Este artículo describe cómo imprimir un documento de procesamiento de textos desde una aplicación de servicio ASP.NET o Windows utilizando Aspose.Words y `XpsPrint` API. También demuestra los métodos de impresión de un documento con los cuadros de diálogo Configuración, Vista previa de impresión y Progreso de la impresión, y explica cómo reducir el tiempo de la primera llamada para imprimir un documento.

## Imprimir un documento en un servidor a través de `XpsPrint` API

Esta sección está destinada a usuarios que desean enviar un documento XPS al XpsPrint API no administrado desde una aplicación .NET utilizando Aspose.Words.

### Limitaciones de imprimir un documento en las aplicaciones del Servicio ASP.NET o Windows

Al desarrollar una aplicación .NET que produce algunos resultados impresos, normalmente puede utilizar clases proporcionadas en el espacio de nombres *System.Drawing.Printing* o clases Windows Presentation Foundation (WPF). Sin embargo, si la aplicación es una aplicación de servicio ASP.NET o Windows, las opciones de impresión son limitadas porque Microsoft desaconseja el uso de este enfoque. Las clases de impresión .NET Framework no son compatibles con la aplicación de servicios. Esto incluye páginas ASP, que generalmente se ejecutan en el contexto del servicio del servidor.

Las clases dentro del espacio de nombres *System.Drawing.Printing* no son compatibles para su uso dentro de un servicio Windows o una aplicación o servicio ASP.NET, e intentar usarlas puede producir una disminución del rendimiento del servicio, excepciones en tiempo de ejecución y otros problemas. Tampoco se admite el uso de WPF para crear servicios Windows. Dado que WPF es una tecnología de presentación, el servicio Windows requiere permisos adecuados para realizar operaciones visuales que impliquen la interacción del usuario. Si el servicio Windows no tiene dichos permisos, es posible que se produzcan resultados inesperados.

El objeto Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) proporciona una familia de métodos [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) para imprimir documentos. Estos métodos utilizan las clases de impresión .NET definidas en el espacio de nombres *System.Drawing.Printing*. Hay muchos clientes de Aspose.Words que los utilizan con éxito para imprimir en sus aplicaciones del lado del servidor. Sin embargo, este artículo demuestra un método alternativo de impresión que cumple con las recomendaciones de Microsoft.

### Métodos para imprimir un documento en un servidor

La forma correcta de imprimir documentos según Microsoft es mediante XpsPrint API no administrado. Este API está disponible en Windows 7, Windows Server 2008 R2 y en Windows Vista siempre que esté instalada la Actualización de plataforma para Windows Vista.

Dado que Aspose.Words puede convertir fácilmente cualquier documento a XPS, sólo necesita escribir el código que pasa un documento XPS al API `XpsPrint`. El único problema es que el `XpsPrint` API no está administrado y requiere cierto conocimiento de la tecnología Platform Invoke.

Para imprimir un documento, Aspose.Words proporciona una clase **XpsPrintHelper** que contiene un método de impresión simple, donde solo necesita especificar los siguientes parámetros (ver más detalles en el artículo ["Imprimir documento mediante XPS API"](/words/net/missing-features-in-openxml/)):

- Documento que desea imprimir.
- Nombre de la impresora.
- Nombre del trabajo (opcional).
- Valor booleano, que especifica si el programa debe esperar hasta que se complete el trabajo de impresión. Por lo tanto, el sistema comprobará si el documento se imprimió correctamente o regresará inmediatamente después de enviar el trabajo de impresión. En el último caso, es imposible identificar si el trabajo de impresión fue exitoso.

Si encuentra algún problema al enviar o imprimir el documento, el método generará una excepción.

El siguiente ejemplo de código muestra cómo imprimir un documento usando la clase **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Cuando ejecuta el proyecto, imprime un documento de muestra en la impresora especificada y abre una ventana de consola para mostrar los resultados de la impresión. Cuando el trabajo de impresión se completa o se produce un error, el sistema mostrará un mensaje de éxito o el texto de la excepción lanzada.

También puede establecer algunas configuraciones de impresión utilizando la clase [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Por ejemplo, en Microsoft Word, las bandejas de la impresora están definidas para cada sección y son específicas de la impresora. Por lo tanto, puede cambiar estos valores mediante programación para cada sección mediante las propiedades [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) y [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

En algunos casos, es posible que necesite utilizar este ejemplo sin Aspose.Words. Por ejemplo, cuando ya tiene un documento XPS y solo desea imprimirlo desde una aplicación de servicio ASP.NET o Windows. Luego, puedes simplemente eliminar el método `Print`.

{{% /alert %}}

Hay dos sobrecargas del método **XpsPrintHelper**.**Print**. La primera sobrecarga toma un objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) y lo guarda en un `MemoryStream` en formato XPS. La segunda sobrecarga acepta un objeto `Stream`. La secuencia debe contener un documento en formato XPS.

Puede descargar los ejemplos de sobrecarga de métodos desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Imprimir un documento con configuraciones y cuadros de diálogo de vista previa de impresión

Cuando se trabaja con documentos, a menudo es necesario imprimirlos en una impresora seleccionada. Es útil utilizar un cuadro de diálogo de vista previa de impresión para inspeccionar visualmente cómo aparecerá el documento impreso y elegir las opciones de impresión relevantes.

El Aspose.Words no tiene cuadros de diálogo ni formularios integrados, pero implementa la clase [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), basada en la clase .NET **PrintDocument**. Se puede pasar una instancia de esta clase al formulario **PrintPreviewDialog** para obtener una vista previa e imprimir el documento. Además, la clase [Cuadro de diálogo Vista previa impresión.](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) define la salida a transmitir a una impresora.

El siguiente ejemplo muestra cómo utilizar estas clases para imprimir un documento desde Aspose.Words a través de los cuadros de diálogo Vista previa de impresión y Configuración:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

La propiedad **AllowSomePages** le permite seleccionar un rango de páginas para imprimir si el valor de esta propiedad es Verdadero. De forma predeterminada, todas las páginas del rango se seleccionan para imprimir.

{{% /alert %}}

Para optimizar la apariencia de la configuración del cuadro de diálogo Vista previa de impresión, especifique las propiedades de la clase **PrintPreviewDialog**.

## Imprimir varias páginas en una hoja

Siempre es beneficioso tener más flexibilidad a la hora de imprimir documentos. Con .NET y Aspose.Words, puede ajustar fácilmente la operación de impresión para implementar su lógica personalizada definiendo la forma en que aparecerá el documento en la página impresa.

Como en la sección anterior, Aspose.Words implementa la clase **MultipagePrintDocument**, que se basa en la clase .NET **PrintDocument**. Esto significa que la infraestructura de impresión .NET existente se puede utilizar de tal manera que los cuadros de diálogo de impresión y vista previa de impresión permitan visualizar el documento antes de imprimirlo. La clase **MultipagePrintDocument** brinda la posibilidad de imprimir varias páginas en una hoja de papel.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

El resultado de este ejemplo de código se muestra a continuación:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Ocultar el cuadro de diálogo de progreso de impresión al imprimir un documento

El cuadro de diálogo de progreso de la impresión no aparece al imprimir un documento mediante el método [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Sin embargo, este cuadro de diálogo aparece durante la impresión con otro método [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/). En este caso, para evitar que aparezca el cuadro de diálogo Impresión, debe especificar configuraciones de impresora válidas y un controlador de impresión estándar en este método, como se muestra en el siguiente ejemplo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Cómo reducir el tiempo de la primera llamada para imprimir un documento

Aspose.Words lee y almacena en caché algunos campos de **PrinterSettings** para reducir el tiempo de impresión. Puede lograr esto llamando al método [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Este método se llama antes de que comience la impresión si no se ejecutó previamente. Tenga en cuenta que el tiempo total de impresión con y sin llamada de este método es casi el mismo. El propósito de utilizar este método es reducir el tiempo de la primera llamada del método [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). El siguiente ejemplo de código muestra cómo utilizar este método:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Ver también

- [Actualización de plataforma para Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
