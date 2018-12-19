## changement de variable  
> let :
> 
> const : 
- on est obligé de l'initialiser de lui donner une valeur dé le debut.  
- on ne peut plus lui assigner une autre valeur par la suite
```const x = 5 ;``` et on lui donne une valeur q'une seul fois  
- on ne peut pas lui assigner un nouvelle objet :  

```
const x = {name : "john"},  
x = {name:"codeur"}; //erreur 

const x = {name : "john"},  
x.name= "codeur"; //ok

let x = {name : "john"},  
x = {name:"codeur"}; // ok
```
> je peut changer les propriété de cet objet mais je ne peut pas lui assigner un nouvlle objet
- pas de hosting :
console.log (x)
let x; //erreur 
quand on arrive au console (x); le x n'existe pas 
le hosting n'existe pas le x n'a pas été hissé en haut de la page comme le var  
