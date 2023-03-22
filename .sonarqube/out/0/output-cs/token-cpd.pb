√)
GC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\CardDiscounts.cs
	namespace 	
VVPS_UPR
 
{ 
internal		 
enum		 !
DiscountCardsInternal		 '
{

 
FamilyCardAdult 
, 
FamilyCardChild 
, 

SeniorCard 
} 
public 

enum 
DiscountCards 
{ 

FamilyCard 
, 

SeniorCard 
} 
public 

class 
CardDiscounts 
{ 
private 

Dictionary 
< !
DiscountCardsInternal 0
,0 1
decimal2 9
>9 :

_discounts; E
{F G
getH K
;K L
setM P
;P Q
}R S
public 
CardDiscounts 
( 
List !
<! "

Dictionary" ,
<, -
string- 3
,3 4
object5 ;
>; <
>< =!
config_card_discounts> S
)S T
{ 	

_discounts 
= 
new 

Dictionary '
<' (!
DiscountCardsInternal( =
,= >
decimal? F
>F G
(G H
)H I
;I J
foreach 
( 
var 
discount_card &
in' )!
config_card_discounts* ?
)? @
{ 
var   
	card_name   
=   
(    !
string  ! '
)  ' (
discount_card  ( 5
[  5 6
$str  6 <
]  < =
;  = >
decimal!! 
discount!!  
=!!! "
$num!!# $
;!!$ %
var"" 
successful_parse"" $
=""% &
decimal""' .
."". /
TryParse""/ 7
(""7 8
discount_card""8 E
[""E F
$str""F P
]""P Q
.""Q R
ToString""R Z
(""Z [
)""[ \
,""\ ]
out""^ a
discount""b j
)""j k
;""k l
if$$ 
($$ 
!$$ 
successful_parse$$ %
)$$% &
throw$$' ,
new$$- 0
ArgumentException$$1 B
($$B C
$str$$C a
)$$a b
;$$b c
switch&& 
(&& 
	card_name&& !
)&&! "
{'' 
case(( 
$str(( ,
:((, -

_discounts)) "
.))" #
Add))# &
())& '!
DiscountCardsInternal))' <
.))< =
FamilyCardAdult))= L
,))L M
discount))N V
)))V W
;))W X
break** 
;** 
case++ 
$str++ ,
:++, -

_discounts,, "
.,," #
Add,,# &
(,,& '!
DiscountCardsInternal,,' <
.,,< =
FamilyCardChild,,= L
,,,L M
discount,,N V
),,V W
;,,W X
break-- 
;-- 
case.. 
$str.. &
:..& '

_discounts// "
.//" #
Add//# &
(//& '!
DiscountCardsInternal//' <
.//< =

SeniorCard//= G
,//G H
discount//I Q
)//Q R
;//R S
break00 
;00 
default11 
:11 
throw22 
new22 !
ArgumentException22" 3
(223 4
$str224 \
)22\ ]
;22] ^
}33 
}44 
}55 	
public77 
decimal77 &
calculatePriceCardDiscount77 1
(771 2
DiscountCards772 ?
discount_card77@ M
,77M N
int77O R

lowest_age77S ]
,77] ^
decimal77_ f

base_price77g q
)77q r
{88 	
if99 
(99 
discount_card99 
==99  
DiscountCards99! .
.99. /

FamilyCard99/ 9
&&99: <

lowest_age99= G
<99H I
$num99J L
)99L M
{:: 
return;; 

base_price;; !
*;;" #
(;;$ %
$num;;% &
-;;' (

_discounts;;) 3
[;;3 4!
DiscountCardsInternal;;4 I
.;;I J
FamilyCardChild;;J Y
];;Y Z
);;Z [
;;;[ \
}<< 
else<< 
if<< 
(<< 
discount_card<< $
==<<% '
DiscountCards<<( 5
.<<5 6

FamilyCard<<6 @
&&<<A C

lowest_age<<D N
>=<<O Q
$num<<R T
)<<T U
{== 
return>> 

base_price>> !
*>>" #
(>>$ %
$num>>% &
->>' (

_discounts>>) 3
[>>3 4!
DiscountCardsInternal>>4 I
.>>I J
FamilyCardAdult>>J Y
]>>Y Z
)>>Z [
;>>[ \
}?? 
else@@ 
{AA 
returnBB 

base_priceBB !
*BB" #
(BB$ %
$numBB% &
-BB' (

_discountsBB) 3
[BB3 4!
DiscountCardsInternalBB4 I
.BBI J

SeniorCardBBJ T
]BBT U
)BBU V
;BBV W
}CC 
}DD 	
}EE 
}FF Ç
FC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\Model\Config.cs
	namespace		 	
