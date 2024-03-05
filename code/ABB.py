

#returns the number of nodes in the shortest path from the root to a leaf



def min_height(n,tree):

    pot=1     
    index=0   
    height=1  

    i=0

    while i< n:

        if tree[i]!=-1:

            if (2*i+1 >= len(tree) and 2*i+2 >= len(tree)) or (2*i+2 >= len(tree) and tree[2*i+1]==-1) or (tree[2*i+1]==-1 and tree[2*i+2]==-1):

                break
        
            
        if i==index:
            height+=1
            pot*=2
            index+=pot

        i+=1


    return height

print(min_height(15,[2,-1,4,-1,-1,-1,1,-1,-1,-1,-1,-1,-1,1,1]))
