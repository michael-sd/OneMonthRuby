true && true	#true
false && true 	#false
1 == 1 && 2 == 1 	#false
"love" == "love"	#true
1 == 1 || 2 != 1 	#true
true && 1 == 1 		#true
false && 0 != 0		#true
true || 1 == 1 		#true
"time" == "money" 	#false
1 != 0 && 2 == 1 	#false
"I Can't Believe It's Not Butter!" != "butter" 	#true
"one" == 1 		#false
!(true && false) 	#true
!(1 == 1 && 0 != 1) #false
!(10 == 1 || 1000 == 1000)	#false
!(1 != 10 || 2 == 4)	#false
!("love" == "love" && "time" == "money")	#true
1 == 1 && !("one" == 1 || 1 == 0)	#true
"chunky" == "bacon" && !(3 == 4 || 3 == 3)	#false
3 == 3 && !("love" == "love" || "Ruby" == "Fun")	#false