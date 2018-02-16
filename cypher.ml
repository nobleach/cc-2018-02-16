(* Create empty cypher *)
let cypher = Hashtbl.create 1;;

let keys = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.?! ";;
let vals = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm.?! ";;
let key_val_length = String.length keys;;

(* Populate cypher *)
for i = 0 to key_val_length -1 do
    Hashtbl.add cypher (keys.[i]) (vals.[i])
done

let rot13 ans =
    String.map (fun ch -> Hashtbl.find cypher ch) ans;;

(* Why did the chicken cross the road? *)
print_string (rot13 "To get to the other side.")
