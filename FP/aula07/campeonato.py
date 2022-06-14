def addTeams():
    lst=[]
    while True:
        team=input("Equipa?")
        if team == "":
            break
        lst.append(team)
    return lst

def allMatches(lst):
    matches={}
    for x in lst:
        if x==lst:
            continue
        matches[x]=lst
    print(matches)

def main():
    lst=addTeams()
    allMatches(lst)
    print(lst)

if __name__=="__main__":
    main()