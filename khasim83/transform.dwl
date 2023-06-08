%dw 2.0
//Here I am map the given payload with the expected output as mention. Basically map function is used to transform the data contained in an array as of the expected output
output application/json
---
payload map
{
    firstName: ($.fullName splitBy ' ')[0] ,
    lastName: ($.fullName splitBy ' ')[1] ,
    AddrWithValuesOf: $.city ++ ','++ $.state ++ ','++ $.postal ++ ','++ $.country,
    miles: $.miles as String{format:'.00'},
    //Here i used to Date function to convert into to the expected output format
    DateofJoin: $.joinedDate as Date as String{format: 'dd-MMM-uuuu'}
}