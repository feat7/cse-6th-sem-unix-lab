#include <stdio.h>
#include <wait.h>
#include <signal.h>
#include <unistd.h>
using namespace std;

int main()
{
    int tim, stat;
    pid_t pid;
    tim = alarm(15);
    if ((pid = fork()) == 0)
        while (1)
            ;
    else
    {
        kill(pid, SIGINT);
        wait(&stat);
        if (WIFSIGNALED(stat))
            psignal(WTERMSIG(stat), "Child term due to");
    }
}