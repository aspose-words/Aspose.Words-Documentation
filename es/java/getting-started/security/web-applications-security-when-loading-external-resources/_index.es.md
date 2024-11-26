---
title: Seguridad De La Aplicación Web Al Cargar Recursos
second_title: Aspose.Words por Java
articleTitle: Seguridad De Las Aplicaciones Web Al Cargar Recursos Externos
linktitle: Seguridad De Las Aplicaciones Web Al Cargar Recursos Externos
type: docs
description: "Cargar recursos remotos, eso puede ser motivo de riesgos de seguridad. Eche un vistazo a los problemas de seguridad comunes y sus soluciones en Java."
weight: 120
url: /es/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

De forma predeterminada, Aspose.Words para Java puede cargar recursos remotos como imágenes, CSS estilos o documentos externos HTML al importar documentos o insertar imágenes con DocumentBuilder. Este comportamiento le permite procesar sus documentos con todo detalle, pero puede ser motivo de algunos riesgos de seguridad si la biblioteca forma parte de una aplicación web.

En este artículo, analizamos los problemas de seguridad comunes que pueden surgir al cargar recursos externos y brindamos recomendaciones sobre cómo evitar dichos problemas.

{{% alert color="primary" %}}

Aspose.Words no funciona como software antivirus. Por lo tanto, no proporciona información sobre la presencia de componentes maliciosos en el documento. Para garantizar la seguridad de sus datos, verifique usted mismo los documentos obtenidos de una fuente externa. A su vez, Aspose.Words brinda recomendaciones sobre cómo lidiar con los problemas que pueden surgir al cargar recursos externos.

{{% /alert %}}

## Problemas de Seguridad

Hay una serie de problemas de seguridad típicos al cargar recursos externos.

### Divulgación De Credenciales A Través De Imágenes Vinculadas

En hosts basados en Windows, los documentos que contengan referencias a recursos que utilicen rutas UNC como *' \ \ example. com\a\b * ' se procesarán de forma predeterminada. En un entorno de dominio, esto hará que el host envíe sus credenciales de dominio en un formato hash al servidor especificado.

Si un atacante puede convencer a un usuario o servidor de que procese un documento con dicho enlace de recursos apuntando a un host que controla, el atacante recibirá las credenciales de la cuenta de usuario o servicio en formato hash NTLM. Dichos datos luego se pueden reutilizar en un ataque clásico de pasar el hash, lo que permite al atacante obtener acceso a cualquier recurso como usuario víctima o cuenta de servicio.

Si la cuenta en cuestión usa una contraseña débil o adivinable, el atacante también podría realizar un ataque de descifrado de contraseñas para recuperar la contraseña de la cuenta para un uso malicioso adicional.

### Divulgación De Imágenes Locales A Través De Imágenes Vinculadas

De manera similar al caso anterior, procesar un documento con una referencia a un archivo de imagen local dará como resultado que ese archivo se incluya en el documento final. Esto puede conducir a la divulgación de información confidencial.

### Denegación de Servicio

Un atacante podría cargar un documento que hiciera referencia o incluyera imágenes extremadamente grandes, las llamadas "bombas de descompresión". Al procesar estas imágenes, la biblioteca consumirá grandes cantidades de memoria y CPU tiempo.

### Falsificación De Solicitudes Del Lado Del Servidor A Través De Contenido Vinculado

Un atacante podría crear una serie de documentos que contengan enlaces incrustados a combinaciones comunes de dirección interna IP y puerto, y luego enviarlos a un servicio web utilizando la biblioteca Aspose.Words para procesar los documentos.

En función del tiempo que el servicio utiliza para procesar el documento, el atacante podría determinar si un firewall filtra una combinación determinada de IP/puerto:

- un tiempo de procesamiento más prolongado indica que el paquete TCP SYN enviado por el servidor fue descartado por un firewall
- el tiempo de procesamiento rápido indica que se ha realizado una conexión exitosa

## Soluciones de Problemas de Seguridad

Para resolver los problemas descritos anteriormente y mejorar la seguridad de las aplicaciones web, puede controlar o deshabilitar la carga de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

El siguiente ejemplo de código muestra cómo deshabilitar la carga de imágenes externas:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo deshabilitar recursos remotos:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Este artículo se basa en la consultora Independent Security Evaluators [informe](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

