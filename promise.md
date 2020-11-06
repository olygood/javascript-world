## Les promesses  
Définition des promesses
Les promesses représentent une valeur qui sera disponible dans le futur.

Autrement dit, elles promettent qu'elles retourneront une valeur dans le futur. Mais cette valeur peut être null, undefined, ou une erreur.

Elles permettent de gérer l'asynchrone de manière plus simple que les fonctions de rappel.

Les états d'une promesse
Une promesse peut être dans un des trois états suivants.

Son état initial est pending (en attente). La promesse est en cours d'exécution.

Ensuite la promesse peut être tenue (fulfilled) ou rompue (rejected).

Lorsqu'elle a atteint un de ces deux états on dit qu'elle est acquittée (settled). Mais ce n'est pas un état, c'est une manière de dire qu'elle n'est plus en cours.

Déclaration d'une promesse
Une promesse est un objet natif JavaScript Promise spécifique qui se déclare comme ceci :

new Promise((resolve, reject) => ());
La fonction passée à une promesse n'est pas une fonction de rappel. Elle est exécutée immédiatement avant que l'objet Promise soit retourné.

Elle est appelée fonction exécutrice.

Elle reçoit deux fonctions en arguments resolve() et reject() qui permettent, soit de tenir, soit de rejeter une promesse et de retourner une valeur passée en argument.

Ces deux fonctions sont elles des fonctions de rappel fournies nativement par le moteur JavaScript.

const unePromesse = new Promise((resolve, reject) => {
  resolve(42); 
});
La promesse sera ici tenue et n'a aucun intérêt car elle n'effectue pas de traitements asynchrone.

Autre exemple :

const unePromesse = new Promise((resolve, reject) => {
  setTimeout(() => resolve(42), 1000);
});
Ici la promesse sera résolue dans une seconde après son exécution.

Une promesse va donc exécuter du code asynchrone dans sa fonction exécutrice, ensuite il faut obligatoirement appeler l'une des deux fonctions de rappel passées en argument en fonction du résultat des tâches asynchrones.

Si reject() est appelée, la promesse sera rompue avec la valeur passée en argument, si resolve() est appelée, la promesse sera tenue avec la valeur passée en argument.

Ces fonctions de rappel ne peuvent être appelée qu'une seule fois :

const unePromesse = new Promise((resolve, reject) => {
  resolve(42); 
  reject("erreur..."); // est ignoré
  resolve(22); // est ignoré
});
Consommer une promesse
Prenons l'exemple suivant :

const unePromesse = new Promise((resolve, reject) => {
  resolve(42); 
});
Ici unePromesse va contenir un objet Promise :

Promise
__proto__: Promise
constructor: ƒ Promise()
then: ƒ then()
catch: ƒ catch()
finally: ƒ finally()
Symbol(Symbol.toStringTag): "Promise"
__proto__: Object
[[PromiseStatus]]: "resolved"
[[PromiseValue]]: 42
Remarquons qu'elle a un statut : resolved donc tenue et une valeur : 42.

Les doubles crochets indiquent que ce sont des valeurs réservées pour le moteur et que vous ne devez pas y accéder et ne pouvez y accéder comme cela.

Mais alors comment y accéder ? Avec les consommateurs.

Les consommateurs d'une promesse peuvent être les méthodes then(), catch() ou finally(). Nous verrons également qu'await également.

La méthode then()
La méthode then() s'utilise sur une promesse et prend un ou deux arguments. Elle permet de gérer la valeur de retour en cas de rejet ou de succès.

Le premier argument est une fonction de rappel qui recevra en argument la valeur retournée si la promesse à été tenue, par resolve(valeur).

Le deuxième argument est une fonction de rappel qui recevra en argument la valeur retournée si la promesse à été rompue, par reject(valeur).

Par exemple :

const unePromesse = new Promise((resolve, reject) => {
  setTimeout(() => resolve(42), 1000);
});

unePromesse.then(
  resultat => console.log(resultat), 
  erreur =>  console.log(erreur) 
);
L'une des deux fonctions de rappel de la méthode then() va être invoquée lorsque la promesse est terminée, soit parce que la méthode resolve() a été appelée, soit parce que la méthode reject() a été invoquée.

Dans notre exemple, la première fonction va être exécutée : resultat => console.log(resultat).

Cette fonction va recevoir en argument la valeur passée à resolve(), ici 42.

Voici quelques exemples pour y voir plus clair :
La méthode catch()
La méthode catch() est un raccourci de la méthode then() lorsque nous ne sommes intéressé que par le retour du rejected(). Elle équivaut exactement à :

.then(null, erreur => /* code */ );
Il s'agit de sucre syntaxique, c'est à dire que c'est simplement un raccourci qui permet d'écrire directement :

.catch(erreur => /* code */ );
Il est recommandé d'utiliser la méthode then() avec un unique paramètre pour gérer le succès de la promesse, et la méthode catch() pour gérer la gestion du rejet. Le code est plus lisible si vous procédez de cette manière.

La méthode finally()
La méthode finally() prend une seule fonction de rappel en argument qui est appelée que la promesse soit tenue ou rompue.

La fonction de rappel ne reçoit aucune valeur.

Elle est utile pour exécuter du code lorsque la promesse est terminée, par exemple pour retirer l'affichage d'un GIF de chargement.

Exemple :
