---
title: Seguridad de aplicaciones web al cargar recursos
second_title: Aspose.Words para .NET
articleTitle: Seguridad de aplicaciones web al cargar recursos externos
linktitle: Seguridad de aplicaciones web al cargar recursos externos
type: docs
description: "Cargar recursos remotos, eso puede ser motivo de riesgos de seguridad. Eche un vistazo a los problemas de seguridad comunes y sus soluciones utilizando C#."
weight: 100
url: /es/net/web-applications-security-when-loading-external-resources/
---

De forma predeterminada, Aspose.Words para .NET puede cargar recursos remotos como imágenes, estilos CSS o documentos HTML externos al importar documentos o insertar imágenes utilizando DocumentBuilder. Este comportamiento le permite procesar sus documentos con todo detalle, pero puede generar algunos riesgos de seguridad si la biblioteca forma parte de una aplicación web.

En este artículo, analizamos los problemas de seguridad comunes que pueden surgir al cargar recursos externos y brindamos recomendaciones sobre cómo evitarlos.

{{% alert color="primary" %}}

Aspose.Words no funciona como software antivirus. Por tanto, no proporciona información sobre la presencia de componentes maliciosos en el documento. Para garantizar la seguridad de sus datos, verifique usted mismo los documentos obtenidos de una fuente externa. A su vez, Aspose.Words brinda recomendaciones sobre cómo afrontar los problemas que pueden surgir al cargar recursos externos.

{{% /alert %}}

## Temas de seguridad

Existen una serie de problemas de seguridad típicos al cargar recursos externos.

### Divulgación de credenciales a través de imágenes vinculadas

En hosts basados en Windows, los documentos que contienen referencias a recursos que utilizan rutas UNC como *'\\example.com\a\b*' se procesarán de forma predeterminada. En un entorno de dominio, esto hará que el host envíe sus credenciales de dominio en formato hash al servidor especificado.

Si un atacante puede convencer a un usuario o servidor para que procese un documento con dicho enlace de recurso que apunta a un host que controla, el atacante recibirá las credenciales de la cuenta de usuario o de servicio en formato hash NTLM. Luego, dichos datos se pueden reutilizar en un ataque clásico de paso de hash, lo que permite al atacante obtener acceso a cualquier recurso como el usuario víctima o la cuenta de servicio.

Si la cuenta en cuestión utiliza una contraseña débil o adivinable, el atacante podría realizar además un ataque de descifrado de contraseña para recuperar la contraseña de la cuenta para un uso malintencionado posterior.

### Divulgación de imágenes locales a través de imágenes vinculadas

Al igual que en el caso anterior, procesar un documento con referencia a un archivo de imagen local dará como resultado que ese archivo se incluya en el documento final. Esto puede dar lugar a la divulgación de información confidencial.

### Negación de servicio

Un atacante podría cargar un documento que hiciera referencia o incluyera imágenes extremadamente grandes: las llamadas "bombas de descompresión". Al procesar estas imágenes, la biblioteca consumirá grandes cantidades de memoria y tiempo de CPU.

### Falsificación de solicitudes del lado del servidor a través de contenido vinculado

Un atacante podría crear una serie de documentos que contengan enlaces incrustados a combinaciones comunes de dirección IP y puerto internos y luego enviarlos a un servicio web utilizando la biblioteca Aspose.Words para procesar los documentos.

Según el tiempo que el servicio utiliza para procesar el documento, el atacante podría determinar si una determinada combinación de IP/puerto está filtrada por un firewall:

- un tiempo de procesamiento más largo indica que el paquete TCP SYN enviado por el servidor fue descartado por un firewall
- el tiempo de procesamiento rápido indica que se ha realizado una conexión exitosa

## Soluciones de problemas de seguridad

Para resolver los problemas descritos anteriormente y mejorar la seguridad de las aplicaciones web, puede controlar o deshabilitar la carga de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

El siguiente ejemplo de código muestra cómo deshabilitar la carga de imágenes externas:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

El siguiente ejemplo de código muestra cómo deshabilitar recursos remotos:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Este artículo está basado en la consultora Independent Security Evaluators [informar](ise-aspose-informar.pdf).

{{% /alert %}}
