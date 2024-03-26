

#returns the number of nodes in the shortest path from the root to a leaf

def min_height(n,tree):

    i=0 # indice de tree que esta acotado por n y n<= 2^24-1
    index=0 # cantidad de hijos en el nivel actual osea que esta acotado por n<= 2^24-1
    height=1 #altura minima acotada por n
    pot=1 #numero de nodos en el siguiente nivel que bien podria ser de 24 bits

    while i<n:
        
        if tree[i]!=-1:

            if 2*i+1>= n:
                break
            if tree[2*i+1]==-1:
                if 2*i+2>= n :
                    break

                if tree[2*i+2]==-1:
                    break
        
        if i==index:
            height+=1
            pot*=2
            index+=pot
        i+=1
    
    return height




# def min_height(n,array,i):

#     if i>= len(array):
#         return 0
    
#     if(array[2*i+1]==-1 and array[2*i+2]==0):
#         return 1
    
#     a= min_height(n,array,2*i+1)
#     b= min_height(n,array,2*i+2)

#     return min(a,b)+1


print(min_height(15,[1,2,6,-1,3,-1,-1,-1,-1,4,5,-1,-1,-1,-1]))#2


print(min_height(15,[2,-1,4,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,1]))#4