VVPS_UPR		
 
.		 
Model		 
{

 
internal 
class 
Config 
{ 
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
List 
< 
TimeDiscount  
>  !
TimeDiscounts" /
{0 1
get2 5
;5 6
private7 >
set? B
;B C
}D E
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
List 
< 

Dictionary 
< 
string %
,% &
object' -
>- .
>. /
DiscountCards0 =
{> ?
get@ C
;C D
privateE L
setM P
;P Q
}R S
[ 	
JsonProperty	 
( 
$str +
)+ ,
], -
public 
decimal 
PricePerKilometer (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
Config 
( 
List 
< 
TimeDiscount '
>' (
timeDiscounts) 6
,6 7
List8 <
<< =

Dictionary= G
<G H
stringH N
,N O
objectP V
>V W
>W X
discountCardsY f
,f g
decimalh o
pricePerKilometer	p Å
)
Å Ç
{ 	
DiscountCards 
= 
discountCards )
;) *
TimeDiscounts 
= 
timeDiscounts )
;) *
PricePerKilometer 
= 
pricePerKilometer  1
;1 2
} 	
} 
} ∆
LC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\Model\TimeDiscount.cs
	namespace 	
VVPS_UPR
 
. 
Model 
{		 
public

 

class

 
TimeDiscount

 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DateTime 
From 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
DateTime 
To 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
JsonProperty	 
( 
$str  
)  !
]! "
public 
decimal 
Discount 
{  !
get" %
;% &
set' *
;* +
}, -
public 
TimeDiscount 
( 
DateTime $
from% )
,) *
DateTime+ 3
to4 6
,6 7
decimal8 ?
discount@ H
)H I
{ 	
From 
= 
from 
; 
To 
= 
to 
; 
Discount 
= 
discount 
;  
} 	
public 
bool 
isDiscounted  
(  !
DateTime! )
ticketStart* 5
)5 6
{ 	
TimeSpan 
	timeOfDay 
=  
ticketStart! ,
., -
	TimeOfDay- 6
;6 7
TimeSpan 
fromTime 
= 
From  $
.$ %
	TimeOfDay% .
;. /
TimeSpan 
toTime 
= 
To  
.  !
	TimeOfDay! *
;* +
return   
	timeOfDay   
>=   
fromTime    (
&&  ) +
	timeOfDay  , 5
<=  6 8
toTime  9 ?
;  ? @
}!! 	
}"" 
}## Ü
PC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\Model\TrainReservation.cs
	namespace 	
VVPS_UPR
 
