---
title: Instalación
second_title: Aspose.Words para .NET
articleTitle: Instalación
linktitle: Instalación
description: "Instale Aspose.Words para .NET utilizando herramientas Visual Studio como Manage NuGet Package o Package Manager Console y el instalador MSI. Utilice el permiso de plena confianza establecido en C#."
type: docs
weight: 10
url: /es/net/installation/
---

Asegúrese de que su máquina cumpla con el [Requisitos del sistema](/words/net/system-requirements/) antes de comenzar.

Este artículo explica cómo instalar Aspose.Words para .NET en su computadora.

## Instale o actualice Aspose.Words para .NET usando Administrar NuGet Package {#install-or-update-aspose-words-for-net-using-nuget}

NuGet es la forma más sencilla de descargar e instalar archivos [Aspose.Words para .NET](https://www.nuget.org/packages/Aspose.Words/) API. Para hacer esto, siga estos pasos:

1. Abra *Microsoft Visual Studio* y *Administrar NuGet Package* desde el menú para abrir el administrador de paquetes.
2. Busque "aspose" o "aspose.words" para encontrar el API de Aspose deseado.<br>
  <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-palabras-nuget" style="width:800px"/>
3. Seleccione el Aspose API deseado y haga clic en "Instalar".

El API seleccionado se descargará y se hará referencia en su proyecto.

También puede actualizar Aspose.Words para .NET a la versión deseada usando *Administrar NuGet Package*.

## Instale o actualice Aspose.Words usando la consola del administrador de paquetes

También puede instalar o actualizar Aspose.Words para .NET API usando la *Consola de Package Manager*. Para hacer esto, siga estos pasos:

1. Abra *Microsoft Visual Studio* y *Consola del administrador de paquetes* desde el menú para abrir la consola del administrador de paquetes.<br>
  <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-palabras-nuget-actualización" style="width:600px"/>
2. Escriba el comando `Install-Package Aspose.Words` y presione Entrar para instalar la última versión completa en su aplicación.<br>
  <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-palabras-nuget-actualización-2" style="width:600px"/><br>
  {{% alert color="primary" %}}Además, puede agregar el sufijo `-prerelease` al comando para especificar que también se debe instalar la última versión, incluidas las revisiones.{{% /alert %}}
3. Una vez descargado, verás mensajes de confirmación.<br>
  <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-palabras-nuget-instalado" style="width:600px"/><br>
  {{% alert color="primary" %}}Si no está familiarizado con el [Asponer EULA](https://about.aspose.com/legal/eula/), se recomienda leer la licencia a la que se hace referencia en la URL.{{% /alert %}}
4. Ahora puede descubrir que Aspose.Words se ha agregado correctamente y se ha hecho referencia a él en su solicitud.<br>
  <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-palabras-nuget-referencias" style="width:400px"/>

En la *Consola de Package Manager*, también puede usar el comando `Update-Package Aspose.Words` para buscar actualizaciones del paquete Aspose.Words e instalarlas si están presentes. También puede agregar el sufijo `-prerelease` para actualizar la última versión.

## Instale Aspose.Words para .NET usando el instalador

Aspose.Words para .NET se puede instalar descargando directamente el instalador MSI desde [seccion de descargas](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Debe iniciar sesión para descargar el instalador. Si aún no estás registrado, puedes registrarte gratis.

{{% /alert %}}

Para instalar Aspose.Words para .NET, siga estos pasos:

1. Descargue `Aspose.Words_`{LatestVersion}.msi desde [seccion de descargas](https://releases.aspose.com/words/)
2. Haga doble clic en el archivo descargado, iniciando así el asistente de configuración, siga las instrucciones del asistente de configuración.<br>
  <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-palabras-configuración-1" style="width:500px"/>
3. Cuando el asistente de configuración complete la instalación, los archivos necesarios estarán disponibles en la carpeta en la ruta de carpeta proporcionada.<br>
  <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-palabras-configuración-4" style="width:500px"/>
4. Abra su solución/proyecto en Visual Studio
5. Haga clic derecho en su proyecto en *Explorador de soluciones* y agregue la referencia a los ensamblajes instalados.
6. Los ensamblados instalados Aspose.Words para .NET aparecerán en extensiones en la sección Ensamblajes; simplemente seleccione el componente DLL requerido<br>
  <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-palabras-configuración-5" style="width:800px"/>
7. Finalmente, haga clic en Aceptar

## Consideraciones al ejecutar en un entorno de servidor compartido

Se recomienda ejecutar todos los componentes de Aspose .NET con el conjunto de permisos *Full Trust*. Esto se debe a que el componente Aspose .NET a veces necesita acceso a la configuración del registro y a los archivos ubicados en lugares distintos al directorio virtual, como la lectura de fuentes. Además, los componentes `Aspose.NET` se basan en clases centrales del sistema .NET, algunas de las cuales también requieren permiso *Full Trust* para ejecutarse en algunos casos.

Los proveedores de servicios de Internet que alojan múltiples aplicaciones de diferentes empresas aplican en su mayoría un nivel de seguridad de *Confianza media*. En el caso de .NET 2.0, dicho nivel de seguridad puede imponer las siguientes restricciones, que pueden afectar la capacidad de Aspose.Words para funcionar correctamente:

- **RegistryPermission** no está disponible. Esto significa que no puede acceder al registro, que es necesario para enumerar las fuentes instaladas al representar documentos.
- **FileIOPermission** está restringido. Esto significa que sólo puede acceder a archivos en la jerarquía de directorios virtuales de su aplicación. Esto también significa potencialmente que las fuentes no se pueden leer durante la exportación.

Por los motivos especificados anteriormente, se recomienda ejecutar Aspose.Words con permisos de plena confianza. Es posible que algunas de las funciones de la biblioteca funcionen al realizar diferentes tareas con confianza media y otras no, por ejemplo, al renderizar. Esto puede estar relacionado con llamadas de procesamiento de imágenes GDI+.
