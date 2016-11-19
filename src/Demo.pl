data Bool = { True | False }

not : Bool -> Bool {
  not True = False ;
  not False = True
}

data Nat = { Zero | Suc Nat }

even : Nat -> Bool {
  even Zero = True ;
  even (Suc Zero) = False ;
  even (Suc (Suc n)) = even n
}

plus : Nat -> Nat -> Nat {
  plus Zero y = y ;
  plus (Suc x) y = Suc (plus x y)
}

mul : Nat -> Nat -> Nat {
  mul Zero y = Zero ;
  mul (Suc x) y = plus y (mul x y)
}

id : forall a. a -> a {
  id x = x
}

const : forall a b. a -> b -> a {
 const x y = x
}

data Unit = { Unit }

data Delay a = { Delay (Unit -> a) }

force : forall a. Delay a -> a {
  force (Delay f) = f Unit
}

if : forall a. Bool -> Delay a -> Delay a -> a {
  if True t f = force t ;
  if False t f = force f
}

data List a = { Nil | Cons a (List a) }

map : forall a b. (a -> b) -> List a -> List b {
  map f Nil = Nil ;
  map f (Cons x xs) = Cons (f x) (map f xs)
}

compose : forall a b c. (b -> c) -> (a -> b) -> a -> c {
  compose f g x = f (g x)
}