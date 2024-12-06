//Write a C program to store information of 5 students in structure and display it.
#include<stdio.h>
struct student
{
    char name[100];
    int age;
    int roll;
    float marks;
};
int main()
{
     struct student s[2];
     for(int i=0;i<2;i++)
     {
        printf("student %d:\n",i+1);
        printf("name: ");
        scanf("%s",s[i].name);
        printf("age: ");
        scanf("%d",&s[i].age);
        printf("roll: ");
        scanf("%d",&s[i].roll);
        printf("marks: ");
        scanf("%f",&s[i].marks);
     }
     printf("The informtion of studen print\n\n");
     for(int i=0;i<2;i++)
     {
      printf("student %d:\n",i+1);
      printf("name: %s\n",s[i].name);
      printf("age: %d\n",s[i].age);
      printf("roll: %d\n",s[i].roll);
      printf("marks: %0.f\n",s[i].marks);
     }
    return 0;
}


