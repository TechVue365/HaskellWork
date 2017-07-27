list = [1,2,4,5,6,7]
newvalue_n= [3] --number we want to insert into list
lenlist=length list
calc1= 3-1 -- the nspace(which is the 3rd space) -1
calc2=lenlist-4
new_take=take calc1 list
new_drop=drop calc2  list
newinsert=new_take ++ newvalue_n ++ new_drop
--

