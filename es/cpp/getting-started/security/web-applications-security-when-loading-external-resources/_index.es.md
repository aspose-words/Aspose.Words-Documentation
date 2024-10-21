---
title: Seguridad De La Aplicación Web Al Cargar Recursos
second_title: Aspose.Words para C++
articleTitle: Seguridad De Las Aplicaciones Web Al Cargar Recursos Externos
linktitle: Seguridad De Las Aplicaciones Web Al Cargar Recursos Externos
type: docs
description: "Cargar recursos remotos, eso puede ser motivo de riesgos de seguridad. Eche un vistazo a los problemas de seguridad comunes y sus soluciones en C++."
weight: 50
url: /es/cpp/web-applications-security-when-loading-external-resources/
---

Por defecto, Aspose.Words para C++ puede cargar recursos remotos como imágenes, estilos CSS o documentos HTML externos al importar documentos o insertar imágenes con DocumentBuilder. Este comportamiento le permite procesar sus documentos con todo detalle, pero puede ser motivo de algunos riesgos de seguridad si la biblioteca forma parte de una aplicación web.

En este artículo, analizamos los problemas de seguridad comunes que pueden surgir al cargar recursos externos y brindamos recomendaciones sobre cómo evitar dichos problemas.

{{% alert color="primary" %}}

Aspose.Words no funciona como software antivirus. Por lo tanto, no proporciona información sobre la presencia de componentes maliciosos en el documento. Para garantizar la seguridad de sus datos, verifique usted mismo los documentos obtenidos de una fuente externa. A su vez, Aspose.Words brinda recomendaciones sobre cómo lidiar con los problemas que pueden surgir al cargar recursos externos.

{{% /alert %}}

## Problemas de Seguridad

Hay una serie de problemas de seguridad típicos al cargar recursos externos.

### Divulgación De Credenciales A Través De Imágenes Vinculadas

En hosts basados en Windows, los documentos que contengan referencias a recursos que utilicen rutas UNC como * ' \\example.com\a\b*’ se procesarán de forma predeterminada. En un entorno de dominio, esto hará que el host envíe sus credenciales de dominio en un formato hash al servidor especificado.

Si un atacante puede convencer a un usuario o servidor de que procese un documento con dicho enlace de recursos apuntando a un host que controla, el atacante recibirá las credenciales de la cuenta de usuario o servicio en formato hash NTLM. Dichos datos luego se pueden reutilizar en un ataque clásico de pasar el hash, lo que permite al atacante obtener acceso a cualquier recurso como usuario víctima o cuenta de servicio.

Si la cuenta en cuestión usa una contraseña débil o adivinable, el atacante también podría realizar un ataque de descifrado de contraseñas para recuperar la contraseña de la cuenta para un uso malicioso adicional.

### Divulgación De Imágenes Locales A Través De Imágenes Vinculadas

De manera similar al caso anterior, procesar un documento con una referencia a un archivo de imagen local dará como resultado que ese archivo se incluya en el documento final. Esto puede conducir a la divulgación de información confidencial.

### Denegación de Servicio

Un atacante podría cargar un documento que hiciera referencia o incluyera imágenes extremadamente grandes, las llamadas "bombas de descompresión". Al procesar estas imágenes, la biblioteca consumirá grandes cantidades de memoria y tiempo de CPU.

### Falsificación De Solicitudes Del Lado Del Servidor A Través De Contenido Vinculado

Un atacante podría crear una serie de documentos que contengan enlaces incrustados a combinaciones comunes de dirección IP interna y puerto, y luego enviarlos a un servicio web utilizando la biblioteca Aspose.Words para procesar los documentos.

En función del tiempo que el servicio utilice para procesar el documento, el atacante podría determinar si un firewall filtra una combinación determinada de IP/puerto:

- un tiempo de procesamiento más prolongado indica que un firewall eliminó el paquete TCP SYN enviado por el servidor
- el tiempo de procesamiento rápido indica que se ha realizado una conexión exitosa

## Soluciones de Problemas de Seguridad

Para resolver los problemas descritos anteriormente y mejorar la seguridad de las aplicaciones web, puede controlar o deshabilitar la carga de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

El siguiente ejemplo de código muestra cómo deshabilitar la carga de imágenes externas:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo deshabilitar recursos remotos:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Este artículo se basa en la consultora Independent Security Evaluators [informe](ise-aspose-report.pdf).

{{% /alert %}}
