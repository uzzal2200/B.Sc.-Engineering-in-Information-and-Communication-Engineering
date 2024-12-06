#include<stdio.h>
int main()
{
    FILE *f;
    char s[40];
    int age,phn,num;
    f=fopen("student.txt","w");
    if(f == NULL)
    {
        printf("file doest not open");
    } 
    else
{
        printf("file is opend\n");
        printf("Entern number of students\n");
        scanf("%d",&num);
        
            for(int i=0;i<num; i++)
            {
                printf("student Name\n");
            scanf("%s",s);
            printf(" age\n");
            scanf("%d",&age);
            printf("phn Number\n");
            scanf("%d",&phn);
            fprintf(f,"\n%s\t\t%d\t%d\n\n",s,age,phn);
            }
        printf("file is open successfully\n");
        fclose(f);
    }
    return 0;
}