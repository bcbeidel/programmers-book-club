(* This is a comment. This is our first program. *)

val x = 34; (* int *)
(* static environment: x:int *)
(* dyanamic environment: x --> 34 *)

val y = 17; (* int *)
(* static environment: x:int, y:int *)
(* dyanmic envirornment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2); 
(* static environment: x:int, y:int, z:int *)
(* dyanmic envirornment: x --> 34, y --> 17, z --> 70 *)

val q = z + 1;
(* static environment: x:int, y:int, z:int, q:int *)
(* dyanmic envirornment: x --> 34, y --> 17, z --> 70, q --> 71 *)

val abs_of_z = if z < 0 then 0 - z else z; (* bool *) (* int *) (* int *)
(* static environment: abs_of_z: int *)
(* dynamic environment: ..., abs_of_z --> 70*)

val abs_of_z_simpler = abs z;
(* static environment: abs_of_z_simpler:int *)
(* dynamic environment: abs_of_z_simpler --> 70)