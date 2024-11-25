---
title: Sécurité Des Applications Web Lors Du Chargement Des Ressources
second_title: Aspose.Words pour Java
articleTitle: Sécurité Des Applications Web Lors Du Chargement De Ressources Externes
linktitle: Sécurité Des Applications Web Lors Du Chargement De Ressources Externes
type: docs
description: "Charger des ressources distantes, cela peut être une raison de risques de sécurité. Jetez un œil aux problèmes de sécurité courants et à leurs solutions dans Java."
weight: 120
url: /fr/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Par défaut, Aspose.Words pour Java peut charger des ressources distantes telles que des images, des styles CSS ou des documents HTML externes lors de l'importation de documents ou de l'insertion d'images à l'aide de DocumentBuilder. Ce comportement vous permet de traiter vos documents en détail, mais peut être une raison de certains risques de sécurité si la bibliothèque fait partie d'une application Web.

Dans cet article, nous examinons les problèmes de sécurité courants pouvant survenir lors du chargement de ressources externes et fournissons des recommandations sur la manière d'éviter de tels problèmes.

{{% alert color="primary" %}}

Aspose.Words ne fonctionne pas comme un logiciel antivirus. Par conséquent, il ne fournit pas d'informations sur la présence de composants malveillants dans le document. Pour assurer la sécurité de vos données, vérifiez vous-même les documents obtenus auprès d'une source externe. À son tour, Aspose.Words fournit des recommandations sur la façon de traiter les problèmes qui peuvent survenir lors du chargement de ressources externes.

{{% /alert %}}

## Problèmes de Sécurité

Il existe un certain nombre de problèmes de sécurité typiques lors du chargement de ressources externes.

### Divulgation Des Informations D'Identification Via Des Images Liées

Sur les hôtes basés sur Windows, les documents contenant des références à des ressources qui utilisent des chemins UNC tels que *' \ \ example. com \ a \ b* ' seront traités par défaut. Dans un environnement de domaine, l'hôte enverra ses informations d'identification de domaine dans un format haché au serveur spécifié.

Si un attaquant parvient à convaincre un utilisateur ou un serveur de traiter un document avec un tel lien de ressource pointant vers un hôte qu'il contrôle, l'attaquant recevra les informations d'identification du compte d'utilisateur ou de service au format de hachage NTLM. Ces données peuvent ensuite être réutilisées dans une attaque classique par passe-le-hachage, permettant à l'attaquant d'accéder à n'importe quelle ressource en tant qu'utilisateur victime ou compte de service.

Si le compte en question utilise un mot de passe faible ou devinable, l'attaquant pourrait également effectuer une attaque de craquage de mot de passe pour récupérer le mot de passe du compte en vue d'une utilisation malveillante ultérieure.

### Divulgation D'Images Locales Via Des Images Liées

Comme dans le cas précédent, le traitement d'un document avec une référence à un fichier image local entraînera l'inclusion de ce fichier dans le document final. Cela peut conduire à la divulgation d'informations sensibles.

### Déni de Service

Un attaquant pourrait télécharger un document qui référençait ou incluait des images extrêmement volumineuses – les soi-disant"bombes de décompression". Lors du traitement de ces images, la bibliothèque consommera d'énormes quantités de mémoire et CPU de temps.

### Falsification De Requêtes Côté Serveur Via Le Contenu Lié

Un attaquant pourrait créer une série de documents contenant des liens intégrés vers des combinaisons courantes d'adresse interne IP et de port, puis les soumettre à un service Web utilisant la bibliothèque Aspose.Words pour traiter les documents.

En fonction de la durée utilisée par le service pour traiter le document, l'attaquant pourrait déterminer si une combinaison IP/Port donnée est filtrée par un pare-feu:

- un temps de traitement plus long indique que le paquet TCP SYN envoyé par le serveur a été abandonné par un pare-feu
- un temps de traitement rapide indique qu'une connexion réussie a été établie

## Solutions des Problèmes de Sécurité

Pour résoudre les problèmes décrits ci-dessus et améliorer la sécurité des applications Web, vous pouvez contrôler ou désactiver le chargement des ressources externes à l'aide de [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

L'exemple de code suivant montre comment désactiver le chargement d'images externes:

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

L'exemple de code suivant montre comment désactiver les ressources distantes:

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

Cet article est basé sur le cabinet de conseil Independent Security Evaluators [rapport](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

