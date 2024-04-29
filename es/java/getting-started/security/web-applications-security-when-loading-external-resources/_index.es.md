---
title: Web App Security Cuando se cargan recursos
second_title: Aspose.Words para Java
articleTitle: Aplicaciones Web Seguridad Cuando Carga Recursos Externos
linktitle: Aplicaciones Web Seguridad Cuando Carga Recursos Externos
type: docs
description: "Cargar recursos remotos, eso puede ser una razón de riesgos de seguridad. Echa un vistazo a los problemas comunes de seguridad y sus soluciones en Java."
weight: 120
url: /es/java/web-applications-security-when-loading-external-resources/
---

Por defecto, Aspose.Words para Java puede cargar recursos remotos como imágenes, estilos CSS o documentos HTML externos al importar documentos o insertar imágenes usando el DocumentBuilder. Este comportamiento le permite procesar sus documentos en detalle, pero puede ser una razón de algunos riesgos de seguridad si la biblioteca es parte de una aplicación web.

En este artículo, echamos un vistazo a las cuestiones comunes de seguridad que pueden surgir cuando se cargan recursos externos y se formulan recomendaciones sobre cómo evitar esos problemas.

{{% alert color="primary" %}}

Aspose.Words no funciona como software antivirus. Por lo tanto, no proporciona información sobre la presencia de componentes maliciosos en el documento. Para garantizar la seguridad de sus datos, compruebe los documentos obtenidos de una fuente externa usted mismo. A su vez, Aspose.Words proporciona recomendaciones sobre cómo abordar problemas que pueden surgir al cargar recursos externos.

{{% /alert %}}

## Cuestiones de seguridad

Hay varios problemas de seguridad típicos al cargar recursos externos.

### Divulgación creíble Via Linked Images

On Windows- hosts basados, documentos que contienen referencias a recursos que utilizan caminos de la UNC como *\\ejample.com\a\b*’ se procesarán por defecto. En un entorno de dominio, esto hará que el host envíe sus credenciales de dominio en un formato reducido al servidor especificado.

Si un atacante puede convencer a un usuario o servidor para procesar un documento con tal enlace de recursos apuntando a un host que controlan, el atacante recibirá las credenciales de usuario o cuenta de servicio en formato NTLM hash. Estos datos pueden ser reutilizados en un ataque clásico de paso-el-hash, permitiendo al atacante obtener acceso a cualquier recurso como el usuario de la víctima o cuenta de servicio.

Si la cuenta en cuestión utiliza una contraseña débil o conjeturable, el atacante podría realizar además un ataque de cracking de contraseña para recuperar la contraseña de la cuenta para un uso más malicioso.

### Divulgación de imagen local Via Linked Images

Similar al caso anterior, procesar un documento con referencia a un archivo de imagen local resultará en que ese archivo se incluya en el documento final. Esto puede dar lugar a una información confidencial.

### Denegación del servicio

Un atacante podría subir un documento que se refiere o incluye imágenes extremadamente grandes – las llamadas "bombas de descompresión". Al procesar estas imágenes, la biblioteca consumirá enormes cantidades de memoria y tiempo de CPU.

### Server-Side Request Forgery Via Linked Content

Un atacante podría crear una serie de documentos que contienen enlaces incrustados a combinaciones comunes de dirección IP interna y puerto, luego enviarlos a un servicio web utilizando el Aspose.Words biblioteca para procesar los documentos.

Basado en el tiempo que el servicio utiliza para procesar el documento, el atacante podría determinar si una combinación IP/Port determinada es filtrada por un firewall:

- tiempo de procesamiento más largo indica que el paquete TCP SYN enviado por el servidor fue lanzado por un cortafuegos
- tiempo de procesamiento rápido indica que se ha logrado una conexión exitosa

## Soluciones para cuestiones de seguridad

Para resolver los problemas descritos anteriormente y mejorar la seguridad de las aplicaciones web, puede controlar o desactivar la carga de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

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

El siguiente ejemplo de código muestra cómo desactivar los recursos remotos:

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

Este artículo se basa en la empresa consultora Evaluadores de Seguridad Independiente [informe](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

