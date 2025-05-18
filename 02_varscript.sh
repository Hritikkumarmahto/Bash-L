#!/bin/bash
:'a=10
name="Hritik"
age=22

echo "my name is $name and age is $age"

#this is a variabel to store the output of a command
 

HOSTNAME=$(hostname)

echo "host name is $HOSTNAME"


# constant variables 

readonly collage="CU"

echo "collage is constant ans its name is $collage"






# Arrays 
#does not have any specific type can run on any data type in same array

myArr=(1 2 3 "hritrik" 3.4)

echo "${myArr[1]}"
echo "${myArr[3]}"

#fro all the values to be printed 

echo "${myArr[*]}"

#size of the array
echo "${#myArr[*]}"

#updating or adding elements in array

myArr+=( New 20 30)
echo "${myArr[*]}"
	
# Key values Pair arrays Array

myArrayKey=([name]=hritik [age]=22)
echo "${myArrayKey[name]}"

















#STRING OPERATIONS

varString="Hey buddy,This is hritin=k"
lengthof=${#varString}
echo "$lengthof"

# fro uppercase

echo "to upper case ${varString^^}"
echo "to lowe  case ${varString,,}"

# to replace content inside the string
 
replace=${varString/Hey/Hello}
echo "${myString}"






#USER INTRACTION

echo "What is your name"

read name
echo "My name is ${name}"


# get echo in same line by -p

read -p "What us your name" name















#Math operations 

a=10
b=20

let mul=$a*$b
echo "Multi is $mul"







	



#IF ELSE STATEMENT 	

read -p "enter your marks" marks
if [[ marks -gt 40 ]]
then 
	echo "You  passed"
else
	echo "You  failed"
	
fi






# Switch case 

echo "Enter any option"
echo "a.Hello this is date "
echo "b.List of scripts"
echo "c.Location of script"

read -p "enter your choice" choice


case $choice in
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "enter a valid choice"
	
esac







#logical operators 

#and operator

read -p" what is your age" age
read -p"wht is your country" country

if  [[$age -ge 18]] && [[$country == "india"]]
then
 	echo "you are eligible to vote "
	
else 
	echo "not eligible "
fi



#or Operator


read -p" what is your age" age
read -p"wht is your country" country

if  [[$age -ge 18]] || [[$country == "india"]]
then
 	echo "you are eligible to vote "
	
else 
	echo "not eligible "
fi



#for loop 

for i in 1 2 3 4 5
do 
	echo "i = $i"
done

for name in ram shyam ganpat
do
	echo "name is $name"
done


# wild card
for j in {1..10}
do 
	echo "number is $j"
done

	


# for loop in files

FILE=/home/hritik/myScripts/names.txt

for i in $(cat $FILE)
do 
	echo "file data is $i"
done 





# for loop in arrrays

myArr=(1 2 3 4 hritik)

length=${#myArr[*]}

for (( i=0;i<$length;i++ ))
do
	echo "array elements are ${myArr[$i]}"
done











#while loop

a=0
b=10

while [ $a -le $b ]
do 
	echo "number is $a"
	let a++
done

while read myFile
do
	echo "$myFile"
done  < names.txt




# until loop
c=10

until [[ $c -eq 1 ]]
do 
	echo "values are $c "
	let c--
done





# functions 

function myFun {
	echo "This is a function"
}
myFun

myFunc(){
	echo "hello this is my finction"
}
myFunc




# function with arguments\

function myFunction {
	num1=$1
	num2=$2
	
	let sum=num1+num2
	
echo " sum if the numbers are $sum"
}
myFunction 12 23
'










# arguments in rintiome

# this is mostly yused to give \argument in runtime


echo "first argument is $1"
echo "seconfd argument is $2"

echo "all files are $@"
echo "number of files are $#"



#to iterate over filename


for filename in $@
do 
	echo "copying file $filename"
done

# to shift the gap means shift the gap and move forward

echo "name is $1"

shift

echo "Description is $2"





