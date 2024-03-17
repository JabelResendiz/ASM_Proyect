

#returns the number of nodes in the shortest path from the root to a leaf



def min_height(n,tree):

    pot=1     
    index=0   
    height=1  

    i=0

    while i< n:

        if tree[i]!=-1:

            if (2*i+1 >= len(tree)):

                break
            
            if(2*i+2 >= len(tree) and tree[2*i+1]==-1):
                break

            if(tree[2*i+1]==-1 and tree[2*i+2]==-1):
                break
            
        if i==index:
            height+=1
            pot*=2
            index+=pot

        i+=1


    return height
'''


def min_height(n,array,i):

    if i>= len(array):
        return 0
    
    a= min_height(n,array,2*i+1)
    b= min_height(n,array,2*i+2)

    return min(a,b)+1

 '''
print(min_height(15,[1,2,6,-1,3,-1,-1,-1,-1,4,5,-1,-1,-1,-1]))


print(min_height(15,[2,-1,4,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,1]))
