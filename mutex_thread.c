#include <stdio.h>
#include <pthread.h>
#include <semaphore.h>

int i = 0;
sem_t sem1, sem2;    //定义信号量sem1，sem2；

void pthread1 (void *arg);
void pthread2 (void *arg);

void main(){
		pthread_t th1 , th2;
		int ret;

		sem_init(&sem1, 0, 1);    //初始化线程信号量sem1，初值为1
		sem_init(&sem2, 0, 0);    //初始化线程信号量sem2，初值为2

		ret = pthread_create(&th1, NULL, (void *)pthread1, NULL);
		if (ret != 0)
			perror("pthread cread1");
		ret = pthread_create(&th2, NULL, (void *)pthread2, NULL);
		if (ret != 0)
			perror("pthread cread2");
		pthread_join(th1, NULL);
		pthread_join(th2, NULL);
		printf("%d\n",i);
}

void pthread1(void *arg)
{
	int k, tem1;

	sem_wait(&sem1);		//执行信号量sem1的P操作

	for (k = 0; k < 10000000; k++)
	{
		tem1 = i;
		tem1++;
		i = tem1;
	}

	sem_post(&sem2);	 		//执行信号量sem2的V操作
}

void pthread2(void *arg)
{
	int k, tem2;

	sem_wait(&sem2);		//执行信号量sem2的P操作

	for (k = 0; k < 10000000;k++)
	{
		tem2 = i;
		tem2--;
		i = tem2;
	}

	sem_post(&sem1);	 		//执行信号量sem1的V操作

}
