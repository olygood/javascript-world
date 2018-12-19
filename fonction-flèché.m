## fonction flèché  
arg => value  
- **fonction qui recois un argument**  
valeur quelle reçois, valeur quel revoi
la fonction recois un argument **arg**  => une flèche  et renvoi une valeur **value**  
```
arg => arg*5
```
fonction Anonyme pas pratique qui recoi un argument et nous renvoi arg * 5  
il faut un nom :  stoké dans une variable  
```
const myFunction = arg=>*5; 
myFunction (2); 
```
on stocke la function dans la variable myfunction  
 - **fonction flèché comme methode sur des objets**  
```
const me = {
  name:"oli"
  presentFriend: function(friend){
  return "tu connais" + friend + "?";
  }
};
me.presentFriend("kevin);
```
- **fonction flèché avec 1 argument n'a pas de parenthèse**  
```
const me2 = {
  name:"oli"
  presentFriend: friend => "tu connais" + friend + "?"; //friend sans parenthèse car un argument 
  me2.presentFriend("sacha");
  ```
  **function qui ne reçois pas d'argument**
  ```
  const me2 = {
    name:"oli",
    presentFunctionSelf: () => "hello!"  //sans argument
  };
  me.presentFunctionSelf();
  ```
  -**function qui reçois 3 arguments :**  
 const me3 = {
    name:"oli",
    presentThreeFriends: (friend12,friend2,friend3) => "tu connais " + friend1 + frieend2 + friend3 + "?"  //trois arguments
  };
  me.presentThreeFriends("jean","bernard","julien");  
  ```
  - **un fonction flèché qui as un arguments et qui éxécute du code : **  
  ```
   const me4 = {
    name:"oli",
    presentExecute: friend => {
        const presentation  = "tu connais" + friend + "?";
        console.log (presentation);
     return presentation
  };
  me.presentExecute("laura");
  ```
 - **une autre particularité dans les fonctions flèchéé leurs façon de traiter "THIS"**.
   clasique function = function(){
   console.log(this);
  }
const arrowFuction = () => console.log (this);
   
   const me = {
    name:"oli,
    presentClassic : classicFunction,
    presentArrow : arrowFunction
   }
   me.presentClassic();
   me.presentArrow();
   - la classic donne l'objet Me et la fonction flèché donne l'objet window  
    classic : le this c'est l'objet me  
     flèché  : le this  
    
  
  
  
  
