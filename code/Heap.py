

# delete the minimum value in Minimum_Heap and update the Heap
# return Heap


def suprim_Heap(array):
    
    vector= array[0:len(array)-1]
    vector[0]=array[len(array)-1]

    i=0
    j=1 if len(vector)> 1 else 0
    z=2 if len(vector)> 2 else i
    
    while vector[i]> vector[j]  or vector[i] > vector[z]:

        a= j if vector[j]< vector[z] else z
        auxiliar= vector[i]

        vector[i]= vector[a]
        vector[a]= auxiliar
        i=a

        j=2*a+1 if len(vector) > 2*i+1 else i
        z=2*a+2 if len(vector) > 2*i+2 else j

    return vector


vector= [1, 2, 3, 4, 4, 20, 10, 8, 5, 5, 6]
while len(vector)>1:
    print(vector)
    vector= suprim_Heap(vector)