. 
Model 
{		 
public

 

class

 
TrainReservation

 !
{ 
public 
TrainReservation 
(  

TrainRoute  *

trainRoute+ 5
,5 6
decimal7 >

finalPrice? I
,I J
stringK Q
passengerNameR _
)_ `
{ 	

TrainRoute 
= 

trainRoute #
;# $

FinalPrice 
= 

finalPrice #
;# $
PassengerName 
= 
passengerName )
;) *
IsActive 
= 
true 
; 
} 	
[ 	
JsonProperty	 
( 
$str #
)# $
]$ %
public 

TrainRoute 

TrainRoute $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
JsonProperty	 
( 
$str #
)# $
]$ %
public 
decimal 

FinalPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
string 
PassengerName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
JsonProperty	 
( 
$str !
)! "
]" #
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ó
JC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\Model\TrainRoute.cs
	namespace 	
VVPS_UPR
 
. 
Model 
{		 
public

 

class

 

TrainRoute

 
{ 
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
From 
{ 
get  
;  !
private" )
set* -
;- .
}/ 0
[ 	
JsonProperty	 
( 
$str 
) 
] 
public 
string 
To 
{ 
get 
; 
private  '
set( +
;+ ,
}- .
[ 	
JsonProperty	 
( 
$str  
)  !
]! "
public 
decimal 
Distance 
{  !
get" %
;% &
private' .
set/ 2
;2 3
}4 5
[ 	
JsonProperty	 
( 
$str &
)& '
]' (
public 
DateTime 
DepartureTime %
{& '
get( +
;+ ,
private- 4
set5 8
;8 9
}: ;
[ 	
JsonProperty	 
( 
$str $
)$ %
]% &
public 
DateTime 
ArrivalTime #
{$ %
get& )
;) *
private+ 2
set3 6
;6 7
}8 9
public 

TrainRoute 
( 
string  
from! %
,% &
string' -
to. 0
,0 1
decimal2 9
distance: B
,B C
DateTimeD L
departureTimeM Z
,Z [
DateTime\ d
arrivalTimee p
)p q
{ 	
From 
= 
from 
; 
To 
= 
to 
; 
Distance 
= 
distance 
;  
DepartureTime 
= 
departureTime )
;) *
ArrivalTime 
= 
arrivalTime %
;% &
} 	
public 
decimal 
CalculatePrice %
(% &
decimal& -
price_per_kilometer. A
)A B
{   	
return!! 
Distance!! 
*!! 
price_per_kilometer!! 1
;!!1 2
}"" 	
}## 
}$$ ˚*
AC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\Program.cs
	namespace 	
VVPS_UPR
 
{		 
internal

 
static

 
class

 
Program

 !
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	
try 
{ 
var 
json_config 
=  !
File" &
.& '
ReadAllText' 2
(2 3
$str3 @
)@ A
;A B
var 
config 
= 
JsonConvert (
.( )
DeserializeObject) :
<: ;
Config; A
>A B
(B C
json_configC N
)N O
;O P
if 
( 
config 
== 
null "
)" #
throw$ )
new* -
ArgumentException. ?
(? @
$str@ g
)g h
;h i
decimal 
PRICE_PER_KILOMETER +
=, -
$num. 4
;4 5
var 
json_train_routes %
=& '
File( ,
., -
ReadAllText- 8
(8 9
$str9 K
)K L
;L M
var %
deserialized_train_routes -
=. /
JsonConvert0 ;
.; <
DeserializeObject< M
<M N
ListN R
<R S

TrainRouteS ]
>] ^
>^ _
(_ `
json_train_routes` q
)q r
;r s
if 
( %
deserialized_train_routes -
==. 0
null1 5
)5 6
throw7 <
new= @
ArgumentExceptionA R
(R S
$strS z
)z {
;{ |
var 
trainRouteManager %
=& '
new( +
TrainRouteManager, =
(= >%
deserialized_train_routes> W
,W X
PRICE_PER_KILOMETERY l
)l m
;m n

TrainRoute   

trainRoute   %
=  & '
trainRouteManager  ( 9
.  9 :
searchTrainRoutes  : K
(  K L
$str  L S
,  S T
$str  U \
)  \ ]
[  ] ^
$num  ^ _
]  _ `
;  ` a
decimal!! 

base_price!! "
=!!# $

trainRoute!!% /
.!!/ 0
CalculatePrice!!0 >
(!!> ?
PRICE_PER_KILOMETER!!? R
)!!R S
;!!S T
int"" 
age"" 
="" 
$num"" 
;"" 
var## 
card## 
=## 
DiscountCards## (
.##( )

FamilyCard##) 3
;##3 4
TimeDiscountManager&& #
timeDiscounts&&$ 1
=&&2 3
new&&4 7
TimeDiscountManager&&8 K
(&&K L
config&&L R
.&&R S
TimeDiscounts&&S `
)&&` a
;&&a b
CardDiscounts'' 
cardDiscounts'' +
='', -
new''. 1
CardDiscounts''2 ?
(''? @
config''@ F
.''F G
DiscountCards''G T
)''T U
;''U V
var)) 

finalPrice)) 
=))  
timeDiscounts))! .
.)). /'
calculatePriceTimeDiscounts))/ J
())J K

base_price))K U
,))U V

trainRoute))W a
.))a b
DepartureTime))b o
)))o p
;))p q

finalPrice** 
=** 
cardDiscounts** *
.*** +&
calculatePriceCardDiscount**+ E
(**E F
card**F J
,**J K
age**L O
,**O P

finalPrice**Q [
)**[ \
;**\ ]
Console++ 
.++ 
	WriteLine++ !
(++! "
$"++" $
$str++$ 1
{++1 2

finalPrice++2 <
}++< =
"++= >
)++> ?
;++? @
var.. 
ticket.. 
=.. 
new..  
TrainReservation..! 1
(..1 2

trainRoute..2 <
,..< =

finalPrice..> H
,..H I
$str..J P
)..P Q
;..Q R
ReservationManager11 "
reservationManager11# 5
=116 7
new118 ;
ReservationManager11< N
(11N O
$str11O g
)11g h
;11h i
reservationManager22 "
.22" #
AddReservation22# 1
(221 2
ticket222 8
)228 9
;229 :
Console44 
.44 
	WriteLine44 !
(44! "
$str44" P
)44P Q
;44Q R
reservationManager55 "
.55" #
CancelReservation55# 4
(554 5
ticket555 ;
)55; <
;55< =
Console66 
.66 
	WriteLine66 !
(66! "
$str66" H
)66H I
;66I J
}77 
catch88 
(88 !
FileNotFoundException88 (
ex88) +
)88+ ,
{99 
Console:: 
.:: 
	WriteLine:: !
(::! "
$str::" T
)::T U
;::U V
Console;; 
.;; 
	WriteLine;; !
(;;! "
ex;;" $
.;;$ %
Message;;% ,
);;, -
;;;- .
}<< 
}== 	
}@@ 
}AA Ù#
LC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\ReservationManager.cs
	namespace		 	
VVPS_UPR		
 
{

 
class 	
ReservationManager
 
{ 
private 
readonly 
string 
	_filePath  )
;) *
public 
List 
< 
TrainReservation $
>$ %
reservations& 2
{3 4
get5 8
;8 9
private: A
setB E
;E F
}G H
public 
ReservationManager !
(! "
string" (
filePath) 1
)1 2
{ 	
	_filePath 
= 
filePath  
;  !
if 
( 
! 
File 
. 
Exists 
( 
	_filePath &
)& '
)' (
{ 
File 
. 
Create 
( 
	_filePath %
)% &
.& '
Close' ,
(, -
)- .
;. /
} 
string 
json 
= 
File 
. 
ReadAllText *
(* +
	_filePath+ 4
)4 5
;5 6
reservations 
= 
JsonConvert &
.& '
DeserializeObject' 8
<8 9
List9 =
<= >
TrainReservation> N
>N O
>O P
(P Q
jsonQ U
)U V
??W Y
newZ ]
List^ b
<b c
TrainReservationc s
>s t
(t u
)u v
;v w
} 	
public 
void 
AddReservation "
(" #
TrainReservation# 3
reservation4 ?
)? @
{ 	
reservations"" 
."" 
Add"" 
("" 
reservation"" (
)""( )
;"") *
string%% 
json%% 
=%% 
JsonConvert%% %
.%%% &
SerializeObject%%& 5
(%%5 6
reservations%%6 B
)%%B C
;%%C D
File&& 
.&& 
WriteAllText&& 
(&& 
	_filePath&& '
,&&' (
json&&) -
)&&- .
;&&. /
}'' 	
public)) 
void)) 
SaveReservations)) $
())$ %
)))% &
{** 	
string,, 
json,, 
=,, 
JsonConvert,, %
.,,% &
SerializeObject,,& 5
(,,5 6
reservations,,6 B
),,B C
;,,C D
File// 
.// 
WriteAllText// 
(// 
	_filePath// '
,//' (
json//) -
)//- .
;//. /
}00 	
public22 
List22 
<22 
TrainReservation22 $
>22$ %!
GetReservationsByUser22& ;
(22; <
string22< B
userName22C K
)22K L
{33 	
var44 
_searchResults44 
=44  
new44! $
List44% )
<44) *
TrainReservation44* :
>44: ;
(44; <
)44< =
;44= >
foreach66 
(66 
var66 
reservation66 $
in66% '
reservations66( 4
)664 5
{77 
if88 
(88 
reservation88 
.88  
PassengerName88  -
==88. 0
userName881 9
)889 :
{99 
_searchResults:: "
.::" #
Add::# &
(::& '
reservation::' 2
)::2 3
;::3 4
};; 
}<< 
return>> 
_searchResults>> !
;>>! "
}?? 	
publicAA 
voidAA 
CancelReservationAA %
(AA% &
TrainReservationAA& 6!
reservation_to_cancelAA7 L
)AAL M
{BB 	
foreachCC 
(CC 
varCC 
reservationCC #
inCC$ &
reservationsCC' 3
)CC3 4
{DD 
ifEE 
(EE 
reservationEE 
==EE  "!
reservation_to_cancelEE# 8
)EE8 9
{FF 
reservationGG 
.GG  
IsActiveGG  (
=GG) *
falseGG+ 0
;GG0 1
}HH 
}II 
SaveReservationsKK 
(KK 
)KK 
;KK 
}LL 	
}MM 
}NN Ò
MC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\TimeDiscountManager.cs
	namespace 	
VVPS_UPR
 
{		 
public

 

class

 
TimeDiscountManager

 $
{ 
public 
List 
< 
TimeDiscount  
>  !
TimeDiscounts" /
{0 1
get2 5
;5 6
private7 >
set? B
;B C
}D E
public 
TimeDiscountManager "
(" #
List# '
<' (
TimeDiscount( 4
>4 5!
config_time_discounts6 K
)K L
{ 	
TimeDiscounts 
= !
config_time_discounts 1
;1 2
} 	
public 
decimal '
calculatePriceTimeDiscounts 2
(2 3
decimal3 :

base_price; E
,E F
DateTimeG O
ticket_start_timeP a
)a b
{ 	
var 
discount_period 
=  !
TimeDiscounts" /
./ 0
FirstOrDefault0 >
(> ?
x? @
=>A C
xD E
.E F
isDiscountedF R
(R S
ticket_start_timeS d
)d e
)e f
;f g
decimal 
discount_rate !
=" #
discount_period$ 3
!=4 6
null7 ;
?< =
discount_period> M
.M N
DiscountN V
:W X
$numY Z
;Z [
var 
discounted_price  
=! "

base_price# -
*. /
(0 1
$num1 2
-3 4
discount_rate5 B
)B C
;C D
return 
discounted_price #
;# $
} 	
} 
} í
KC:\Users\danim\Documents\ProgCSharp8\VVPS_UPR\VVPS_UPR\TrainRouteManager.cs
	namespace 	
VVPS_UPR
 
{		 
public

 

class

 
TrainRouteManager

 "
{ 
public 
List 
< 

TrainRoute 
> 
TrainRoutes  +
{, -
get. 1
;1 2
private3 :
set; >
;> ?
}@ A
public 
decimal 
PricePerKilometer (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 
TrainRouteManager  
(  !
List! %
<% &

TrainRoute& 0
>0 1
trainRoutes2 =
,= >
decimal? F
pricePerKilometerG X
)X Y
{ 	
TrainRoutes 
= 
trainRoutes %
;% &
PricePerKilometer 
= 
pricePerKilometer  1
;1 2
} 	
public 
List 
< 

TrainRoute 
> 
searchTrainRoutes  1
(1 2
string2 8
from_destination9 I
,I J
stringL R
to_destinationS a
,a b
TimeSpanc k
?k l
	from_timem v
=w x
nully }
,} ~
TimeSpan	 á
?
á à
to_time
â ê
=
ë í
null
ì ó
)
ó ò
{ 	
var 
searchResults 
= 
new  #
List$ (
<( )

TrainRoute) 3
>3 4
(4 5
)5 6
;6 7
foreach 
( 
var 
route 
in !
TrainRoutes" -
)- .
{ 
if 
( 
from_destination $
.$ %
Equals% +
(+ ,
route, 1
.1 2
From2 6
)6 7
&&8 :
to_destination; I
.I J
EqualsJ P
(P Q
routeQ V
.V W
ToW Y
)Y Z
)Z [
{ 
if 
( 
	from_time !
.! "
HasValue" *
&&+ -
to_time. 5
.5 6
HasValue6 >
)> ?
{ 
var  
departure_time_route 0
=1 2
route3 8
.8 9
DepartureTime9 F
.F G
	TimeOfDayG P
;P Q
if 
(  
departure_time_route 0
<1 2
	from_time3 <
&&= ? 
departure_time_route@ T
<U V
to_timeW ^
)^ _
{   
searchResults!! )
.!!) *
Add!!* -
(!!- .
route!!. 3
)!!3 4
;!!4 5
}"" 
}## 
else$$ 
{%% 
searchResults&& %
.&&% &
Add&&& )
(&&) *
route&&* /
)&&/ 0
;&&0 1
}'' 
}(( 
})) 
return** 
searchResults**  
;**  !
}++ 	
},, 
}-- 